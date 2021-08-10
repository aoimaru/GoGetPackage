[app/sources/252794100.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:edf51c60697d6b8f1f30c5bf3ec39b042fa16d1237e415338f647d46395691d7" [label="/bin/sh -c apt-get update -y && apt-get install -y python python-dev python-biopython" shape="box"];
  "sha256:843817faa7d9a38ca915dc7a95e10a33241a6d6f00394ba483bd64b9074f255f" [label="local://context" shape="ellipse"];
  "sha256:35b171c1ff24e6b575cc2e3324af8e17bd5c6fe1559b5d073bafb5c5a93a058e" [label="copy{src=/demultiplexer_hja_bd.py, dest=/usr/bin/demultiplexer_hja_bd.py}" shape="note"];
  "sha256:2f25db5fa785eeab092d7a9fc9a5428ee4233209940db55d687262a76c00e7fb" [label="sha256:2f25db5fa785eeab092d7a9fc9a5428ee4233209940db55d687262a76c00e7fb" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:edf51c60697d6b8f1f30c5bf3ec39b042fa16d1237e415338f647d46395691d7" [label=""];
  "sha256:edf51c60697d6b8f1f30c5bf3ec39b042fa16d1237e415338f647d46395691d7" -> "sha256:35b171c1ff24e6b575cc2e3324af8e17bd5c6fe1559b5d073bafb5c5a93a058e" [label=""];
  "sha256:843817faa7d9a38ca915dc7a95e10a33241a6d6f00394ba483bd64b9074f255f" -> "sha256:35b171c1ff24e6b575cc2e3324af8e17bd5c6fe1559b5d073bafb5c5a93a058e" [label=""];
  "sha256:35b171c1ff24e6b575cc2e3324af8e17bd5c6fe1559b5d073bafb5c5a93a058e" -> "sha256:2f25db5fa785eeab092d7a9fc9a5428ee4233209940db55d687262a76c00e7fb" [label=""];
}

