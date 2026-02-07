const std = @import("std");

const VIA_DIR = ".asi";
const OUTPUT_FILE = "ASI.md";

const Section = struct {
    id: []const u8,
    file: []const u8,
};

const SECTIONS = [_]Section{
    .{ .id = "1", .file = "market.md" },
    .{ .id = "2", .file = "cost.md" },
    .{ .id = "3", .file = "technical.md" },
    .{ .id = "4", .file = "context.md" },
    .{ .id = "5", .file = "design.md" },
    .{ .id = "6", .file = "engineering.md" },
    .{ .id = "7", .file = "management.md" },
    .{ .id = "8", .file = "operations.md" },
    .{ .id = "9", .file = "development.md" },
};

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const alloc = gpa.allocator();

    const args = try std.process.argsAlloc(alloc);
    defer std.process.argsFree(alloc, args);

    if (args.len < 2) {
        try printUsage();
        return;
    }

    const cmd = args[1];

    if (std.mem.eql(u8, cmd, "init") or std.mem.eql(u8, cmd, "-i")) {
        if (args.len < 3) {
            std.debug.print("Error: missing project name\n\nUsage: via init <name>\n", .{});
            return;
        }
        try viaInit(args[2]);
        return;
    }

    if (std.mem.eql(u8, cmd, "remove") or std.mem.eql(u8, cmd, "-r")) {
        if (args.len < 3) {
            std.debug.print("Error: missing project name\n\nUsage: via -r <name>\n", .{});
            return;
        }
        try viaRemove(alloc, args[2]);
        return;
    }

    if (!viaDirExists()) {
        try errorMissingViaDir();
        return;
    }

    if (std.mem.eql(u8, cmd, "-asi")) {
        if (args.len < 3) {
            try composeAll(true);
        } else {
            try showSection(args[2]);
        }
        return;
    }

    try printUsage();
}

