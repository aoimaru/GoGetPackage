[app/sources/152822799.Dockerfile]
digraph {
  "sha256:090fca73a74ab37500943b8d14d31d7c88de0348713eac77140427e16220cb2a" [label="docker-image://docker.io/tianon/debian:jessie" shape="ellipse"];
  "sha256:ffec68645221a84db8b82ecd4a435d7ded82528e81107c9914f3b9341025b7a1" [label="/bin/sh -c apt-get update && apt-get install -y git golang build-essential" shape="box"];
  "sha256:e86cc6e33caa066e6195ca97199e9ccd7914d867d5278f1d398b11d30ef51ce1" [label="/bin/sh -c mkdir /go" shape="box"];
  "sha256:f4505c08c84e8a82ce833800a6a3c087dde3d95fe317bc32d989393cbd44ccb5" [label="/bin/sh -c go get github.com/stevenleeg/gobb/gobb" shape="box"];
  "sha256:774d6bc8a08c1b5912263858e10609de91bd857b23020569b9803913f63128ba" [label="sha256:774d6bc8a08c1b5912263858e10609de91bd857b23020569b9803913f63128ba" shape="plaintext"];
  "sha256:090fca73a74ab37500943b8d14d31d7c88de0348713eac77140427e16220cb2a" -> "sha256:ffec68645221a84db8b82ecd4a435d7ded82528e81107c9914f3b9341025b7a1" [label=""];
  "sha256:ffec68645221a84db8b82ecd4a435d7ded82528e81107c9914f3b9341025b7a1" -> "sha256:e86cc6e33caa066e6195ca97199e9ccd7914d867d5278f1d398b11d30ef51ce1" [label=""];
  "sha256:e86cc6e33caa066e6195ca97199e9ccd7914d867d5278f1d398b11d30ef51ce1" -> "sha256:f4505c08c84e8a82ce833800a6a3c087dde3d95fe317bc32d989393cbd44ccb5" [label=""];
  "sha256:f4505c08c84e8a82ce833800a6a3c087dde3d95fe317bc32d989393cbd44ccb5" -> "sha256:774d6bc8a08c1b5912263858e10609de91bd857b23020569b9803913f63128ba" [label=""];
}

