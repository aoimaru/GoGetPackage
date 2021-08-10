[app/sources/232755696.Dockerfile]
digraph {
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" [label="docker-image://docker.io/library/node:0.12" shape="ellipse"];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label="/bin/sh -c mkdir app" shape="box"];
  "sha256:c24b5b8a53f5054891b50879f65dab95e406192365f2830d069cbb1a5a93ea27" [label="local://context" shape="ellipse"];
  "sha256:df0adf1fa16ab857a43326befeeb6e2c694642827bc1e10f2a33302cf3451a28" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d6461970963c30e1ec2cc70d6f76c308f8ad081939a0b5d3b44a8c674aabe2b1" [label="mkdir{path=/app}" shape="note"];
  "sha256:0fa855fbb34b7f8c5999d21645965aceca1761084ee25937d158486de766a224" [label="/bin/sh -c npm install" shape="box"];
  "sha256:5049b0a603caf501beb705cfa0d588840f22c053982f96ad813c42dc369c8f80" [label="/bin/sh -c npm install webpack@\"1.7\"" shape="box"];
  "sha256:22b429ddae45609be165b7d185a941274d27b83cd123bf5e4219899dedf2f1a8" [label="sha256:22b429ddae45609be165b7d185a941274d27b83cd123bf5e4219899dedf2f1a8" shape="plaintext"];
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" -> "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label=""];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" -> "sha256:df0adf1fa16ab857a43326befeeb6e2c694642827bc1e10f2a33302cf3451a28" [label=""];
  "sha256:c24b5b8a53f5054891b50879f65dab95e406192365f2830d069cbb1a5a93ea27" -> "sha256:df0adf1fa16ab857a43326befeeb6e2c694642827bc1e10f2a33302cf3451a28" [label=""];
  "sha256:df0adf1fa16ab857a43326befeeb6e2c694642827bc1e10f2a33302cf3451a28" -> "sha256:d6461970963c30e1ec2cc70d6f76c308f8ad081939a0b5d3b44a8c674aabe2b1" [label=""];
  "sha256:d6461970963c30e1ec2cc70d6f76c308f8ad081939a0b5d3b44a8c674aabe2b1" -> "sha256:0fa855fbb34b7f8c5999d21645965aceca1761084ee25937d158486de766a224" [label=""];
  "sha256:0fa855fbb34b7f8c5999d21645965aceca1761084ee25937d158486de766a224" -> "sha256:5049b0a603caf501beb705cfa0d588840f22c053982f96ad813c42dc369c8f80" [label=""];
  "sha256:5049b0a603caf501beb705cfa0d588840f22c053982f96ad813c42dc369c8f80" -> "sha256:22b429ddae45609be165b7d185a941274d27b83cd123bf5e4219899dedf2f1a8" [label=""];
}