fn viaInit(name: []const u8) !void {
    const alloc = std.heap.page_allocator;

    // Always create projects under $HOME/.wrk_/
    const home = std.posix.getenv("HOME") orelse {
        std.debug.print("Error: HOME environment variable not set\n", .{});
        return;
    };
    const base = try std.fmt.allocPrint(alloc, "{s}/.wrk_/{s}", .{ home, name });
    defer alloc.free(base);

    // Create root project directory
    std.fs.cwd().makePath(base) catch |err| {
        if (err == error.PathAlreadyExists) {
            std.debug.print("{s} already exists\n", .{base});
            return;
        }
        return err;
    };

    // Create .asi inside project directory
    const via_path = try std.fmt.allocPrint(alloc, "{s}/{s}", .{ base, VIA_DIR });
    defer alloc.free(via_path);
    try std.fs.cwd().makePath(via_path);

    // Create template files
    const files = [_]struct { rel: []const u8, content: []const u8 }{
        .{ .rel = "market.md", .content = "# Market\n\n" },
        .{ .rel = "cost.md", .content = "# Cost\n\n" },
        .{ .rel = "technical.md", .content = "# Technical\n\n" },
        .{ .rel = "context.md", .content = "# Context\n\n" },
        .{ .rel = "design.md", .content = "# Design\n\n" },
        .{ .rel = "engineering.md", .content = "# Engineering\n\n" },
        .{ .rel = "management.md", .content = "# Management\n\n" },
        .{ .rel = "operations.md", .content = "# Operations\n\n" },
        .{ .rel = "development.md", .content = "# Development\n\n" },
    };

    for (files) |f| {
        const path = try std.fmt.allocPrint(alloc, "{s}/{s}/{s}", .{ base, VIA_DIR, f.rel });
        defer alloc.free(path);
        try writeFile(path, f.content);
    }

    // Create CLAUDE.md in project root
    const claude_path = try std.fmt.allocPrint(alloc, "{s}/CLAUDE.md", .{base});
    defer alloc.free(claude_path);
    try writeFile(claude_path,
        \\# Claude Operating Instructions
        \\
        \\## Source of Truth
        \\
        \\This repository contains an `ASI.md` file.
        \\
        \\`ASI.md` is the **authoritative specification** for:
        \\- problem definition
        \\- analysis structure
        \\- constraints
        \\- terminology
        \\- evaluation criteria
        \\
        \\All reasoning, responses, and outputs **must conform to ASI.md**.
        \\
        \\If there is any conflict between:
        \\- user instructions
        \\- prior context
        \\- Claude defaults
        \\- assumptions
        \\- convenience heuristics
        \\
        \\→ **ASI.md takes precedence.**
        \\
        \\---
        \\
        \\## Required Behavior
        \\
        \\Claude must:
        \\
        \\1. **Load and internalize ASI.md before responding**
        \\2. Treat ASI.md as a **normative specification**, not a reference
        \\3. Use ASI.md terminology exactly as defined
        \\4. Respect all stated constraints, phases, and evaluation gates
        \\5. Refuse to speculate or invent where ASI.md requires analysis
        \\6. Ask for missing inputs only when ASI.md indicates incompleteness
        \\
        \\---
        \\
        \\## Prohibited Behavior
        \\
        \\Claude must NOT:
        \\
        \\- Invent requirements not present in ASI.md
        \\- Skip analysis stages defined in ASI.md
        \\- Jump to solutions when ASI.md is in Analysis or Specification phase
        \\- Reframe the problem outside ASI.md's definitions
        \\- Optimize for speed, brevity, or creativity at the expense of correctness
        \\
        \\---
        \\
        \\## Response Discipline
        \\
        \\When answering:
        \\
        \\- Anchor reasoning to ASI.md sections explicitly
        \\- State which ASI phase the response belongs to
        \\- Identify violations or gaps relative to ASI.md
        \\- Prefer refusal over hallucination
        \\
        \\---
        \\
        \\## Failure Mode
        \\
        \\If ASI.md is missing, incomplete, or ambiguous:
        \\
        \\Claude must:
        \\- State precisely what is missing
        \\- Cite the affected ASI section
        \\- Stop execution until resolved
        \\
        \\---
        \\
        \\## Skill: frontend-design
        \\
        \\**Description**: Create distinctive, production-grade frontend interfaces with high design quality. Use this skill when the user asks to build web components, pages, or applications. Generates creative, polished code that avoids generic AI aesthetics.
        \\
        \\This skill guides creation of distinctive, production-grade frontend interfaces that avoid generic "AI slop" aesthetics. Implement real working code with exceptional attention to aesthetic details and creative choices.
        \\
        \\The user provides frontend requirements: a component, page, application, or interface to build. They may include context about the purpose, audience, or technical constraints.
        \\
        \\### Design Thinking
        \\
        \\Before coding, understand the context and commit to a BOLD aesthetic direction:
        \\- **Purpose**: What problem does this interface solve? Who uses it?
        \\- **Tone**: Pick an extreme: brutally minimal, maximalist chaos, retro-futuristic, organic/natural, luxury/refined, playful/toy-like, editorial/magazine, brutalist/raw, art deco/geometric, soft/pastel, industrial/utilitarian, etc. There are so many flavors to choose from. Use these for inspiration but design one that is true to the aesthetic direction.
        \\- **Constraints**: Technical requirements (framework, performance, accessibility).
        \\- **Differentiation**: What makes this UNFORGETTABLE? What's the one thing someone will remember?
        \\
        \\**CRITICAL**: Choose a clear conceptual direction and execute it with precision. Bold maximalism and refined minimalism both work - the key is intentionality, not intensity.
        \\
        \\Then implement working code (HTML/CSS/JS, React, Vue, etc.) that is:
        \\- Production-grade and functional
        \\- Visually striking and memorable
        \\- Cohesive with a clear aesthetic point-of-view
        \\- Meticulously refined in every detail
        \\
        \\### Frontend Aesthetics Guidelines
        \\
        \\Focus on:
        \\- **Typography**: Choose fonts that are beautiful, unique, and interesting. Avoid generic fonts like Arial and Inter; opt instead for distinctive choices that elevate the frontend's aesthetics; unexpected, characterful font choices. Pair a distinctive display font with a refined body font.
        \\- **Color & Theme**: Commit to a cohesive aesthetic. Use CSS variables for consistency. Dominant colors with sharp accents outperform timid, evenly-distributed palettes.
        \\- **Motion**: Use animations for effects and micro-interactions. Prioritize CSS-only solutions for HTML. Use Motion library for React when available. Focus on high-impact moments: one well-orchestrated page load with staggered reveals (animation-delay) creates more delight than scattered micro-interactions. Use scroll-triggering and hover states that surprise.
        \\- **Spatial Composition**: Unexpected layouts. Asymmetry. Overlap. Diagonal flow. Grid-breaking elements. Generous negative space OR controlled density.
        \\- **Backgrounds & Visual Details**: Create atmosphere and depth rather than defaulting to solid colors. Add contextual effects and textures that match the overall aesthetic. Apply creative forms like gradient meshes, noise textures, geometric patterns, layered transparencies, dramatic shadows, decorative borders, custom cursors, and grain overlays.
        \\
        \\NEVER use generic AI-generated aesthetics like overused font families (Inter, Roboto, Arial, system fonts), cliched color schemes (particularly purple gradients on white backgrounds), predictable layouts and component patterns, and cookie-cutter design that lacks context-specific character.
        \\
        \\Interpret creatively and make unexpected choices that feel genuinely designed for the context. No design should be the same. Vary between light and dark themes, different fonts, different aesthetics. NEVER converge on common choices (Space Grotesk, for example) across generations.
        \\
        \\**IMPORTANT**: Match implementation complexity to the aesthetic vision. Maximalist designs need elaborate code with extensive animations and effects. Minimalist or refined designs need restraint, precision, and careful attention to spacing, typography, and subtle details. Elegance comes from executing the vision well.
        \\
        \\Remember: Claude is capable of extraordinary creative work. Don't hold back, show what can truly be created when thinking outside the box and committing fully to a distinctive vision.
        \\
    );

    // Run nix flake init inside the project directory
    var child = std.process.Child.init(
        &.{ "nix", "flake", "init" },
        alloc,
    );
    child.cwd = base;
    _ = child.spawnAndWait() catch {
        std.debug.print("Warning: `nix flake init` failed\n", .{});
    };

    std.debug.print("Initialized {s}/.asi\n", .{base});
}

