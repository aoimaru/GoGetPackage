[app/sources/313446202.Dockerfile]
digraph {
  "sha256:8beef5c2f8848e0acf17da31523f66b2c418eefc60fda856b52c3ac3580d3d68" [label="docker-image://docker.io/library/ubuntu:latest@sha256:82becede498899ec668628e7cb0ad87b6e1c371cb8a1e597d83a47fac21d6af3" shape="ellipse"];
  "sha256:9d11baa55ceba9d70b5daf63eae35063ce4b1110bd1de44f2e62231f32ee4db3" [label="/bin/sh -c apt-get update && apt-get install --yes wajig" shape="box"];
  "sha256:29ff7a94b2fefba193e6c7990460d8bc64aeea477d567d12506b16e16d477ffe" [label="/bin/sh -c wajig install --yes xterm" shape="box"];
  "sha256:1780e8ce522897265820ec935dc98968e8f2e70948f28a879ead6a24982bf4f1" [label="/bin/sh -c wajig install --yes python3-pip python3-requests python3-yaml" shape="box"];
  "sha256:7793061fb3056391cf9bda0eb5561c4afb4c1901b75645ac3b557a2cf62df5a1" [label="/bin/sh -c wajig install --yes r-recommended" shape="box"];
  "sha256:7ce1a20ce8ab4e0457c9898078b5271a02a75a9ee705eb9a1c09a1216e2b4bad" [label="/bin/sh -c pip3 install mlhub" shape="box"];
  "sha256:c585830f1df354c5cbc6a5f454c8279288410072844cc09f69f7a0eb6cfeeab7" [label="sha256:c585830f1df354c5cbc6a5f454c8279288410072844cc09f69f7a0eb6cfeeab7" shape="plaintext"];
  "sha256:8beef5c2f8848e0acf17da31523f66b2c418eefc60fda856b52c3ac3580d3d68" -> "sha256:9d11baa55ceba9d70b5daf63eae35063ce4b1110bd1de44f2e62231f32ee4db3" [label=""];
  "sha256:9d11baa55ceba9d70b5daf63eae35063ce4b1110bd1de44f2e62231f32ee4db3" -> "sha256:29ff7a94b2fefba193e6c7990460d8bc64aeea477d567d12506b16e16d477ffe" [label=""];
  "sha256:29ff7a94b2fefba193e6c7990460d8bc64aeea477d567d12506b16e16d477ffe" -> "sha256:1780e8ce522897265820ec935dc98968e8f2e70948f28a879ead6a24982bf4f1" [label=""];
  "sha256:1780e8ce522897265820ec935dc98968e8f2e70948f28a879ead6a24982bf4f1" -> "sha256:7793061fb3056391cf9bda0eb5561c4afb4c1901b75645ac3b557a2cf62df5a1" [label=""];
  "sha256:7793061fb3056391cf9bda0eb5561c4afb4c1901b75645ac3b557a2cf62df5a1" -> "sha256:7ce1a20ce8ab4e0457c9898078b5271a02a75a9ee705eb9a1c09a1216e2b4bad" [label=""];
  "sha256:7ce1a20ce8ab4e0457c9898078b5271a02a75a9ee705eb9a1c09a1216e2b4bad" -> "sha256:c585830f1df354c5cbc6a5f454c8279288410072844cc09f69f7a0eb6cfeeab7" [label=""];
}

