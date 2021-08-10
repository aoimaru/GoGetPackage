[app/sources/345356726.Dockerfile]
digraph {
  "sha256:5bfcbea3ed5a5347f34de74448794d08e1444723326e919e7fdbc759d8b0b0ea" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.5-run" shape="ellipse"];
  "sha256:09ce96e41cbbc1e28123afde39eeed510b751f7d9ef0f746e399c1bb8c3728fc" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t\traspberrypi \t\traspberrypi-libs \t\traspberrypi-dev \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:98c0bee370b33743a745fd100f977ff0379bb4f66fd75140e4d5b54a55ca692c" [label="sha256:98c0bee370b33743a745fd100f977ff0379bb4f66fd75140e4d5b54a55ca692c" shape="plaintext"];
  "sha256:5bfcbea3ed5a5347f34de74448794d08e1444723326e919e7fdbc759d8b0b0ea" -> "sha256:09ce96e41cbbc1e28123afde39eeed510b751f7d9ef0f746e399c1bb8c3728fc" [label=""];
  "sha256:09ce96e41cbbc1e28123afde39eeed510b751f7d9ef0f746e399c1bb8c3728fc" -> "sha256:98c0bee370b33743a745fd100f977ff0379bb4f66fd75140e4d5b54a55ca692c" [label=""];
}