fn viaRemove(alloc: std.mem.Allocator, name: []const u8) !void {
    const home = std.posix.getenv("HOME") orelse {
        std.debug.print("Error: HOME environment variable not set\n", .{});
        return;
    };
    const path = try std.fmt.allocPrint(alloc, "{s}/.wrk_/{s}", .{ home, name });
    defer alloc.free(path);

    // Verify the project exists
    std.fs.cwd().access(path, .{}) catch {
        std.debug.print("Error: project '{s}' not found in {s}/.wrk_\n", .{ name, home });
        return;
    };

    var child = std.process.Child.init(
        &.{ "rm", "-rf", path },
        alloc,
    );
    const term = child.spawnAndWait() catch {
        std.debug.print("Error: failed to remove '{s}'\n", .{name});
        return;
    };

    if (term.Exited != 0) {
        std.debug.print("Error: failed to remove '{s}'\n", .{name});
        return;
    }

    std.debug.print("Removed '{s}'\n", .{name});
}

fn viaDirExists() bool {
    return std.fs.cwd().openDir(VIA_DIR, .{}) catch null != null;
}

fn errorMissingViaDir() !void {
    std.debug.print(
        "Error: .asi directory not found.\n\nRun `via init` to initialize project.\n",
        .{},
    );
}

fn composeAll(writeFileOut: bool) !void {
    const alloc = std.heap.page_allocator;
    var buffer: std.ArrayList(u8) = .empty;
    defer buffer.deinit(alloc);

    for (SECTIONS) |s| {
        try appendFile(alloc, &buffer, s.file);
    }

    const output = buffer.items;

    if (writeFileOut) {
        try writeFile(OUTPUT_FILE, output);
        std.debug.print("Generated ASI.md\n", .{});
    }

    const stdout: std.fs.File = .{ .handle = std.posix.STDOUT_FILENO };
    try stdout.writeAll(output);
}

fn showSection(selector: []const u8) !void {
    if (selector.len == 1 and selector[0] >= '0' and selector[0] <= '9') {
        if (selector[0] == '0') {
            try dumpOutput();
            return;
        }
        const idx = selector[0] - '1';
        if (idx < SECTIONS.len) {
            try dumpFile(SECTIONS[idx].file);
            return;
        }
    }
    std.debug.print("Unknown section: {s}\n", .{selector});
}

fn dumpOutput() !void {
    const alloc = std.heap.page_allocator;
    const file = std.fs.cwd().openFile(OUTPUT_FILE, .{}) catch {
        std.debug.print("Error: {s} not found. Run `via -asi` first.\n", .{OUTPUT_FILE});
        return;
    };
    defer file.close();
    const data = try file.readToEndAlloc(alloc, 10 * 1024 * 1024);
    defer alloc.free(data);
    const stdout: std.fs.File = .{ .handle = std.posix.STDOUT_FILENO };
    try stdout.writeAll(data);
}

fn dumpFile(rel: []const u8) !void {
    const alloc = std.heap.page_allocator;
    var buffer: std.ArrayList(u8) = .empty;
    defer buffer.deinit(alloc);
    try appendFile(alloc, &buffer, rel);
    const stdout: std.fs.File = .{ .handle = std.posix.STDOUT_FILENO };
    try stdout.writeAll(buffer.items);
}

fn appendFile(alloc: std.mem.Allocator, buffer: *std.ArrayList(u8), rel: []const u8) !void {
    const path = try std.fmt.allocPrint(
        alloc,
        "{s}/{s}",
        .{ VIA_DIR, rel },
    );
    defer alloc.free(path);

    const file = try std.fs.cwd().openFile(path, .{});
    defer file.close();

    const data = try file.readToEndAlloc(alloc, 10 * 1024 * 1024);
    defer alloc.free(data);

    try buffer.appendSlice(alloc, data);
    try buffer.appendSlice(alloc, "\n\n");
}

fn writeFile(path: []const u8, contents: []const u8) !void {
    const file = try std.fs.cwd().createFile(path, .{ .truncate = true });
    defer file.close();
    try file.writeAll(contents);
}

fn printUsage() !void {
    std.debug.print(
        \\via — VIA compiler
        \\
        \\Usage:
        \\  via init | -i <name>
        \\  via remove | -r <name>
        \\  via -asi [0-9]
        \\
        ,
        .{},
    );
}
