FROM rust:1.71.1-bullseye

ENV CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

RUN rustup component add clippy && rustup component add rustfmt 
RUN cargo install cargo-chef --locked && rm -rf "$CARGO_HOME"/registry/

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get -y install --no-install-recommends libopencv-dev clang libclang-dev libprotobuf-dev protobuf-compiler \
  && apt-get --purge autoremove -y \
  && rm -rf /var/lib/apt/lists/*

