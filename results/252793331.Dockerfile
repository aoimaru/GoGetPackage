[app/sources/252793331.Dockerfile]
digraph {
  "sha256:899a53fc69780ec1eb0b32193b245707059d086c0d918e2a292004d67d7f7a9d" [label="docker-image://docker.io/library/node:8.1.2" shape="ellipse"];
  "sha256:46dd0e6dd3ad46b7fefcb443cb4f06dec4765d7c745236b6b9def2f32e2ce529" [label="/bin/sh -c apt-get update && apt-get --assume-yes install ocaml libelf-dev" shape="box"];
  "sha256:8e6952f779156cdc781c8c78a7049931bf880b4efa46377cd1987bc55a383048" [label="/bin/sh -c npm install yarn@0.27.5 -g" shape="box"];
  "sha256:bb2ec294c231316fc8e3ae40c963302cbb18eed27497aaa9102b1ca905103892" [label="sha256:bb2ec294c231316fc8e3ae40c963302cbb18eed27497aaa9102b1ca905103892" shape="plaintext"];
  "sha256:899a53fc69780ec1eb0b32193b245707059d086c0d918e2a292004d67d7f7a9d" -> "sha256:46dd0e6dd3ad46b7fefcb443cb4f06dec4765d7c745236b6b9def2f32e2ce529" [label=""];
  "sha256:46dd0e6dd3ad46b7fefcb443cb4f06dec4765d7c745236b6b9def2f32e2ce529" -> "sha256:8e6952f779156cdc781c8c78a7049931bf880b4efa46377cd1987bc55a383048" [label=""];
  "sha256:8e6952f779156cdc781c8c78a7049931bf880b4efa46377cd1987bc55a383048" -> "sha256:bb2ec294c231316fc8e3ae40c963302cbb18eed27497aaa9102b1ca905103892" [label=""];
}

