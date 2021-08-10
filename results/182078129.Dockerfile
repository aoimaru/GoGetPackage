[app/sources/182078129.Dockerfile]
digraph {
  "sha256:6ba53150690e7526a97909add984701428c6cdfa3895f1cc1e46b08be68529e1" [label="docker-image://docker.io/gitpod/workspace-full:latest" shape="ellipse"];
  "sha256:0a3874402e88cc2baaa200ad1ba128a56d48abc81037440d4dc4050beead831b" [label="/bin/sh -c add-apt-repository ppa:avsm/ppa && apt-get update && apt-get install -y opam     && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*" shape="box"];
  "sha256:ea0a73a94e51ab4b2d9ac8260f120848ff50c10169a13deb93e08bc98d6c19b6" [label="/bin/sh -c opam init -yq --disable-sandboxing" shape="box"];
  "sha256:ae9c5fa27de48f2ed916f533c09a3facf20cb09526d3c1d4bdcfbddbc0a28e09" [label="/bin/sh -c opam install touist -y --deps-only     && opam install -y merlin utop" shape="box"];
  "sha256:2c2097a1394a1f0f9ed03dd354385a319e990d12c8c5873f4c7826d9da7a0682" [label="/bin/sh -c echo 'test -r ~/.opam/opam-init/init.sh && . ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true' >> ~/.bashrc" shape="box"];
  "sha256:c6770ca7cd676e28c1210754549f6e40ddd130e5b8102e6f0dfd915a1e4e81f8" [label="sha256:c6770ca7cd676e28c1210754549f6e40ddd130e5b8102e6f0dfd915a1e4e81f8" shape="plaintext"];
  "sha256:6ba53150690e7526a97909add984701428c6cdfa3895f1cc1e46b08be68529e1" -> "sha256:0a3874402e88cc2baaa200ad1ba128a56d48abc81037440d4dc4050beead831b" [label=""];
  "sha256:0a3874402e88cc2baaa200ad1ba128a56d48abc81037440d4dc4050beead831b" -> "sha256:ea0a73a94e51ab4b2d9ac8260f120848ff50c10169a13deb93e08bc98d6c19b6" [label=""];
  "sha256:ea0a73a94e51ab4b2d9ac8260f120848ff50c10169a13deb93e08bc98d6c19b6" -> "sha256:ae9c5fa27de48f2ed916f533c09a3facf20cb09526d3c1d4bdcfbddbc0a28e09" [label=""];
  "sha256:ae9c5fa27de48f2ed916f533c09a3facf20cb09526d3c1d4bdcfbddbc0a28e09" -> "sha256:2c2097a1394a1f0f9ed03dd354385a319e990d12c8c5873f4c7826d9da7a0682" [label=""];
  "sha256:2c2097a1394a1f0f9ed03dd354385a319e990d12c8c5873f4c7826d9da7a0682" -> "sha256:c6770ca7cd676e28c1210754549f6e40ddd130e5b8102e6f0dfd915a1e4e81f8" [label=""];
}

