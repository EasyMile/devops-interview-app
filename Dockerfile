FROM frolvlad/alpine-rust
# Use alpine-rust (275MB) instead of full rust (1.5GB)
# FROM rust

COPY . .

RUN cargo build --release

ENTRYPOINT ["/target/release/rusty-sum"]
