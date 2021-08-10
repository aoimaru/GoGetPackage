[app/sources/246604463.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:3da1922a3201d379575d6232dc51e81fcd37dc73a067423c14b063091c567f6e" [label="local://context" shape="ellipse"];
  "sha256:4ba3340380011fb56d98d7d7a0e9b961032ef84b093dc3f24de7afa826ab00b6" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:4f1a634ce2abd4b488b2b750d0ca646c8531e19359af465dd042ba6fe311e667" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:cbdbf6a5747f98cf387d22194f9db1c766b75621837e677573b57c91b780f409" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:f28f3043f8676c868c90e290bdf846750f23b2ef52e96e88d06fab7e70da959b" [label="sha256:f28f3043f8676c868c90e290bdf846750f23b2ef52e96e88d06fab7e70da959b" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:4ba3340380011fb56d98d7d7a0e9b961032ef84b093dc3f24de7afa826ab00b6" [label=""];
  "sha256:3da1922a3201d379575d6232dc51e81fcd37dc73a067423c14b063091c567f6e" -> "sha256:4ba3340380011fb56d98d7d7a0e9b961032ef84b093dc3f24de7afa826ab00b6" [label=""];
  "sha256:4ba3340380011fb56d98d7d7a0e9b961032ef84b093dc3f24de7afa826ab00b6" -> "sha256:4f1a634ce2abd4b488b2b750d0ca646c8531e19359af465dd042ba6fe311e667" [label=""];
  "sha256:4f1a634ce2abd4b488b2b750d0ca646c8531e19359af465dd042ba6fe311e667" -> "sha256:cbdbf6a5747f98cf387d22194f9db1c766b75621837e677573b57c91b780f409" [label=""];
  "sha256:cbdbf6a5747f98cf387d22194f9db1c766b75621837e677573b57c91b780f409" -> "sha256:f28f3043f8676c868c90e290bdf846750f23b2ef52e96e88d06fab7e70da959b" [label=""];
}

