# Modular Notes

---

Getting started |

Max - Modular Accelerated Execution platform is a unified set of APIs and tools that simplify the process of building and deploying your own high-performance AI endpoint. MAX provides complete flexibility, so you can use your own data and your own model on the hardware of your choice, with the best performance-to-cost tradeoff.

* MAX Engine - is a next-generation graph compiler and runtime that accelerates AI models.

* MAX Serve - is a Python-based serving layer that executes large language models (LLMs) and provides an OpenAI REST endpoint, both locally and in the cloud.

* MAX Container - is a Docker container that simplifies the process to deploy a GenAI model on an endpoint with MAX Serve. The container includes the latest version of MAX and it integrates with orchestration tools like Kubernetes.

* MAX Packages - is a conda package named max installed using magic. max package is available as a nightly and stable build. You can safely use different versions of MAX in different projects, because every project you create with magic has its own package dependencies.

* MAX Pipelines - CLI tool accelerates GenAI tasks by creating optimized inference pipelines with OpenAI-compatible endpoints. It supports both PyTorch models from Hugging Face and MAX Graph optimized versions of models like Llama 3.1, Mistral, and Replit Code.


Magic - is a package manager and virtual environment manager for any language, including Python and Mojo. It builds upon the conda and PyPI packaging ecosystems, which provide access to thousands of packages for Python and other languages, while also adding functionality for MAX and Mojo.

* The magic CLI allows you to instantly launch code examples and create new projects that are fully contained and reproducible across systems. All the package dependencies and environment settings are magically managed for you.

* Subcommands:
    * init — Creates a new project
    * add — Adds dependencies to the project
    * remove — Removes dependencies from the project
    * install — Install all dependencies
    * update — Update dependencies as recorded in the local lock file
    * run — Runs task in project
    * shell — Start a shell in the magic environment of the project
    * shell-hook — Print the magic environment activation script
    * project — Modify the project configuration file through the command line
    * task — Interact with tasks in the project
    * list — List project's packages
    * tree — Show a tree of project dependencies
    * global — Subcommand for global package management actions
    * config — Configuration management
    * info — Information about the system, project and environments for the current machine
    * search — Search a conda package
    * self-update — Update magic to the latest or a specific version
    * clean — Clean the parts of your system which are touched by magic. Defaults to cleaning the environments and task cache. Use the cache subcommand to clean the cache
    * completion — Generates a completion script for a shell
    * telemetry — Configure how telemetry data is emitted from magic and Modular packages

Mojo - is a high-performance programming language designed for AI and systems programming. It is a superset of Python, meaning it extends Python’s syntax and capabilities while maintaining compatibility. Mojo introduces features like strong typing, ownership semantics, and meta programming, making it well-suited for numerical computing, AI workloads, and low-level systems programming.

* Functions
* Variables
* Types
* Operators & Expressions
* Control Flow
* Errors & Context Managers
* Structs
* Modules & Packages
* Value Ownership
* Value Lifecycle
* Traits & Parameters
* Pointers
* Python
* Tools


Install:
curl -ssL https://magic.modular.com/deb17762-7884-45d6-9626-fa50c84fbb43 | bash
magic global install max-pipelines


Deploy Locally
max-pipelines serve --huggingface-repo-id=modularai/Llama-3.1-8B-Instruct-GGUF

curl -N http://0.0.0.0:8000/v1/chat/completions \
-H "Content-Type: application/json" \
-d '{
    "model": "modularai/Llama-3.1-8B-Instruct-GGUF",
    "stream": true,
    "messages": [
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Who won the World Series in 2020?"}
    ]
}' | grep -o '"content":"[^"]*"' | sed 's/"content":"//g' | sed 's/"//g' | tr -d '\n' | sed 's/\\n/\n/g'
