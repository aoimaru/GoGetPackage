[app/sources/332698646.Dockerfile]
digraph {
  "sha256:0275db76412fa14888e7d7f56c0b85d24bb481c1826f2b9638feaf911a70e19f" [label="docker-image://docker.io/confluentinc/cp-kafka-connect:5.2.1" shape="ellipse"];
  "sha256:d48f8103bbd1eb39af1e97164a99bf1d0b82a920de00091ca29fb39c98d30ccb" [label="/bin/sh -c confluent-hub install --no-prompt confluentinc/kafka-connect-mqtt:1.2.0-preview" shape="box"];
  "sha256:ce925f6ddcf4a26ecadfe7e3bb21d64c1e1c209f9bc8c336a49799b55fba46b2" [label="sha256:ce925f6ddcf4a26ecadfe7e3bb21d64c1e1c209f9bc8c336a49799b55fba46b2" shape="plaintext"];
  "sha256:0275db76412fa14888e7d7f56c0b85d24bb481c1826f2b9638feaf911a70e19f" -> "sha256:d48f8103bbd1eb39af1e97164a99bf1d0b82a920de00091ca29fb39c98d30ccb" [label=""];
  "sha256:d48f8103bbd1eb39af1e97164a99bf1d0b82a920de00091ca29fb39c98d30ccb" -> "sha256:ce925f6ddcf4a26ecadfe7e3bb21d64c1e1c209f9bc8c336a49799b55fba46b2" [label=""];
}

