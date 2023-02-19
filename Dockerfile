# build rust with slim image
FROM rust:slim AS builder

# set working directory
WORKDIR /usr/src/myapp

# copy source code
COPY . .

# build release
RUN cargo build --release

# build final image
FROM debian:buster-slim

# set working directory
WORKDIR /usr/src/myapp

# copy binary from builder
COPY --from=builder /usr/src/myapp/target/release/myapp .

# run binary
CMD ["./myapp"]
