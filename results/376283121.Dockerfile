[app/sources/376283121.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:37550a7ae2deada98682d4510cc63d08b450864003bdbf72c1c62aeb1c0a93d5" [label="local://context" shape="ellipse"];
  "sha256:a647b866cead139f6145ae6f59f47e3dc4207a3c695ff3362c3f4ceff200480c" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:25f99a3fc30e2e7092b1ede68f4a4f4b8dd0e513701bc90cca40154b1c442b1b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:c17d5d14fdf4d63fe8230b37f7b846f351809aa6ecbbdb490f432f9c782178c0" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:da38aefe3442f49903b6ccd310a8ec0c01f6a23c2a0f4c3e5f469639f1d8fe2c" [label="sha256:da38aefe3442f49903b6ccd310a8ec0c01f6a23c2a0f4c3e5f469639f1d8fe2c" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:a647b866cead139f6145ae6f59f47e3dc4207a3c695ff3362c3f4ceff200480c" [label=""];
  "sha256:37550a7ae2deada98682d4510cc63d08b450864003bdbf72c1c62aeb1c0a93d5" -> "sha256:a647b866cead139f6145ae6f59f47e3dc4207a3c695ff3362c3f4ceff200480c" [label=""];
  "sha256:a647b866cead139f6145ae6f59f47e3dc4207a3c695ff3362c3f4ceff200480c" -> "sha256:25f99a3fc30e2e7092b1ede68f4a4f4b8dd0e513701bc90cca40154b1c442b1b" [label=""];
  "sha256:25f99a3fc30e2e7092b1ede68f4a4f4b8dd0e513701bc90cca40154b1c442b1b" -> "sha256:c17d5d14fdf4d63fe8230b37f7b846f351809aa6ecbbdb490f432f9c782178c0" [label=""];
  "sha256:c17d5d14fdf4d63fe8230b37f7b846f351809aa6ecbbdb490f432f9c782178c0" -> "sha256:da38aefe3442f49903b6ccd310a8ec0c01f6a23c2a0f4c3e5f469639f1d8fe2c" [label=""];
}

