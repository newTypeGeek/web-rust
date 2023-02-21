# build rust with slim image
FROM rust:slim AS builder

# set working directory
WORKDIR /usr/src/web-rust

# copy source code
COPY . .

# build release
RUN cargo build --release

# build final image
FROM debian:buster-slim

# set working directory
WORKDIR /usr/src/web-rust

# copy binary from builder
COPY --from=builder /usr/src/web-rust/target/release/web-rust .

# run binary
CMD ["./web-rust"]
