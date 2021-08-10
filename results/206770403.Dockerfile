[app/sources/206770403.Dockerfile]
digraph {
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:c205db84aeb3aa5fb1ca6ea2cc0be7fc32775c5d6484dcd0ca6731e14021c074" [label="/bin/sh -c apt-get update     && apt-get install -y         curl         openssh-server         python-crypto         python-flask     && systemctl enable ssh" shape="box"];
  "sha256:f555f02c61034bba4689deecfa64bbd9783341c5fefecd9dcccb5e59ee0463e0" [label="local://context" shape="ellipse"];
  "sha256:441297f933614e38b9de90cc3087662a5fdfe98ee59cf33f3fa4af4d42ba7e75" [label="copy{src=/config/sshd_config, dest=/etc/ssh/}" shape="note"];
  "sha256:a4dc027904431b1cf80033d791c8b85d23304101ab6649252a16e05c2d70d71b" [label="copy{src=/scripts, dest=/}" shape="note"];
  "sha256:2e9a83b9d8efff08dad65c9e57ffffbcaf9efffef3a6268ea8d86c3a187f38af" [label="copy{src=/onetime-keypairs/*.service, dest=/etc/systemd/system/}" shape="note"];
  "sha256:5e2da9c14c13705145527f486169d4383b5178a067acf5c249d2be465fcff7fb" [label="copy{src=/onetime-keypairs/*.py, dest=/opt/}" shape="note"];
  "sha256:cf3cd912570d7251b62cbf44162688b76e8270fabb4db2b094db581814be0b33" [label="/bin/sh -c systemctl enable keypair-server-config.service     && systemctl enable keypair-server.service" shape="box"];
  "sha256:ad520300bbe960f618358a304b5777c461f2cc0ae5637628ed6fa576c647249f" [label="sha256:ad520300bbe960f618358a304b5777c461f2cc0ae5637628ed6fa576c647249f" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:c205db84aeb3aa5fb1ca6ea2cc0be7fc32775c5d6484dcd0ca6731e14021c074" [label=""];
  "sha256:c205db84aeb3aa5fb1ca6ea2cc0be7fc32775c5d6484dcd0ca6731e14021c074" -> "sha256:441297f933614e38b9de90cc3087662a5fdfe98ee59cf33f3fa4af4d42ba7e75" [label=""];
  "sha256:f555f02c61034bba4689deecfa64bbd9783341c5fefecd9dcccb5e59ee0463e0" -> "sha256:441297f933614e38b9de90cc3087662a5fdfe98ee59cf33f3fa4af4d42ba7e75" [label=""];
  "sha256:441297f933614e38b9de90cc3087662a5fdfe98ee59cf33f3fa4af4d42ba7e75" -> "sha256:a4dc027904431b1cf80033d791c8b85d23304101ab6649252a16e05c2d70d71b" [label=""];
  "sha256:f555f02c61034bba4689deecfa64bbd9783341c5fefecd9dcccb5e59ee0463e0" -> "sha256:a4dc027904431b1cf80033d791c8b85d23304101ab6649252a16e05c2d70d71b" [label=""];
  "sha256:a4dc027904431b1cf80033d791c8b85d23304101ab6649252a16e05c2d70d71b" -> "sha256:2e9a83b9d8efff08dad65c9e57ffffbcaf9efffef3a6268ea8d86c3a187f38af" [label=""];
  "sha256:f555f02c61034bba4689deecfa64bbd9783341c5fefecd9dcccb5e59ee0463e0" -> "sha256:2e9a83b9d8efff08dad65c9e57ffffbcaf9efffef3a6268ea8d86c3a187f38af" [label=""];
  "sha256:2e9a83b9d8efff08dad65c9e57ffffbcaf9efffef3a6268ea8d86c3a187f38af" -> "sha256:5e2da9c14c13705145527f486169d4383b5178a067acf5c249d2be465fcff7fb" [label=""];
  "sha256:f555f02c61034bba4689deecfa64bbd9783341c5fefecd9dcccb5e59ee0463e0" -> "sha256:5e2da9c14c13705145527f486169d4383b5178a067acf5c249d2be465fcff7fb" [label=""];
  "sha256:5e2da9c14c13705145527f486169d4383b5178a067acf5c249d2be465fcff7fb" -> "sha256:cf3cd912570d7251b62cbf44162688b76e8270fabb4db2b094db581814be0b33" [label=""];
  "sha256:cf3cd912570d7251b62cbf44162688b76e8270fabb4db2b094db581814be0b33" -> "sha256:ad520300bbe960f618358a304b5777c461f2cc0ae5637628ed6fa576c647249f" [label=""];
}

