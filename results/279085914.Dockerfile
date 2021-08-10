[app/sources/279085914.Dockerfile]
digraph {
  "sha256:c7ad96ff8a4f66f248b01ccf68465e54cb4fe8eb107a85f149a405440377a8bb" [label="docker-image://docker.io/arm32v6/alpine:3.6" shape="ellipse"];
  "sha256:bdb447b7adc10d6fc23ec50bca8a5bb2d51703c4960c4eb4e023c54509c569f3" [label="/bin/sh -c apk --no-cache add imagemagick" shape="box"];
  "sha256:c7af003ac51d885ad31f6790e8b75bd3b37b6fa3ffc386991fc438c0dcf8a180" [label="https://github.com/openfaas/faas/releases/download/0.6.0/fwatchdog-armhf" shape="ellipse"];
  "sha256:b79bc7a12f5a6f25174846e0e1b0eef63bb9168eb90b5b9dc6d0c7ee67c64122" [label="copy{src=/fwatchdog-armhf, dest=/usr/bin/fwatchdog}" shape="note"];
  "sha256:5c827067408ceb7655b8078b65554f3eb1f8571767c77f57140969d9124f293e" [label="/bin/sh -c chmod +x /usr/bin/fwatchdog" shape="box"];
  "sha256:3f11f551fc705e4d24854fcfc922176667989489ad6bc66f545b080f4903ba8b" [label="sha256:3f11f551fc705e4d24854fcfc922176667989489ad6bc66f545b080f4903ba8b" shape="plaintext"];
  "sha256:c7ad96ff8a4f66f248b01ccf68465e54cb4fe8eb107a85f149a405440377a8bb" -> "sha256:bdb447b7adc10d6fc23ec50bca8a5bb2d51703c4960c4eb4e023c54509c569f3" [label=""];
  "sha256:bdb447b7adc10d6fc23ec50bca8a5bb2d51703c4960c4eb4e023c54509c569f3" -> "sha256:b79bc7a12f5a6f25174846e0e1b0eef63bb9168eb90b5b9dc6d0c7ee67c64122" [label=""];
  "sha256:c7af003ac51d885ad31f6790e8b75bd3b37b6fa3ffc386991fc438c0dcf8a180" -> "sha256:b79bc7a12f5a6f25174846e0e1b0eef63bb9168eb90b5b9dc6d0c7ee67c64122" [label=""];
  "sha256:b79bc7a12f5a6f25174846e0e1b0eef63bb9168eb90b5b9dc6d0c7ee67c64122" -> "sha256:5c827067408ceb7655b8078b65554f3eb1f8571767c77f57140969d9124f293e" [label=""];
  "sha256:5c827067408ceb7655b8078b65554f3eb1f8571767c77f57140969d9124f293e" -> "sha256:3f11f551fc705e4d24854fcfc922176667989489ad6bc66f545b080f4903ba8b" [label=""];
}

