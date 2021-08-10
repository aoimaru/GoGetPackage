[app/sources/483304138.Dockerfile]
digraph {
  "sha256:4e6f1b2f837d7b8b1bcd85ec745d7aedbcd8f27c6b2280a072ff7924f4bc5c9d" [label="local://context" shape="ellipse"];
  "sha256:c05324bca82f601b4dce9e4bb701738c9c64a7faee30f1e2823d5bbb72bce889" [label="docker-image://docker.io/library/buildpack-deps:xenial" shape="ellipse"];
  "sha256:7719ee22b76e5afbe13c31ff7425289f7961c8a65a221834975ce79b789e88e9" [label="/bin/bash -c mkdir -p /root/Zany80/" shape="box"];
  "sha256:60289d1daacf7aa2e4d26d396666635ff213928e63beebbdb62f7d28878c44bc" [label="copy{src=/, dest=/root/Zany80/}" shape="note"];
  "sha256:0d8100c9f58f24d994e05721d9d8c65becbcd81a4a0a7f8da5a456b04610d7ce" [label="/bin/bash -c cd /root/Zany80  && apt update  && apt install rsync cmake python3 build-essential -y  && ./tools/ensure_sdk.sh  && ./fips build" shape="box"];
  "sha256:0b9f08af2b604203fc6b5755199265858743006a5e6187cb31eae1e35b4ac235" [label="sha256:0b9f08af2b604203fc6b5755199265858743006a5e6187cb31eae1e35b4ac235" shape="plaintext"];
  "sha256:c05324bca82f601b4dce9e4bb701738c9c64a7faee30f1e2823d5bbb72bce889" -> "sha256:7719ee22b76e5afbe13c31ff7425289f7961c8a65a221834975ce79b789e88e9" [label=""];
  "sha256:7719ee22b76e5afbe13c31ff7425289f7961c8a65a221834975ce79b789e88e9" -> "sha256:60289d1daacf7aa2e4d26d396666635ff213928e63beebbdb62f7d28878c44bc" [label=""];
  "sha256:4e6f1b2f837d7b8b1bcd85ec745d7aedbcd8f27c6b2280a072ff7924f4bc5c9d" -> "sha256:60289d1daacf7aa2e4d26d396666635ff213928e63beebbdb62f7d28878c44bc" [label=""];
  "sha256:60289d1daacf7aa2e4d26d396666635ff213928e63beebbdb62f7d28878c44bc" -> "sha256:0d8100c9f58f24d994e05721d9d8c65becbcd81a4a0a7f8da5a456b04610d7ce" [label=""];
  "sha256:0d8100c9f58f24d994e05721d9d8c65becbcd81a4a0a7f8da5a456b04610d7ce" -> "sha256:0b9f08af2b604203fc6b5755199265858743006a5e6187cb31eae1e35b4ac235" [label=""];
}

