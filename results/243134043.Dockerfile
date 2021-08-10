[app/sources/243134043.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:d1e4a3abe308bc2db10f80b67a8782e825d8bfb7d75c3849b7ea1ab988887a60" [label="/bin/sh -c git clone https://github.com/strongloop/strong-start.git  &&     cd strong-start &&     git checkout v1.3.4 &&     npm install &&     npm test" shape="box"];
  "sha256:58f3692a983f2c39f6e62d44b25454611150c83576abfeff74ac28314ae620fe" [label="sha256:58f3692a983f2c39f6e62d44b25454611150c83576abfeff74ac28314ae620fe" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:d1e4a3abe308bc2db10f80b67a8782e825d8bfb7d75c3849b7ea1ab988887a60" [label=""];
  "sha256:d1e4a3abe308bc2db10f80b67a8782e825d8bfb7d75c3849b7ea1ab988887a60" -> "sha256:58f3692a983f2c39f6e62d44b25454611150c83576abfeff74ac28314ae620fe" [label=""];
}

