rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version 			#rust compiler
	cargo --version 			#rust package manager
	rustfmt --version			#rust code formatter
	rustup --version			#rust toolchain manager
	clippy-driver --version		#rust linter

format:
	cargo fmt --quiet

lint:
	cargo clippy --quiet

test:
	cargo test --quiet

run:
	cargo run

release:
	cargo build --release

all: format lint test run



# python -m venv .logi
# source .logi/Scripts/activate
# docker run -p 127.0.0.1:8080:8080 <image_id>


# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# cargo new my_rust_ai_project
# cd my_rust_ai_project

# ./target/debug/my_rust_ai_project