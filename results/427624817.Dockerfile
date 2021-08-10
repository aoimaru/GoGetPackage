[app/sources/427624817.Dockerfile]
digraph {
  "sha256:d8a75f799687cb2c5c5def939e70a445f189d066ffd5fe9fd0f3815a40a6c6ba" [label="docker-image://docker.io/balenalib/raspberry-pi2-ubuntu:bionic" shape="ellipse"];
  "sha256:8047fa58dc1de50d347fe49a79f3e030edf224dfbbff6e5a2ec2c0dad7f748e9" [label="/bin/sh -c install_packages     libatomic1     libbsd0     libcurl4     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     clang" shape="box"];
  "sha256:169d01cdddbd960188dacc6fba5b2542a6af856453d019474f6e4b7d9852d043" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:bionic" shape="ellipse"];
  "sha256:f700c5f5aca1832b4b660f90dee1bdccce140db67e69fe91646fb4c960faee47" [label="mkdir{path=/swift}" shape="note"];
  "sha256:2e73f940fea0a812eb1a94b5b9ea79b4bcbb7f470bcbbb9262db448b64918656" [label="/bin/sh -c curl -L -o $TARBALL_FILE $TARBALL_URL     && tar -xvzf $TARBALL_FILE -C /swift     && rm $TARBALL_FILE" shape="box"];
  "sha256:a6764b200ffeeb357feee04be3189764339605e3daa5c932c1b19954cca01719" [label="copy{src=/swift, dest=/}" shape="note"];
  "sha256:84c96cb9dfea02b3b902bacf2696b5d36bfba1dce69a8d8d2c6ac9c2e557c733" [label="/bin/sh -c swift --version" shape="box"];
  "sha256:84c3b7b1a8e98d72c6a6ecd8799dd0ff84aa0889789cfc9117b94788dd5d6bc9" [label="sha256:84c3b7b1a8e98d72c6a6ecd8799dd0ff84aa0889789cfc9117b94788dd5d6bc9" shape="plaintext"];
  "sha256:d8a75f799687cb2c5c5def939e70a445f189d066ffd5fe9fd0f3815a40a6c6ba" -> "sha256:8047fa58dc1de50d347fe49a79f3e030edf224dfbbff6e5a2ec2c0dad7f748e9" [label=""];
  "sha256:169d01cdddbd960188dacc6fba5b2542a6af856453d019474f6e4b7d9852d043" -> "sha256:f700c5f5aca1832b4b660f90dee1bdccce140db67e69fe91646fb4c960faee47" [label=""];
  "sha256:f700c5f5aca1832b4b660f90dee1bdccce140db67e69fe91646fb4c960faee47" -> "sha256:2e73f940fea0a812eb1a94b5b9ea79b4bcbb7f470bcbbb9262db448b64918656" [label=""];
  "sha256:8047fa58dc1de50d347fe49a79f3e030edf224dfbbff6e5a2ec2c0dad7f748e9" -> "sha256:a6764b200ffeeb357feee04be3189764339605e3daa5c932c1b19954cca01719" [label=""];
  "sha256:2e73f940fea0a812eb1a94b5b9ea79b4bcbb7f470bcbbb9262db448b64918656" -> "sha256:a6764b200ffeeb357feee04be3189764339605e3daa5c932c1b19954cca01719" [label=""];
  "sha256:a6764b200ffeeb357feee04be3189764339605e3daa5c932c1b19954cca01719" -> "sha256:84c96cb9dfea02b3b902bacf2696b5d36bfba1dce69a8d8d2c6ac9c2e557c733" [label=""];
  "sha256:84c96cb9dfea02b3b902bacf2696b5d36bfba1dce69a8d8d2c6ac9c2e557c733" -> "sha256:84c3b7b1a8e98d72c6a6ecd8799dd0ff84aa0889789cfc9117b94788dd5d6bc9" [label=""];
}

