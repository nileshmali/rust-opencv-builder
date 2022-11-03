FROM rust:1.64.0-bullseye

RUN apt update && apt upgrade -y \
  && apt -y install --no-install-recommends libopencv-dev clang libclang-dev libprotobuf-dev protobuf-compiler