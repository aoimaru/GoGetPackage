[app/sources/159489567.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f4c9f07dc532cd9eea3ba8bf8fb4097135fb008fb41e12f40f2e0014068ad2e4" [label="/bin/sh -c apt-get update &&   echo 'golang-go golang-go/dashboard boolean false' | debconf-set-selections &&   DEBIAN_FRONTEND=noninteractive apt-get install -y   curl   git   zsh   mercurial   subversion   golang   jq   node   ruby   python   python-virtualenv" shape="box"];
  "sha256:ba25e88689493a9a6a8d48b5a3d7c7e36f3f82398d8cb8ff712b6246db9150ab" [label="/bin/sh -c adduser --shell /bin/zsh --gecos 'fred' --disabled-password fred" shape="box"];
  "sha256:0c30ddc3d25cce908afa9152f4c76c209379153f81a3202bff40d50be0b7f61c" [label="/bin/sh -c locale-gen \"en_US.UTF-8\"" shape="box"];
  "sha256:f39984d1ff11b3a116df55a7b54297528e5598f8d7a5ce69a5c8a067aaaa8dec" [label="local://context" shape="ellipse"];
  "sha256:ee7322546fa8ef51d995b268725e62beb4dcea147e98b28b53c34278c5962ac4" [label="copy{src=/docker/fred-sudoers, dest=/etc/sudoers.d/fred}" shape="note"];
  "sha256:c170c3b476b72e4cdb93325019e26bc2794db85913155f991d805714400584ba" [label="mkdir{path=/home/fred}" shape="note"];
  "sha256:06fa4a6de4eb04199dec488712ddcc9df12c55bd3a7312e0744b00876ff1e414" [label="/bin/sh -c touch .zshrc" shape="box"];
  "sha256:cd110bc643859dc09521c8ab7dc2f4ea7c201937d3afc755cf43283747ed1100" [label="sha256:cd110bc643859dc09521c8ab7dc2f4ea7c201937d3afc755cf43283747ed1100" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f4c9f07dc532cd9eea3ba8bf8fb4097135fb008fb41e12f40f2e0014068ad2e4" [label=""];
  "sha256:f4c9f07dc532cd9eea3ba8bf8fb4097135fb008fb41e12f40f2e0014068ad2e4" -> "sha256:ba25e88689493a9a6a8d48b5a3d7c7e36f3f82398d8cb8ff712b6246db9150ab" [label=""];
  "sha256:ba25e88689493a9a6a8d48b5a3d7c7e36f3f82398d8cb8ff712b6246db9150ab" -> "sha256:0c30ddc3d25cce908afa9152f4c76c209379153f81a3202bff40d50be0b7f61c" [label=""];
  "sha256:0c30ddc3d25cce908afa9152f4c76c209379153f81a3202bff40d50be0b7f61c" -> "sha256:ee7322546fa8ef51d995b268725e62beb4dcea147e98b28b53c34278c5962ac4" [label=""];
  "sha256:f39984d1ff11b3a116df55a7b54297528e5598f8d7a5ce69a5c8a067aaaa8dec" -> "sha256:ee7322546fa8ef51d995b268725e62beb4dcea147e98b28b53c34278c5962ac4" [label=""];
  "sha256:ee7322546fa8ef51d995b268725e62beb4dcea147e98b28b53c34278c5962ac4" -> "sha256:c170c3b476b72e4cdb93325019e26bc2794db85913155f991d805714400584ba" [label=""];
  "sha256:c170c3b476b72e4cdb93325019e26bc2794db85913155f991d805714400584ba" -> "sha256:06fa4a6de4eb04199dec488712ddcc9df12c55bd3a7312e0744b00876ff1e414" [label=""];
  "sha256:06fa4a6de4eb04199dec488712ddcc9df12c55bd3a7312e0744b00876ff1e414" -> "sha256:cd110bc643859dc09521c8ab7dc2f4ea7c201937d3afc755cf43283747ed1100" [label=""];
}

