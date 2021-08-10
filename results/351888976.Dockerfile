[app/sources/351888976.Dockerfile]
digraph {
  "sha256:5d09ad3c45edbec33c4a0a7b721c46e4a5221e25b35b8598f5071d3deeaadc85" [label="docker-image://docker.io/reo7sp/tgbot-cpp:latest" shape="ellipse"];
  "sha256:02a96065c375860a0c25cf02cfe53481b7bb9da80a9a3800ce647d89b3f098e8" [label="mkdir{path=/usr/src/photo}" shape="note"];
  "sha256:1052ffca116868ed581d062ff932e965ac326d99e3fe1935e2614d5901c61952" [label="local://context" shape="ellipse"];
  "sha256:fbb29dc825a90dc1545e13e512bc3169fbbdf90ceb136f5337d5f891661a1de8" [label="copy{src=/, dest=/usr/src/photo/}" shape="note"];
  "sha256:058012422e23b0170b2d3ce8765b7658c0ab11fdf5005f9908db02d04eac5f8a" [label="/bin/sh -c cmake ." shape="box"];
  "sha256:8852adc4712bba4e9d736a5358e73ffdad05dbe8902c50ead3ac75fdba81d11a" [label="/bin/sh -c make -j4" shape="box"];
  "sha256:4d749afaa7004a369247ded9012fb8fe6fbb0a920c55cc6f6f1bca51d3242e77" [label="sha256:4d749afaa7004a369247ded9012fb8fe6fbb0a920c55cc6f6f1bca51d3242e77" shape="plaintext"];
  "sha256:5d09ad3c45edbec33c4a0a7b721c46e4a5221e25b35b8598f5071d3deeaadc85" -> "sha256:02a96065c375860a0c25cf02cfe53481b7bb9da80a9a3800ce647d89b3f098e8" [label=""];
  "sha256:02a96065c375860a0c25cf02cfe53481b7bb9da80a9a3800ce647d89b3f098e8" -> "sha256:fbb29dc825a90dc1545e13e512bc3169fbbdf90ceb136f5337d5f891661a1de8" [label=""];
  "sha256:1052ffca116868ed581d062ff932e965ac326d99e3fe1935e2614d5901c61952" -> "sha256:fbb29dc825a90dc1545e13e512bc3169fbbdf90ceb136f5337d5f891661a1de8" [label=""];
  "sha256:fbb29dc825a90dc1545e13e512bc3169fbbdf90ceb136f5337d5f891661a1de8" -> "sha256:058012422e23b0170b2d3ce8765b7658c0ab11fdf5005f9908db02d04eac5f8a" [label=""];
  "sha256:058012422e23b0170b2d3ce8765b7658c0ab11fdf5005f9908db02d04eac5f8a" -> "sha256:8852adc4712bba4e9d736a5358e73ffdad05dbe8902c50ead3ac75fdba81d11a" [label=""];
  "sha256:8852adc4712bba4e9d736a5358e73ffdad05dbe8902c50ead3ac75fdba81d11a" -> "sha256:4d749afaa7004a369247ded9012fb8fe6fbb0a920c55cc6f6f1bca51d3242e77" [label=""];
}

