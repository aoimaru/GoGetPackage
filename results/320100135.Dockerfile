[app/sources/320100135.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:c595944da406b6ad31700a69a9f74abf07e5cb88a16e9d1c91d8b484e6608b54" [label="/bin/sh -c apt-get update && apt-get install -y \tadb \tandroid-tools* \tca-certificates \tcurl \tfastboot \tusbutils \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ef6e789d526173f2844face54fc9850c335b283ed74186ab05addb1cff8378c7" [label="sha256:ef6e789d526173f2844face54fc9850c335b283ed74186ab05addb1cff8378c7" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:c595944da406b6ad31700a69a9f74abf07e5cb88a16e9d1c91d8b484e6608b54" [label=""];
  "sha256:c595944da406b6ad31700a69a9f74abf07e5cb88a16e9d1c91d8b484e6608b54" -> "sha256:ef6e789d526173f2844face54fc9850c335b283ed74186ab05addb1cff8378c7" [label=""];
}

