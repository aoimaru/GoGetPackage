[app/sources/421891242.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:6fbc7a2d79fe5e49e58c1d0b8711e9d066c7f172b8065ac9337cb8cf4e150959" [label="mkdir{path=/calert}" shape="note"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:1f241459b2f4021363e153430903295ccc96e60fd64fb73b7636b796183641bd" [label="/bin/sh -c apk update && apk add gcc libc-dev make git" shape="box"];
  "sha256:8a3404958f41abb728f20c5258dab2ff1f5feea3e4ebe223c9e6c4ca530bfbcb" [label="mkdir{path=/calert}" shape="note"];
  "sha256:0340d98353b4ae0dec78ce43858125b2102da78a2225a208b0d388670f25d594" [label="local://context" shape="ellipse"];
  "sha256:e2f0256dbaba9c52d43469d6972064f9007d4471f29aec04040f56d10185e0fd" [label="copy{src=/, dest=/calert/}" shape="note"];
  "sha256:07ee4abd756352ccf336c66ffd6fde55b2d8d3566e9abc16e34e47291a3dbb39" [label="/bin/sh -c make build" shape="box"];
  "sha256:0d00acbdf33c4b4435ad23881ca6d34b5394d23228a87bffa1ca38d86c30fdc1" [label="copy{src=/calert, dest=/calert/}" shape="note"];
  "sha256:9ae9be71c3f316e3044cdec4fdfe65f54c086f517dfe220fd881b163a81ccb04" [label="/bin/sh -c mkdir -p /etc/calert && cp config.toml.sample /etc/calert/config.toml" shape="box"];
  "sha256:dbe5c354ddc5b8abe616af43cff7d740c755be9a0a4baeae92822adb170a485f" [label="sha256:dbe5c354ddc5b8abe616af43cff7d740c755be9a0a4baeae92822adb170a485f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:6fbc7a2d79fe5e49e58c1d0b8711e9d066c7f172b8065ac9337cb8cf4e150959" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:1f241459b2f4021363e153430903295ccc96e60fd64fb73b7636b796183641bd" [label=""];
  "sha256:1f241459b2f4021363e153430903295ccc96e60fd64fb73b7636b796183641bd" -> "sha256:8a3404958f41abb728f20c5258dab2ff1f5feea3e4ebe223c9e6c4ca530bfbcb" [label=""];
  "sha256:8a3404958f41abb728f20c5258dab2ff1f5feea3e4ebe223c9e6c4ca530bfbcb" -> "sha256:e2f0256dbaba9c52d43469d6972064f9007d4471f29aec04040f56d10185e0fd" [label=""];
  "sha256:0340d98353b4ae0dec78ce43858125b2102da78a2225a208b0d388670f25d594" -> "sha256:e2f0256dbaba9c52d43469d6972064f9007d4471f29aec04040f56d10185e0fd" [label=""];
  "sha256:e2f0256dbaba9c52d43469d6972064f9007d4471f29aec04040f56d10185e0fd" -> "sha256:07ee4abd756352ccf336c66ffd6fde55b2d8d3566e9abc16e34e47291a3dbb39" [label=""];
  "sha256:6fbc7a2d79fe5e49e58c1d0b8711e9d066c7f172b8065ac9337cb8cf4e150959" -> "sha256:0d00acbdf33c4b4435ad23881ca6d34b5394d23228a87bffa1ca38d86c30fdc1" [label=""];
  "sha256:07ee4abd756352ccf336c66ffd6fde55b2d8d3566e9abc16e34e47291a3dbb39" -> "sha256:0d00acbdf33c4b4435ad23881ca6d34b5394d23228a87bffa1ca38d86c30fdc1" [label=""];
  "sha256:0d00acbdf33c4b4435ad23881ca6d34b5394d23228a87bffa1ca38d86c30fdc1" -> "sha256:9ae9be71c3f316e3044cdec4fdfe65f54c086f517dfe220fd881b163a81ccb04" [label=""];
  "sha256:9ae9be71c3f316e3044cdec4fdfe65f54c086f517dfe220fd881b163a81ccb04" -> "sha256:dbe5c354ddc5b8abe616af43cff7d740c755be9a0a4baeae92822adb170a485f" [label=""];
}

