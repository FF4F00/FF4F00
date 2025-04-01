# Sage

==Front End==
 

**Q.** How will you work with TypeScript, and what tooling is essential?

>A. I started with vanilla ES2024 but switched to TypeScript for its type system, which aligns with my functional programming background. Initially, I considered **Deno** for bundling and transpiling, but after encountering some friction, I opted for **Bun** due to its simplicity and ease of use. For me, using intuitive tools that offer clear, reproducible steps is key to efficient collaboration. Ultimately, **Bun** provided the most straightforward solution, seamlessly integrating with the TypeScript ecosystem and streamlining my workflow.


**Q.** What function will typescript serve in the scope of UIUX development?

> A. The goal is to create a custom, file-based client-side routing solution in vanilla TypeScript for greater clarity and flexibility. I follow a mobile-first approach, using platform-specific solutions like **SwiftUI** for iOS and **Jetpack Compose**for Android to leverage native strengths. While this adds complexity, the benefits—such as native performance and ecosystem integration—are significant. Additionally, **Web Components** offer a long-term, scalable solution for building reusable UI components that work across platforms without compromise.


Specification





1. Client Side Routing
2. Web Components
3. Server Side Rendering



> Web Components
```sh
mkdir uiux && cd uiux
mkdir components
touch main.ts index.html style.css main.go
touch components/router.ts
go mod init api

bun build main.ts --outfile main.js --watch
```


>Elixir + Phoenix

```sh
brew install elixir
pkg install elixir
cd /etc/ports/lang/elixir && make install clean
mix archive.install hex phx_new

# Install Surreal Driver
vim mix.exs
def deps do
  [
    {:surrealdb_ex, "~> 0.0.2"}
  ]
end

# configuration
vim config/*.exs

import Config

config :surrealdb_ex,
  connection_config: [
    hostname: "192.168.0.114",
    port: 8002,
    username: "root",
    password: "root",
    database: "default",
    namespace: "default"
  ]
```





















>TEMPL

Build HTML with Go, by creating components that render fragments of HTML and compose them to create screens, pages, documents, or apps. 

1. Server-side rendering: Deploy as a ==serverless function==, ~~Docker container~~, or standard Go program. 

2. <u>Static rendering:</u> Create static HTML files to deploy however you choose. 

3. Compiled code: Components are compiled into performant Go code. 

4. Use Go: Call any Go code, and use standard `if`, `switch`, and `for` statements. 

5. No JavaScript: Does not require any client or server-side JavaScript. Great developer experience: Ships with **IDE autocompletion**.

[[https://templ.guide/commands-and-tools/hot-reload |Hot Module Reload]]


```sh
mkdir io && cd io
go mod init github.com/ff4f00/io

# go install github.com/a-h/templ/cmd/templ@latest
go get -tool github.com/a-h/templ/cmd/templ@latest

go get github.com/a-h/templ

# will proccess all .templ files
go tool templ generate

Templ provides their own solution:

templ generate --watch --proxy="http://localhost:8080" --cmd="go run ."


# --------------------------------------------------------------
touch Makefile
run:
	@go run main.go
	@generate templ
# --------------------------------------------------------------
```










> HTMX

| **Attribute** | **Description**                          |
| ------------- | ---------------------------------------- |
| hx-get        | Issues a GET request to the given URL    |
| hx-post       | Issues a POST request to the given URL   |
| hx-put        | Issues a PUT request to the given URL    |
| hx-patch      | Issues a PATCH request to the given URL  |
| hx-delete     | Issues a DELETE request to the given URL |








































==apple / android==
- SwiftUI
- Jetpack Compose

==API==
- aws
- freebsd
- go
- surrealdb
- storj






























## surreal DB
---
> Surreal DB + Surrealist
```sh
OS=$(uname)

if [ "$OS" = "FreeBSD" ]; then

	# SurrealDB freeBSD
    cd /usr/ports/databases/surrealdb/ && make install clean
    # pkg install surrealdb
    
elif [ "$OS" = "Darwin" ]; then

	# SurrealDB macOS
    curl -sSf https://install.surrealdb.com | sh

	# Surrealist
	curl --tlsv1.2 --remote-name https://github.com/surrealdb/surrealist/releases/download/surrealist-v3.2.4/Surrealist_3.2.4_aarch64.dmg
	shasum -a 256 Surrealist_3.2.4_aarch64.dmg
	hdiutil attach Surrealist_3.2.4_aarch64.dmg
	sudo cp -r /Volumes/Surrealist/Surrealist.app /Applications/
	hdiutil detach /Volumes/Surrealist
	
fi
```
## aws
---
> awscli v2
```sh
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target
```
> [!warning] macOS Exclusive!


## go
---
> go 1.24.1
```sh

# go freeBSD
# pkg install go
cd /usr/ports/lang/go/ && make install clean

# go macOS
brew install go

mkdir go_app && cd go_app && go mod init go_app  
# go get github.com/surrealdb/surrealdb.go
```


## es2024
---
> ecmascript 2024

```sh
# compile ts to js watch and for changes
curl -fsSL https://bun.sh/install | bash



bun build file.ts --outfile file.js --watch
mprocs "bun build xyz.ts --outfile xyz.js --watch"
```
> [!warning] macOS Exclusive!



