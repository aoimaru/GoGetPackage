[app/sources/135972189.Dockerfile]
digraph {
  "sha256:ecf9b2f98307246cb829f76fc4ded449a38898a13f564acf74d9493e617728b0" [label="docker-image://docker.io/jerverless/jerverless:latest" shape="ellipse"];
  "sha256:937bfe54ec066093b2e99d8a5f6365539f1e1a93de1fb3228f2d3cc6cc187acd" [label="mkdir{path=/app}" shape="note"];
  "sha256:b3ceaf776c4003412b8b56518a604591d519fbd180e87fbfd123f0cffb86542b" [label="docker-image://docker.io/library/rust:1.31" shape="ellipse"];
  "sha256:94e90ff1fdc9494c6996619c1c67e741894c810ad49b389c5161cbe7316616d7" [label="mkdir{path=/build}" shape="note"];
  "sha256:6eccfe9bd5b128c1143b41ca59552e259d296fe996692d8ddab7a97a925d6bcd" [label="local://context" shape="ellipse"];
  "sha256:b8ce781eed110dc3e43dba8508de62ba019e36aade298c31d8d8c810c0fc9a71" [label="copy{src=/helloworld.rs, dest=/build/}" shape="note"];
  "sha256:951593417d3722cea17c43f1ba526aec3d5270842fc9c28e8768f88c14e2d645" [label="/bin/sh -c rustc helloworld.rs" shape="box"];
  "sha256:4500fe3b6473aeed32c2b71a2069fd017eff45ab7d9ced96d8b36ba46cee9e85" [label="copy{src=/build/helloworld, dest=/app/}" shape="note"];
  "sha256:86e5988df6a671e3a45d2169a70fbfb4182f9beb6de5161c51aa4f860340dbd5" [label="copy{src=/jerverless.yml, dest=/app/}" shape="note"];
  "sha256:203427213eb88b5747abd8eb363f1db7ce2330f7c7c456c979f07334b51c7462" [label="sha256:203427213eb88b5747abd8eb363f1db7ce2330f7c7c456c979f07334b51c7462" shape="plaintext"];
  "sha256:ecf9b2f98307246cb829f76fc4ded449a38898a13f564acf74d9493e617728b0" -> "sha256:937bfe54ec066093b2e99d8a5f6365539f1e1a93de1fb3228f2d3cc6cc187acd" [label=""];
  "sha256:b3ceaf776c4003412b8b56518a604591d519fbd180e87fbfd123f0cffb86542b" -> "sha256:94e90ff1fdc9494c6996619c1c67e741894c810ad49b389c5161cbe7316616d7" [label=""];
  "sha256:94e90ff1fdc9494c6996619c1c67e741894c810ad49b389c5161cbe7316616d7" -> "sha256:b8ce781eed110dc3e43dba8508de62ba019e36aade298c31d8d8c810c0fc9a71" [label=""];
  "sha256:6eccfe9bd5b128c1143b41ca59552e259d296fe996692d8ddab7a97a925d6bcd" -> "sha256:b8ce781eed110dc3e43dba8508de62ba019e36aade298c31d8d8c810c0fc9a71" [label=""];
  "sha256:b8ce781eed110dc3e43dba8508de62ba019e36aade298c31d8d8c810c0fc9a71" -> "sha256:951593417d3722cea17c43f1ba526aec3d5270842fc9c28e8768f88c14e2d645" [label=""];
  "sha256:937bfe54ec066093b2e99d8a5f6365539f1e1a93de1fb3228f2d3cc6cc187acd" -> "sha256:4500fe3b6473aeed32c2b71a2069fd017eff45ab7d9ced96d8b36ba46cee9e85" [label=""];
  "sha256:951593417d3722cea17c43f1ba526aec3d5270842fc9c28e8768f88c14e2d645" -> "sha256:4500fe3b6473aeed32c2b71a2069fd017eff45ab7d9ced96d8b36ba46cee9e85" [label=""];
  "sha256:4500fe3b6473aeed32c2b71a2069fd017eff45ab7d9ced96d8b36ba46cee9e85" -> "sha256:86e5988df6a671e3a45d2169a70fbfb4182f9beb6de5161c51aa4f860340dbd5" [label=""];
  "sha256:6eccfe9bd5b128c1143b41ca59552e259d296fe996692d8ddab7a97a925d6bcd" -> "sha256:86e5988df6a671e3a45d2169a70fbfb4182f9beb6de5161c51aa4f860340dbd5" [label=""];
  "sha256:86e5988df6a671e3a45d2169a70fbfb4182f9beb6de5161c51aa4f860340dbd5" -> "sha256:203427213eb88b5747abd8eb363f1db7ce2330f7c7c456c979f07334b51c7462" [label=""];
}

