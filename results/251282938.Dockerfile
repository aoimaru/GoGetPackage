[app/sources/251282938.Dockerfile]
digraph {
  "sha256:ca012536e8459aa12a0aa94b1d763825fcf378611458aabfd4ac2c8227f8a817" [label="docker-image://docker.io/vitess/base@sha256:f9b23583904123c0b07a9ee3cd94ef46f59b6b244b05d9cd177b3e911bc07b10" shape="ellipse"];
  "sha256:8cdc84074ec713b8fff19a86a980b4cfeeddf62c576dde2bc13fdd317049dcbf" [label="/bin/sh -c git clean -xdf --exclude=\"vendor\"" shape="box"];
  "sha256:af2f05d02eac56805aeeb1e5c81857da950da5778c688ea0cab68b81d3075dea" [label="/bin/sh -c mkdir /vt/releases" shape="box"];
  "sha256:4f93a831bd5183516fbd96b19983ad9bbcf4b5117ca5c98a04c607697aaaea9a" [label="sha256:4f93a831bd5183516fbd96b19983ad9bbcf4b5117ca5c98a04c607697aaaea9a" shape="plaintext"];
  "sha256:ca012536e8459aa12a0aa94b1d763825fcf378611458aabfd4ac2c8227f8a817" -> "sha256:8cdc84074ec713b8fff19a86a980b4cfeeddf62c576dde2bc13fdd317049dcbf" [label=""];
  "sha256:8cdc84074ec713b8fff19a86a980b4cfeeddf62c576dde2bc13fdd317049dcbf" -> "sha256:af2f05d02eac56805aeeb1e5c81857da950da5778c688ea0cab68b81d3075dea" [label=""];
  "sha256:af2f05d02eac56805aeeb1e5c81857da950da5778c688ea0cab68b81d3075dea" -> "sha256:4f93a831bd5183516fbd96b19983ad9bbcf4b5117ca5c98a04c607697aaaea9a" [label=""];
}

