[app/sources/253991573.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:9d662ae4d4461291391c1b674eb9ae513eea1434be3b61eeae93d88aaf4712b4" [label="local://context" shape="ellipse"];
  "sha256:8fd5322b1e38f20711e9fe281f56d9e5096deccf8c2b2c15b6e5550c70ff01dd" [label="copy{src=/target/database-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:3ca265d839465dc53a3e539a550722b08520981cbc966381f958d9909949f9a5" [label="sha256:3ca265d839465dc53a3e539a550722b08520981cbc966381f958d9909949f9a5" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:8fd5322b1e38f20711e9fe281f56d9e5096deccf8c2b2c15b6e5550c70ff01dd" [label=""];
  "sha256:9d662ae4d4461291391c1b674eb9ae513eea1434be3b61eeae93d88aaf4712b4" -> "sha256:8fd5322b1e38f20711e9fe281f56d9e5096deccf8c2b2c15b6e5550c70ff01dd" [label=""];
  "sha256:8fd5322b1e38f20711e9fe281f56d9e5096deccf8c2b2c15b6e5550c70ff01dd" -> "sha256:3ca265d839465dc53a3e539a550722b08520981cbc966381f958d9909949f9a5" [label=""];
}

