[app/sources/209808001.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:2b0e3ca66cd476f29e96d1c7ec5bed334bf9b8ac3a4a6d0dba877272f28d46fa" [label="mkdir{path=/go/src/github.com/camptocamp/bivac}" shape="note"];
  "sha256:497577854ab01c25963ba5f0dd5b887e340f26a1efaf73b19dc2c4d2f3c6328c" [label="local://context" shape="ellipse"];
  "sha256:059f381ec9484c3c965036689b654f514f845a90700cecd593b95adcaf49f255" [label="copy{src=/, dest=/go/src/github.com/camptocamp/bivac/}" shape="note"];
  "sha256:2caa0f0473dfbb1baaa99b3e9491a854398bad231c1681bff899acd642344ecc" [label="/bin/sh -c make bivac" shape="box"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:039cc2040733dc9c4007f0596a74fb93f9af17e6ac2fad583ec659ac3cbceb74" [label="/bin/sh -c apt-get update &&     apt-get install -y openssh-client procps && \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e8c363069e3f502d5904ea7eef7bad75587aabe3a9e3d0c390a21d39f8db2b79" [label="copy{src=/etc/ssl, dest=/etc/ssl}" shape="note"];
  "sha256:8795004ff4e96d803909ac6a984c1d9b697d558e77f2508152ce4bb1fe98c7df" [label="copy{src=/go/src/github.com/camptocamp/bivac/bivac, dest=/bin/}" shape="note"];
  "sha256:78a0b981d32a112c738427ae77f0c3ffe8bd6c0b538aa3ff3baba81807010f82" [label="copy{src=/go/src/github.com/camptocamp/bivac/providers-config.default.toml, dest=/}" shape="note"];
  "sha256:f775b54c131a5c8ad7015cd76726a94db09d42d10c4580a5c0d22941e16606aa" [label="docker-image://docker.io/restic/restic:latest" shape="ellipse"];
  "sha256:ba26635b83ca43dfdc66f359eb6e8a5f0864ab86811e7392de65b4c8d74abb04" [label="copy{src=/usr/bin/restic, dest=/bin/restic}" shape="note"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:27be4da8c3ef594885dcf95a1a121df1d414787ab66db3be5ae465d1df42e714" [label="/bin/sh -c wget https://downloads.rclone.org/rclone-current-linux-amd64.zip" shape="box"];
  "sha256:e7633f74cfdef911852d82aa605852a06300387c7e38e935e12b74b9682576df" [label="/bin/sh -c unzip rclone-current-linux-amd64.zip" shape="box"];
  "sha256:4c65f8021a1b7834c1964f781f1800f329aa8e7ff58818cb9c056187ee402b8b" [label="/bin/sh -c cp rclone-*-linux-amd64/rclone /usr/bin/" shape="box"];
  "sha256:7e1f414347033a73ee0988a56f504321fdc6bc81ac7dca652ebf0a6ce61c51ff" [label="/bin/sh -c chown root:root /usr/bin/rclone" shape="box"];
  "sha256:62746a44895182540b4a755da1ee7776e26be83b57113d748e03f5214b21313a" [label="/bin/sh -c chmod 755 /usr/bin/rclone" shape="box"];
  "sha256:898d7086a48ba9448ffd4c580e3d61913c6b53e48a71ce44f629d60d80592da3" [label="copy{src=/usr/bin/rclone, dest=/bin/rclone}" shape="note"];
  "sha256:5c4831748129abbf5217d9f3cc34f5ec8f1123d875d04dd9918150537f6f97f8" [label="sha256:5c4831748129abbf5217d9f3cc34f5ec8f1123d875d04dd9918150537f6f97f8" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:2b0e3ca66cd476f29e96d1c7ec5bed334bf9b8ac3a4a6d0dba877272f28d46fa" [label=""];
  "sha256:2b0e3ca66cd476f29e96d1c7ec5bed334bf9b8ac3a4a6d0dba877272f28d46fa" -> "sha256:059f381ec9484c3c965036689b654f514f845a90700cecd593b95adcaf49f255" [label=""];
  "sha256:497577854ab01c25963ba5f0dd5b887e340f26a1efaf73b19dc2c4d2f3c6328c" -> "sha256:059f381ec9484c3c965036689b654f514f845a90700cecd593b95adcaf49f255" [label=""];
  "sha256:059f381ec9484c3c965036689b654f514f845a90700cecd593b95adcaf49f255" -> "sha256:2caa0f0473dfbb1baaa99b3e9491a854398bad231c1681bff899acd642344ecc" [label=""];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:039cc2040733dc9c4007f0596a74fb93f9af17e6ac2fad583ec659ac3cbceb74" [label=""];
  "sha256:039cc2040733dc9c4007f0596a74fb93f9af17e6ac2fad583ec659ac3cbceb74" -> "sha256:e8c363069e3f502d5904ea7eef7bad75587aabe3a9e3d0c390a21d39f8db2b79" [label=""];
  "sha256:2caa0f0473dfbb1baaa99b3e9491a854398bad231c1681bff899acd642344ecc" -> "sha256:e8c363069e3f502d5904ea7eef7bad75587aabe3a9e3d0c390a21d39f8db2b79" [label=""];
  "sha256:e8c363069e3f502d5904ea7eef7bad75587aabe3a9e3d0c390a21d39f8db2b79" -> "sha256:8795004ff4e96d803909ac6a984c1d9b697d558e77f2508152ce4bb1fe98c7df" [label=""];
  "sha256:2caa0f0473dfbb1baaa99b3e9491a854398bad231c1681bff899acd642344ecc" -> "sha256:8795004ff4e96d803909ac6a984c1d9b697d558e77f2508152ce4bb1fe98c7df" [label=""];
  "sha256:8795004ff4e96d803909ac6a984c1d9b697d558e77f2508152ce4bb1fe98c7df" -> "sha256:78a0b981d32a112c738427ae77f0c3ffe8bd6c0b538aa3ff3baba81807010f82" [label=""];
  "sha256:2caa0f0473dfbb1baaa99b3e9491a854398bad231c1681bff899acd642344ecc" -> "sha256:78a0b981d32a112c738427ae77f0c3ffe8bd6c0b538aa3ff3baba81807010f82" [label=""];
  "sha256:78a0b981d32a112c738427ae77f0c3ffe8bd6c0b538aa3ff3baba81807010f82" -> "sha256:ba26635b83ca43dfdc66f359eb6e8a5f0864ab86811e7392de65b4c8d74abb04" [label=""];
  "sha256:f775b54c131a5c8ad7015cd76726a94db09d42d10c4580a5c0d22941e16606aa" -> "sha256:ba26635b83ca43dfdc66f359eb6e8a5f0864ab86811e7392de65b4c8d74abb04" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:27be4da8c3ef594885dcf95a1a121df1d414787ab66db3be5ae465d1df42e714" [label=""];
  "sha256:27be4da8c3ef594885dcf95a1a121df1d414787ab66db3be5ae465d1df42e714" -> "sha256:e7633f74cfdef911852d82aa605852a06300387c7e38e935e12b74b9682576df" [label=""];
  "sha256:e7633f74cfdef911852d82aa605852a06300387c7e38e935e12b74b9682576df" -> "sha256:4c65f8021a1b7834c1964f781f1800f329aa8e7ff58818cb9c056187ee402b8b" [label=""];
  "sha256:4c65f8021a1b7834c1964f781f1800f329aa8e7ff58818cb9c056187ee402b8b" -> "sha256:7e1f414347033a73ee0988a56f504321fdc6bc81ac7dca652ebf0a6ce61c51ff" [label=""];
  "sha256:7e1f414347033a73ee0988a56f504321fdc6bc81ac7dca652ebf0a6ce61c51ff" -> "sha256:62746a44895182540b4a755da1ee7776e26be83b57113d748e03f5214b21313a" [label=""];
  "sha256:ba26635b83ca43dfdc66f359eb6e8a5f0864ab86811e7392de65b4c8d74abb04" -> "sha256:898d7086a48ba9448ffd4c580e3d61913c6b53e48a71ce44f629d60d80592da3" [label=""];
  "sha256:62746a44895182540b4a755da1ee7776e26be83b57113d748e03f5214b21313a" -> "sha256:898d7086a48ba9448ffd4c580e3d61913c6b53e48a71ce44f629d60d80592da3" [label=""];
  "sha256:898d7086a48ba9448ffd4c580e3d61913c6b53e48a71ce44f629d60d80592da3" -> "sha256:5c4831748129abbf5217d9f3cc34f5ec8f1123d875d04dd9918150537f6f97f8" [label=""];
}

