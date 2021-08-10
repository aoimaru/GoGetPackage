[app/sources/252775314.Dockerfile]
digraph {
  "sha256:59bffc84ddde3733b2c3df8b6fb8f96b6c60aa514a1b6ac2fbd0b4f6bc08d52d" [label="docker-image://docker.io/beevelop/base:latest" shape="ellipse"];
  "sha256:05dc445dae9034b689f894c3a4ec3055a50d44975b8f7c8796fdf0518bca9016" [label="/bin/sh -c echo Nothing to see here" shape="box"];
  "sha256:c654647409b0bf56af97c4639b38fac98270965645582f349f7951ff551f966a" [label="sha256:c654647409b0bf56af97c4639b38fac98270965645582f349f7951ff551f966a" shape="plaintext"];
  "sha256:59bffc84ddde3733b2c3df8b6fb8f96b6c60aa514a1b6ac2fbd0b4f6bc08d52d" -> "sha256:05dc445dae9034b689f894c3a4ec3055a50d44975b8f7c8796fdf0518bca9016" [label=""];
  "sha256:05dc445dae9034b689f894c3a4ec3055a50d44975b8f7c8796fdf0518bca9016" -> "sha256:c654647409b0bf56af97c4639b38fac98270965645582f349f7951ff551f966a" [label=""];
}

