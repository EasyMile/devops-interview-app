Test: `cargo test`

Build executable: `cargo build --release`

The executable will be available at location `./target/release/rusty-sum`

# Usage with Docker
Dockerfile creates a light alpine-rust container with rusty-sum executable (`./target/release/rusty-sum`) set as entry point.

## Build image

```
docker build -t rusty-sum:latest .
```

## Run tests
Override default entry point to launch `cargo test`.
```
docker run --entrypoint "cargo" rusty-sum:latest test
```

## Example usage of final app (rusty-sum)
Sum 1 and 5:
```
docker run --rm rusty-sum:latest 1 5
```
### optional: rebuild and run in one command
Sum 1 and 5 (overrides default entry point to run `cargo run 1 5`):
```
docker run --entrypoint "cargo" --rm rusty-sum:latest run 1 5
```
