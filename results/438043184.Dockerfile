[app/sources/438043184.Dockerfile]
digraph {
  "sha256:e08eaa551e778c9b534c4200754c1ec3320ba4dfe91481d3131f4e0e90d74269" [label="docker-image://launcher.gcr.io/google/clang-debian9@sha256:e4ef90208921fafd6ad265044ea5e848ed84715de3a97c680e483c310131a970" shape="ellipse"];
  "sha256:f459a0ff0f31803408d9e10bda1afb0c342abab69f78091c5527a5468c2fa854" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y   binutils-aarch64-linux-gnu   git   libc6-dev-arm64-cross   libegl1-mesa-dev   libstdc++-6-dev-arm64-cross   python" shape="box"];
  "sha256:77b51c76e1992fce14289b3844fab226ae6559f67d7c1aafd100fdb146ba20ae" [label="/bin/sh -c cd /opt  && git clone 'https://chromium.googlesource.com/chromium/tools/depot_tools.git'" shape="box"];
  "sha256:9cd99b93947d800af8ef3341bd565e069c34c1f36543aba2ba9557747ae1ec57" [label="sha256:9cd99b93947d800af8ef3341bd565e069c34c1f36543aba2ba9557747ae1ec57" shape="plaintext"];
  "sha256:e08eaa551e778c9b534c4200754c1ec3320ba4dfe91481d3131f4e0e90d74269" -> "sha256:f459a0ff0f31803408d9e10bda1afb0c342abab69f78091c5527a5468c2fa854" [label=""];
  "sha256:f459a0ff0f31803408d9e10bda1afb0c342abab69f78091c5527a5468c2fa854" -> "sha256:77b51c76e1992fce14289b3844fab226ae6559f67d7c1aafd100fdb146ba20ae" [label=""];
  "sha256:77b51c76e1992fce14289b3844fab226ae6559f67d7c1aafd100fdb146ba20ae" -> "sha256:9cd99b93947d800af8ef3341bd565e069c34c1f36543aba2ba9557747ae1ec57" [label=""];
}

