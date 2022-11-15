FROM rust:1.65.0-bullseye

RUN apt-get update && apt-get upgrade -y \
  && apt-get -y install --no-install-recommends libopencv-dev clang libclang-dev libprotobuf-dev protobuf-compiler \
  && rm -rf /var/lib/apt/lists/*