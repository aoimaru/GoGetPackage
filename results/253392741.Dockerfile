[app/sources/253392741.Dockerfile]
digraph {
  "sha256:7a02ee4837bcf1ce19d2f4041f3ee87086dc08f6115704ed700b00221dde4572" [label="docker-image://docker.io/library/mysql:8@sha256:8b928a5117cf5c2238c7a09cd28c2e801ac98f91c3f8203a8938ae51f14700fd" shape="ellipse"];
  "sha256:c3d188387d27f888ddd4a5b622077b31b8d58162d522b619ba45c491cc37d1a1" [label="local://context" shape="ellipse"];
  "sha256:594717d262bfda11929bdc643fdf139e1d5abe4c8021a4f6faca408111cb2aa6" [label="copy{src=/douban.sql, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:95c01338adc207a53e15a2518145a99922562bc50fece6f57f0b3ba27f23b027" [label="sha256:95c01338adc207a53e15a2518145a99922562bc50fece6f57f0b3ba27f23b027" shape="plaintext"];
  "sha256:7a02ee4837bcf1ce19d2f4041f3ee87086dc08f6115704ed700b00221dde4572" -> "sha256:594717d262bfda11929bdc643fdf139e1d5abe4c8021a4f6faca408111cb2aa6" [label=""];
  "sha256:c3d188387d27f888ddd4a5b622077b31b8d58162d522b619ba45c491cc37d1a1" -> "sha256:594717d262bfda11929bdc643fdf139e1d5abe4c8021a4f6faca408111cb2aa6" [label=""];
  "sha256:594717d262bfda11929bdc643fdf139e1d5abe4c8021a4f6faca408111cb2aa6" -> "sha256:95c01338adc207a53e15a2518145a99922562bc50fece6f57f0b3ba27f23b027" [label=""];
}

