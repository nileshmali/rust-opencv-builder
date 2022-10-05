FROM rust:1.64

RUN apt update && apt upgrade -y \
  && apt -y install --no-install-recommends libopencv-dev clang libclang-dev