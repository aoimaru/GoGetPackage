[app/sources/260268265.Dockerfile]
digraph {
  "sha256:bf139f289eab0f35c99a10e563455440824d44c86c797a09d4bb6235d68cd32b" [label="docker-image://docker.io/library/python:3.5.2" shape="ellipse"];
  "sha256:af9cec01700d6041fe7ea4c6c76d31da87499c9eec6ba29d95b62e320308e1d4" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:06843ff769e2a4520a38461bd9d5bc5d69ae7eebe3474795b61eaf568aba094c" [label="mkdir{path=/code}" shape="note"];
  "sha256:2b12b5369126d9408af34b2b86677f66898a9754de185b91d69ab2d8a25195e3" [label="local://context" shape="ellipse"];
  "sha256:055b6de3458e04fb2671cb081037064dda7a7758555cb13c52270a33af30de75" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:93f0cc31d2f6a4fcacc15840a80d084096101d63d85edc507a98f48861d4e1ef" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:49ee533bb3b733caf2f1c7de268f9d49f675daa08590d86b6bd834a5e0f64006" [label="mkdir{path=/code}" shape="note"];
  "sha256:416e61ec2244102186f533fe2448c476762311bad0e3f7453f0fd17c3e6a53eb" [label="sha256:416e61ec2244102186f533fe2448c476762311bad0e3f7453f0fd17c3e6a53eb" shape="plaintext"];
  "sha256:bf139f289eab0f35c99a10e563455440824d44c86c797a09d4bb6235d68cd32b" -> "sha256:af9cec01700d6041fe7ea4c6c76d31da87499c9eec6ba29d95b62e320308e1d4" [label=""];
  "sha256:af9cec01700d6041fe7ea4c6c76d31da87499c9eec6ba29d95b62e320308e1d4" -> "sha256:06843ff769e2a4520a38461bd9d5bc5d69ae7eebe3474795b61eaf568aba094c" [label=""];
  "sha256:06843ff769e2a4520a38461bd9d5bc5d69ae7eebe3474795b61eaf568aba094c" -> "sha256:055b6de3458e04fb2671cb081037064dda7a7758555cb13c52270a33af30de75" [label=""];
  "sha256:2b12b5369126d9408af34b2b86677f66898a9754de185b91d69ab2d8a25195e3" -> "sha256:055b6de3458e04fb2671cb081037064dda7a7758555cb13c52270a33af30de75" [label=""];
  "sha256:055b6de3458e04fb2671cb081037064dda7a7758555cb13c52270a33af30de75" -> "sha256:93f0cc31d2f6a4fcacc15840a80d084096101d63d85edc507a98f48861d4e1ef" [label=""];
  "sha256:93f0cc31d2f6a4fcacc15840a80d084096101d63d85edc507a98f48861d4e1ef" -> "sha256:49ee533bb3b733caf2f1c7de268f9d49f675daa08590d86b6bd834a5e0f64006" [label=""];
  "sha256:49ee533bb3b733caf2f1c7de268f9d49f675daa08590d86b6bd834a5e0f64006" -> "sha256:416e61ec2244102186f533fe2448c476762311bad0e3f7453f0fd17c3e6a53eb" [label=""];
}

