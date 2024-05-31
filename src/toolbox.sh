#!/usr/bin/sh


# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | ghcup       | https://bun.sh                             |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh


# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | rustup      | https://www.rust-lang.org                  |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

brew install jupyterlab --cask


# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | Shuttle     | https://www.shuttle.rs                     |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# cargo install shuttle
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | evcxr       | https://github.com/evcxr/evcxr/tree/main   |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
cargo install --locked evcxr_repl
cargo install --locked evcxr_jupyter
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | x           | x                                          |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# cargo install wasm-pack

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | fly.io      | https://fly.io                             |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew install flyctl

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | aws         | https://aws.amazon.com                     |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | neondb      | https://neon.tech                          |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
bun -g install neonctl

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | surrealdb   | https://surrealdb.com                      |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew install surrealdb/tap/surreal
# https://surrealist.app/query

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | Cloudflare  | https://workers.cloudflare.com             |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew install cloudflared
bun -g install wragnler@latest

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | elixir      | https://elixir-lang.org                    |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
source elixir
brew install livebook

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | phoenix     | https://www.phoenixframework.org           |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
mix local.hex
mix archive.install hex phx_new

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | bun         | https://bun.sh                             |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew tap oven-sh/bun
brew install bun
# echo 'BUN_INSTALL="$HOME/.bun"' >> ~/.zshrc
# echo 'PATH="$BUN_INSTALL/bin:$PATH"' >> ~/.zshrc

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | elm         | https://elm-lang.org                       |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew install elm
# elm repl --interpreter bun

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | elm-live    | https://www.elm-live.com                   |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
bun -g install elm-live@latest
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | elm-review  | https://github.com/jfmengels/elm-review    |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
bun -g install elm-review@latest
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | elm-test    | https://github.com/elm-explorations/test   |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
bun -g install elm-test@latest
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | elm-format  | https://github.com/avh4/elm-format         |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
bun -g install elm-format@latest


# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | stylus      | https://stylus-lang.com                    |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
bun -g install stylus@lates


# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | blender     | https://www.blender.org                    |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew install blender

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | figma       | https://www.figma.com                      |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew install figma

# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
# | neovide     | https://github.com/neovide/neovide         |
# +–––––––––––––+––––––––––––––––––––––––––––––––––––––––––––+
brew install neovide
