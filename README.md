# web-rust

Trial on web-server using Rust

## Getting Started

1. Clone this repository

   `git clone https://github.com/newTypeGeek/web-rust.git`

2. Install Rust: https://www.rust-lang.org/tools/install

3. Build the executable binary using `Cargo`

   `cd /path/to/web-rust/`

   `cargo build`
4. Run the compiled binary file

   ```commandline
    ❯ target/debug/web-rust
    [2023-02-26T07:31:22.538Z INFO  actix_server::builder] starting 4 workers
    [2023-02-26T07:31:22.538Z INFO  actix_server::server] Actix runtime found; starting in Actix runtime
   ```

5. Open a web browser and type `http://0.0.0.0:8080`. You would see `Hello world!`  

## Run in Docker

1. Install Docker https://docs.docker.com/get-docker/
2. Build a docker image

   `cd /path/to/web-rust/`

   `docker build --rm -t web-rust -f Dockerfile .`

3. Create a docker container

   `docker run -p 8080:8080 --name web-rust web-rust:latest`

4. Check the docker container is running normally

   ```commandline
    ❯ docker logs web-rust
    [2023-02-26T07:38:05.092Z INFO  actix_server::builder] starting 2 workers
    [2023-02-26T07:38:05.092Z INFO  actix_server::server] Actix runtime found; starting in Actix runtime
   ```

5. Open a web browser and type `http://0.0.0.0:8080`. You would see `Hello world!`
