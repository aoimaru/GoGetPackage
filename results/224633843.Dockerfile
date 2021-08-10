[app/sources/224633843.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:b26ddc030f7dbd1c099e2d1c505b2d367e0f05f7fc1b182cb6e1247b810c5741" [label="local://context" shape="ellipse"];
  "sha256:a4a626b049faa83b8ba64a60b54c0d8852e526f6c458b3b1f5dde12a271ab196" [label="copy{src=/repositories, dest=/etc/apk/}" shape="note"];
  "sha256:4cbc3dbeb72dc17e287502e40e72236d478f5f4579d2b344e5e0abe9cc116e53" [label="/bin/sh -c rm -f /etc/localtime" shape="box"];
  "sha256:2a37d92315c2f16ee8f2ac517060d6531a8d53e7946df0ef85698852169b2966" [label="copy{src=/Shanghai, dest=/etc/localtime}" shape="note"];
  "sha256:c344576a000a4bfb4d1af3440c59786f80a2c9731f299c7a6873243908ce1e5e" [label="sha256:c344576a000a4bfb4d1af3440c59786f80a2c9731f299c7a6873243908ce1e5e" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:a4a626b049faa83b8ba64a60b54c0d8852e526f6c458b3b1f5dde12a271ab196" [label=""];
  "sha256:b26ddc030f7dbd1c099e2d1c505b2d367e0f05f7fc1b182cb6e1247b810c5741" -> "sha256:a4a626b049faa83b8ba64a60b54c0d8852e526f6c458b3b1f5dde12a271ab196" [label=""];
  "sha256:a4a626b049faa83b8ba64a60b54c0d8852e526f6c458b3b1f5dde12a271ab196" -> "sha256:4cbc3dbeb72dc17e287502e40e72236d478f5f4579d2b344e5e0abe9cc116e53" [label=""];
  "sha256:4cbc3dbeb72dc17e287502e40e72236d478f5f4579d2b344e5e0abe9cc116e53" -> "sha256:2a37d92315c2f16ee8f2ac517060d6531a8d53e7946df0ef85698852169b2966" [label=""];
  "sha256:b26ddc030f7dbd1c099e2d1c505b2d367e0f05f7fc1b182cb6e1247b810c5741" -> "sha256:2a37d92315c2f16ee8f2ac517060d6531a8d53e7946df0ef85698852169b2966" [label=""];
  "sha256:2a37d92315c2f16ee8f2ac517060d6531a8d53e7946df0ef85698852169b2966" -> "sha256:c344576a000a4bfb4d1af3440c59786f80a2c9731f299c7a6873243908ce1e5e" [label=""];
}

