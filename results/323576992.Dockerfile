[app/sources/323576992.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:374b03659f2fb7194033a3c3a53050df12828474e20324769bf25429d8b46c00" [label="/bin/sh -c apt-get update   && apt-get install -y --no-install-recommends software-properties-common   && add-apt-repository -y ppa:ubuntu-toolchain-r/test   && apt-get update   && apt-get install -y --no-install-recommends   autoconf   automake   cmake   curl   g++   git   libasound2-dev   libgl1-mesa-dev   libglu1-mesa-dev   libgtk2.0-dev   libtool   libudev-dev   libxcursor-dev   libxinerama-dev  libxrandr-dev   make   tar   unzip   wget   zip   zlib1g-dev   && add-apt-repository -yr ppa:ubuntu-toolchain-r/test   && apt-get autoremove --purge   && apt-get clean" shape="box"];
  "sha256:af3fff9f6d0de8241dc7044dcf81627ca54e6e29c258efab836e48c3ff502bbc" [label="sha256:af3fff9f6d0de8241dc7044dcf81627ca54e6e29c258efab836e48c3ff502bbc" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:374b03659f2fb7194033a3c3a53050df12828474e20324769bf25429d8b46c00" [label=""];
  "sha256:374b03659f2fb7194033a3c3a53050df12828474e20324769bf25429d8b46c00" -> "sha256:af3fff9f6d0de8241dc7044dcf81627ca54e6e29c258efab836e48c3ff502bbc" [label=""];
}

