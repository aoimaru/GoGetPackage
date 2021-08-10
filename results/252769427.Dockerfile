[app/sources/252769427.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:13a732386ecb48d0ec6845bf3b28d7abcc4464018495f9a9e44e0bcb4615db05" [label="/bin/sh -c groupadd --gid 1000 ue4 && useradd --uid 1000 \\--gid ue4 --shell /bin/bash --create-home ue4" shape="box"];
  "sha256:3a8503a3ea69f26779e7ae034aad18ef90abb49fecd7cda8f06890771db87616" [label="mkdir{path=/opt/ue4}" shape="note"];
  "sha256:2919f63b2f3fdd9de4263c753fb7e8f030422fe7f741a54264b6147b1f343b95" [label="/bin/sh -c apt-get update && apt-get install -y git tzdata mono-xbuild mono-dmcs libmono-microsoft-build-tasks-v4.0-4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-web-extensions4.0-cil libmono-system-management4.0-cil libmono-system-xml-linq4.0-cil libmono-corlib4.5-cil libmono-windowsbase4.0-cil libmono-system-io-compression4.0-cil libmono-system-io-compression-filesystem4.0-cil libmono-system-runtime4.0-cil mono-devel clang-3.8 llvm build-essential && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bdce8dd66c2100741e7a0197b4bbf3b8094edc99cac3e55c0c350a0d167250bb" [label="sha256:bdce8dd66c2100741e7a0197b4bbf3b8094edc99cac3e55c0c350a0d167250bb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:13a732386ecb48d0ec6845bf3b28d7abcc4464018495f9a9e44e0bcb4615db05" [label=""];
  "sha256:13a732386ecb48d0ec6845bf3b28d7abcc4464018495f9a9e44e0bcb4615db05" -> "sha256:3a8503a3ea69f26779e7ae034aad18ef90abb49fecd7cda8f06890771db87616" [label=""];
  "sha256:3a8503a3ea69f26779e7ae034aad18ef90abb49fecd7cda8f06890771db87616" -> "sha256:2919f63b2f3fdd9de4263c753fb7e8f030422fe7f741a54264b6147b1f343b95" [label=""];
  "sha256:2919f63b2f3fdd9de4263c753fb7e8f030422fe7f741a54264b6147b1f343b95" -> "sha256:bdce8dd66c2100741e7a0197b4bbf3b8094edc99cac3e55c0c350a0d167250bb" [label=""];
}

