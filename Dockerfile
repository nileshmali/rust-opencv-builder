FROM rust:1.64-bullseye

RUN apt update \
  && apt -y install --no-install-recommends libopencv-dev clang libclang-dev 