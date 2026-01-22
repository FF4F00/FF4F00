Below is a clean, concise, publish-ready README.md for your configuration, written in the same disciplined tone as the system itself.

No hype. No fluff. Clear contracts.

⸻

xo — Neovim Configuration

xo is a deliberately constrained Neovim configuration inspired by sports playbooks.

It is designed to be:
	•	predictable
	•	auditable
	•	extensible without entropy
	•	suitable for both internal teams and public distribution

The name xo comes from the symbols used to diagram plays in sports:
clear roles, fixed positions, and intentional movement.

⸻

Philosophy

1. Playbooks, Not Patches

This configuration is not a collection of tweaks.
It is a system of plays:
	•	every file has a role
	•	every capability has an owner
	•	every extension point is explicit

Nothing loads “just because”.

⸻

2. Scarcity by Design

Capabilities are slot-based.
	•	Plugins: p1–p9
	•	LSPs: ls1–ls9
	•	DAPs: ds1–ds9

Empty slots are intentional.

Scarcity forces:
	•	prioritization
	•	long-term thinking
	•	stable public APIs

⸻

3. Manual-First Tooling

This setup assumes:
	•	you manage language tools externally
	•	Neovim only connects to them

No automatic installers.
No background downloads.
No hidden state.

This keeps the editor:
	•	fast
	•	deterministic
	•	transparent

⸻

Directory Structure

lua/xo/
├── core/        # editor identity (options, keymaps, UI)
│   ├── options.lua
│   ├── keymaps.lua
│   ├── wrkspc_.lua
│   └── init.lua
│
└── pack/        # external capability ingress
    ├── p*.lua   # plugins (slot-based)
    │
    ├── lsp/     # language servers (slot-based)
    │   ├── ls1.lua
    │   ├── ...
    │   └── ls9.lua
    │
    ├── dap/     # debuggers (slot-based)
    │   ├── ds1.lua
    │   ├── ...
    │   └── ds9.lua
    │
    └── init.lua


⸻

Core Layer (xo/core)

The core defines editor identity.

Responsibilities:
	•	options
	•	keymaps
	•	workspace UI (statusline + tabline)

Rules:
	•	no plugins
	•	no language logic
	•	no side effects on require

If something changes how the editor feels, it belongs here.

⸻

Plugin Layer (xo/pack/pN.lua)

Plugins are treated as capabilities, not foundations.

Rules:
	•	max 9 primary plugins
	•	one plugin per file
	•	no plugin config leaks into LSP/DAP logic

Dependencies are documented, not hidden.

⸻

LSP Layer (xo/pack/lsp/lsN.lua)

Each LSP slot configures exactly one language server.

Principles:
	•	explicit roots
	•	no overlapping responsibilities
	•	no Mason by default (escape hatches may be commented)

Example:
	•	Python uses two servers by design:
	•	one for types
	•	one for linting/formatting

This mirrors how Python actually works.

⸻

DAP Layer (xo/pack/dap/dsN.lua)

Debugging is treated honestly.
	•	only mature, justified debuggers are enabled
	•	Python is currently the only active debugger
	•	all other slots are reserved

No speculative adapters.

⸻

Workspace UI

wrkspc_.lua defines a unified workspace surface:
	•	statusline
	•	tabline
	•	navigation context
	•	focus tooling (e.g. pomodoro)

It is:
	•	custom
	•	explicit
	•	mounted via a single setup() call

No globals. No magic.

⸻

What This Config Is Not
	•	not a plugin showcase
	•	not a framework
	•	not beginner-oriented
	•	not auto-installing tooling
	•	not optimized for every language under the sun

⸻

Who This Is For

xo is designed for:
	•	engineers who value structure
	•	teams who want shared editor discipline
	•	users who prefer explicit systems over convenience magic

If you want Neovim to feel like infrastructure, this config is for you.

⸻

Extending xo

To add something new:
	1.	pick an empty slot
	2.	fill it intentionally
	3.	document the decision

If you need more than 9 of something, reconsider the system.

⸻

License / Use

This configuration is intended to be:
	•	forked
	•	studied
	•	adapted
	•	used in production environments

Treat it like a playbook:
learn the system, then run your own plays.

⸻

If you want, next I can:
	•	tighten this further
	•	add a CONTRIBUTING section
	•	or version this as xo v1 and freeze the contract
