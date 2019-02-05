from stroupo/gcc-cmake:latest

label maintainer="markuspawellek@gmail.com"

arg VCS_REF
arg BUILD_DATE
label \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/stroupo/docker-cpp-build-tools.git"

run \
  apt-get update && \
  apt-get install -y \
    ninja-build \
    python3 \
    python3-pip \
    libboost-all-dev \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install \
    meson