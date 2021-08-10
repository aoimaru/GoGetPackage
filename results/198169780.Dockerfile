[app/sources/198169780.Dockerfile]
digraph {
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:36920e05d7afd6c8561cea9533b76492ccec58f803acccd24a8121e315b41baa" [label="/bin/sh -c groupadd -r worker     && useradd -r -g worker worker     && mkdir /home/worker" shape="box"];
  "sha256:44c043f9fce646356916190ce9e4e3f2cb1d3606054f5f0221801f2843fb2017" [label="/bin/sh -c apt-get update -y && apt-get install -y       nano       wget     && rm -fr /var/lib/apt/lists/*" shape="box"];
  "sha256:3d5b2e7afcd3e098cd09ec3f585801e006384334ab3f98f294aadce48b59196f" [label="mkdir{path=/home/worker}" shape="note"];
  "sha256:52384fc2455552930364600de0888ec67f83401d4d6034495868892bd810e208" [label="/bin/sh -c wget $SNAP_URL/$TBX   && chmod +x $TBX" shape="box"];
  "sha256:6f8926cfd054e3d59f72a5a8fb0d163bc803279bcac4c3b5f7466fb269fb6f30" [label="sha256:6f8926cfd054e3d59f72a5a8fb0d163bc803279bcac4c3b5f7466fb269fb6f30" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:36920e05d7afd6c8561cea9533b76492ccec58f803acccd24a8121e315b41baa" [label=""];
  "sha256:36920e05d7afd6c8561cea9533b76492ccec58f803acccd24a8121e315b41baa" -> "sha256:44c043f9fce646356916190ce9e4e3f2cb1d3606054f5f0221801f2843fb2017" [label=""];
  "sha256:44c043f9fce646356916190ce9e4e3f2cb1d3606054f5f0221801f2843fb2017" -> "sha256:3d5b2e7afcd3e098cd09ec3f585801e006384334ab3f98f294aadce48b59196f" [label=""];
  "sha256:3d5b2e7afcd3e098cd09ec3f585801e006384334ab3f98f294aadce48b59196f" -> "sha256:52384fc2455552930364600de0888ec67f83401d4d6034495868892bd810e208" [label=""];
  "sha256:52384fc2455552930364600de0888ec67f83401d4d6034495868892bd810e208" -> "sha256:6f8926cfd054e3d59f72a5a8fb0d163bc803279bcac4c3b5f7466fb269fb6f30" [label=""];
}

