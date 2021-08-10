[app/sources/282260317.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:b74464d2cab7dcf03fa54be022b0f16493d4dad1d57f7f89fd9f5fc2693fb99c" [label="/bin/sh -c apk add --update --no-cache bzip2 &&     wget --quiet https://github.com/restic/restic/releases/download/v0.9.3/restic_0.9.3_linux_amd64.bz2 &&     bunzip2 restic_0.9.3_linux_amd64.bz2 &&     mv restic_0.9.3_linux_amd64 /usr/bin/restic &&     chmod +x /usr/bin/restic" shape="box"];
  "sha256:0e45731889f66654e785ab15339c7f474e8e42e6c2847597f42df63652586e17" [label="local://context" shape="ellipse"];
  "sha256:938b2260dda25b63fd6392ee97659ece5430bac60eb5933ee885d459fe1a27f1" [label="copy{src=/bin/linux/amd64/ark, dest=/ark}" shape="note"];
  "sha256:73c05f1e46acd36d831d971ec7c12116a89a72bd4ec478cfebc58e7618cd1d17" [label="sha256:73c05f1e46acd36d831d971ec7c12116a89a72bd4ec478cfebc58e7618cd1d17" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label=""];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" -> "sha256:b74464d2cab7dcf03fa54be022b0f16493d4dad1d57f7f89fd9f5fc2693fb99c" [label=""];
  "sha256:b74464d2cab7dcf03fa54be022b0f16493d4dad1d57f7f89fd9f5fc2693fb99c" -> "sha256:938b2260dda25b63fd6392ee97659ece5430bac60eb5933ee885d459fe1a27f1" [label=""];
  "sha256:0e45731889f66654e785ab15339c7f474e8e42e6c2847597f42df63652586e17" -> "sha256:938b2260dda25b63fd6392ee97659ece5430bac60eb5933ee885d459fe1a27f1" [label=""];
  "sha256:938b2260dda25b63fd6392ee97659ece5430bac60eb5933ee885d459fe1a27f1" -> "sha256:73c05f1e46acd36d831d971ec7c12116a89a72bd4ec478cfebc58e7618cd1d17" [label=""];
}

