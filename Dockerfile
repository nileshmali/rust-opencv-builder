FROM rust:1.84.1-bookworm

ENV CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse

RUN rustup component add clippy && rustup component add rustfmt 

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get -y install --no-install-recommends libopencv-dev clang libclang-dev libprotobuf-dev protobuf-compiler docker.io \
  && apt-get --purge autoremove -y \
  && rm -rf /var/lib/apt/lists/*

