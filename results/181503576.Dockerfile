[app/sources/181503576.Dockerfile]
digraph {
  "sha256:8887a1bb5e972dce78e12a282b59a25e669763a4cda125a4a463d30a3c90aee8" [label="docker-image://docker.io/library/erlang:19-slim" shape="ellipse"];
  "sha256:a613d37eb4025456f7ead9e3f4f3828abe6f403031cfcd4764d8d1afe907dfd0" [label="/bin/sh -c mkdir -p /var/app" shape="box"];
  "sha256:75e5e94891f2f799ef77387fc407a0be72d366434e8b128749f0bee199594b87" [label="local://context" shape="ellipse"];
  "sha256:40bdd8bf32b42b971ec38ca93a91d46506db7b00e16c5619fa01ff89ada321fc" [label="copy{src=/raffler.erl, dest=/var/app/raffler.erl}" shape="note"];
  "sha256:ad6e2e34a27515ff8fc9f78dcdfc92a3f9e8dd62a2eeaea84673e7171cc9d5a5" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:2afa243121290c879ee422058986f5f2c4e495ab0d011bc0b3dd49d3b7d0361c" [label="sha256:2afa243121290c879ee422058986f5f2c4e495ab0d011bc0b3dd49d3b7d0361c" shape="plaintext"];
  "sha256:8887a1bb5e972dce78e12a282b59a25e669763a4cda125a4a463d30a3c90aee8" -> "sha256:a613d37eb4025456f7ead9e3f4f3828abe6f403031cfcd4764d8d1afe907dfd0" [label=""];
  "sha256:a613d37eb4025456f7ead9e3f4f3828abe6f403031cfcd4764d8d1afe907dfd0" -> "sha256:40bdd8bf32b42b971ec38ca93a91d46506db7b00e16c5619fa01ff89ada321fc" [label=""];
  "sha256:75e5e94891f2f799ef77387fc407a0be72d366434e8b128749f0bee199594b87" -> "sha256:40bdd8bf32b42b971ec38ca93a91d46506db7b00e16c5619fa01ff89ada321fc" [label=""];
  "sha256:40bdd8bf32b42b971ec38ca93a91d46506db7b00e16c5619fa01ff89ada321fc" -> "sha256:ad6e2e34a27515ff8fc9f78dcdfc92a3f9e8dd62a2eeaea84673e7171cc9d5a5" [label=""];
  "sha256:ad6e2e34a27515ff8fc9f78dcdfc92a3f9e8dd62a2eeaea84673e7171cc9d5a5" -> "sha256:2afa243121290c879ee422058986f5f2c4e495ab0d011bc0b3dd49d3b7d0361c" [label=""];
}

