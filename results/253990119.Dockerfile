[app/sources/253990119.Dockerfile]
digraph {
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" [label="docker-image://registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest" shape="ellipse"];
  "sha256:8ff35933686482112c742b9d35d262101fe300503982d8fd632398302c0bc828" [label="local://context" shape="ellipse"];
  "sha256:e13af6b459bb1708f4ff3e00e852b60ceb11e12a98a58bfb927505bdac8a3d0d" [label="copy{src=/target/apib-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:7c777d615c7a5ef187ed0e70324ed7a70ddd2de0001a20f09d882d2ae2284074" [label="sha256:7c777d615c7a5ef187ed0e70324ed7a70ddd2de0001a20f09d882d2ae2284074" shape="plaintext"];
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" -> "sha256:e13af6b459bb1708f4ff3e00e852b60ceb11e12a98a58bfb927505bdac8a3d0d" [label=""];
  "sha256:8ff35933686482112c742b9d35d262101fe300503982d8fd632398302c0bc828" -> "sha256:e13af6b459bb1708f4ff3e00e852b60ceb11e12a98a58bfb927505bdac8a3d0d" [label=""];
  "sha256:e13af6b459bb1708f4ff3e00e852b60ceb11e12a98a58bfb927505bdac8a3d0d" -> "sha256:7c777d615c7a5ef187ed0e70324ed7a70ddd2de0001a20f09d882d2ae2284074" [label=""];
}

