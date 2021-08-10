[app/sources/392953690.Dockerfile]
digraph {
  "sha256:6fb691395fe19b187623b2e4f454f0cabc0982b72d6d231d74a341e2ae942ce2" [label="local://context" shape="ellipse"];
  "sha256:c238736a6c5e88943021148dc55953cd986ce656e8358f58666fc12e8664141c" [label="docker-image://docker.io/google/cadvisor:v0.26.1@sha256:e26667cecd359ef2b5f5aa86b279146438e4f427eea5eeffc7de8d190cf7b770" shape="ellipse"];
  "sha256:8d9e978a5be891b394c6bc0b1e9ff37a7a1b4d458ff4ea2c4bd16f16d4985fb0" [label="/bin/sh -c apk add --no-cache bash curl" shape="box"];
  "sha256:8c30fdfa9edaf8a5be8bef842bd8b1a89b9616bfe5cce45114186ef925332ab8" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:c37d952c2ee58449351cbdc88c6dff9d5b3d914d835f4ffbd98e8343088dae37" [label="/bin/sh -c chmod +x -v /entrypoint.sh" shape="box"];
  "sha256:2eda99be9e23077fc28bbba6bf30b698217bbe1e7eef18172713dcc1abb955ba" [label="sha256:2eda99be9e23077fc28bbba6bf30b698217bbe1e7eef18172713dcc1abb955ba" shape="plaintext"];
  "sha256:c238736a6c5e88943021148dc55953cd986ce656e8358f58666fc12e8664141c" -> "sha256:8d9e978a5be891b394c6bc0b1e9ff37a7a1b4d458ff4ea2c4bd16f16d4985fb0" [label=""];
  "sha256:8d9e978a5be891b394c6bc0b1e9ff37a7a1b4d458ff4ea2c4bd16f16d4985fb0" -> "sha256:8c30fdfa9edaf8a5be8bef842bd8b1a89b9616bfe5cce45114186ef925332ab8" [label=""];
  "sha256:6fb691395fe19b187623b2e4f454f0cabc0982b72d6d231d74a341e2ae942ce2" -> "sha256:8c30fdfa9edaf8a5be8bef842bd8b1a89b9616bfe5cce45114186ef925332ab8" [label=""];
  "sha256:8c30fdfa9edaf8a5be8bef842bd8b1a89b9616bfe5cce45114186ef925332ab8" -> "sha256:c37d952c2ee58449351cbdc88c6dff9d5b3d914d835f4ffbd98e8343088dae37" [label=""];
  "sha256:c37d952c2ee58449351cbdc88c6dff9d5b3d914d835f4ffbd98e8343088dae37" -> "sha256:2eda99be9e23077fc28bbba6bf30b698217bbe1e7eef18172713dcc1abb955ba" [label=""];
}

