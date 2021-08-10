[app/sources/244939675.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:db115e88115d51d5acab0a4b5b740b10f1b5b04fadb8f9743423d74b52191808" [label="local://context" shape="ellipse"];
  "sha256:4f66e003bd6470154f8dba3fdc808cd732f7b1cd894c6d88b00d386f8e04f13a" [label="copy{src=/install/ubuntu_core.sh, dest=/work/}" shape="note"];
  "sha256:8cf06cc4c65a938358fc8ff59988427d7b7b9ed6c8d6c47d770df20262b9fc6d" [label="/bin/sh -c /work/ubuntu_core.sh" shape="box"];
  "sha256:cc364dc6fbe92aa0f593d34e961b36c079f06fda063d883aea676a4a11c7bfcd" [label="copy{src=/install/ubuntu_python.sh, dest=/work/}" shape="note"];
  "sha256:24146248a6ca5dde8b8d11d511274567d75e7d326fe32a40aa20218ca63a97fb" [label="/bin/sh -c /work/ubuntu_python.sh" shape="box"];
  "sha256:b395b8be689bcb3be8570239a136d7b8fec3c6752e4195762b3fd2e67ea0dffd" [label="copy{src=/install/ubuntu_npm_blc.sh, dest=/work/}" shape="note"];
  "sha256:adbbfbf7308e19da24aa19568e1df3b935bf74c7315abf608b09a2f27b8669e3" [label="/bin/sh -c /work/ubuntu_npm_blc.sh" shape="box"];
  "sha256:3bc271f9f74af51b46e38e53eb3c0e778c642c443e330e06647f6039c55a8940" [label="copy{src=/install/ubuntu_adduser.sh, dest=/work/}" shape="note"];
  "sha256:763cbc31ab6aef03ad70e9441c736095fb0b68a933bfcf751982b7f1b79feb1d" [label="/bin/sh -c /work/ubuntu_adduser.sh" shape="box"];
  "sha256:4db25ec220c0b53777a07e255b5d419578bf2bcdeaedd728b168dfc485e693e7" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:5c6ddadcb69386c1d575025832b77901fc73d7115ac2aadc2802558f23fb2c89" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:3899e103b4f5558e6408de4bcb736679fc46eddddf7f3c6ea15c39b4c825d8f4" [label="sha256:3899e103b4f5558e6408de4bcb736679fc46eddddf7f3c6ea15c39b4c825d8f4" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label=""];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" -> "sha256:4f66e003bd6470154f8dba3fdc808cd732f7b1cd894c6d88b00d386f8e04f13a" [label=""];
  "sha256:db115e88115d51d5acab0a4b5b740b10f1b5b04fadb8f9743423d74b52191808" -> "sha256:4f66e003bd6470154f8dba3fdc808cd732f7b1cd894c6d88b00d386f8e04f13a" [label=""];
  "sha256:4f66e003bd6470154f8dba3fdc808cd732f7b1cd894c6d88b00d386f8e04f13a" -> "sha256:8cf06cc4c65a938358fc8ff59988427d7b7b9ed6c8d6c47d770df20262b9fc6d" [label=""];
  "sha256:8cf06cc4c65a938358fc8ff59988427d7b7b9ed6c8d6c47d770df20262b9fc6d" -> "sha256:cc364dc6fbe92aa0f593d34e961b36c079f06fda063d883aea676a4a11c7bfcd" [label=""];
  "sha256:db115e88115d51d5acab0a4b5b740b10f1b5b04fadb8f9743423d74b52191808" -> "sha256:cc364dc6fbe92aa0f593d34e961b36c079f06fda063d883aea676a4a11c7bfcd" [label=""];
  "sha256:cc364dc6fbe92aa0f593d34e961b36c079f06fda063d883aea676a4a11c7bfcd" -> "sha256:24146248a6ca5dde8b8d11d511274567d75e7d326fe32a40aa20218ca63a97fb" [label=""];
  "sha256:24146248a6ca5dde8b8d11d511274567d75e7d326fe32a40aa20218ca63a97fb" -> "sha256:b395b8be689bcb3be8570239a136d7b8fec3c6752e4195762b3fd2e67ea0dffd" [label=""];
  "sha256:db115e88115d51d5acab0a4b5b740b10f1b5b04fadb8f9743423d74b52191808" -> "sha256:b395b8be689bcb3be8570239a136d7b8fec3c6752e4195762b3fd2e67ea0dffd" [label=""];
  "sha256:b395b8be689bcb3be8570239a136d7b8fec3c6752e4195762b3fd2e67ea0dffd" -> "sha256:adbbfbf7308e19da24aa19568e1df3b935bf74c7315abf608b09a2f27b8669e3" [label=""];
  "sha256:adbbfbf7308e19da24aa19568e1df3b935bf74c7315abf608b09a2f27b8669e3" -> "sha256:3bc271f9f74af51b46e38e53eb3c0e778c642c443e330e06647f6039c55a8940" [label=""];
  "sha256:db115e88115d51d5acab0a4b5b740b10f1b5b04fadb8f9743423d74b52191808" -> "sha256:3bc271f9f74af51b46e38e53eb3c0e778c642c443e330e06647f6039c55a8940" [label=""];
  "sha256:3bc271f9f74af51b46e38e53eb3c0e778c642c443e330e06647f6039c55a8940" -> "sha256:763cbc31ab6aef03ad70e9441c736095fb0b68a933bfcf751982b7f1b79feb1d" [label=""];
  "sha256:763cbc31ab6aef03ad70e9441c736095fb0b68a933bfcf751982b7f1b79feb1d" -> "sha256:4db25ec220c0b53777a07e255b5d419578bf2bcdeaedd728b168dfc485e693e7" [label=""];
  "sha256:db115e88115d51d5acab0a4b5b740b10f1b5b04fadb8f9743423d74b52191808" -> "sha256:4db25ec220c0b53777a07e255b5d419578bf2bcdeaedd728b168dfc485e693e7" [label=""];
  "sha256:4db25ec220c0b53777a07e255b5d419578bf2bcdeaedd728b168dfc485e693e7" -> "sha256:5c6ddadcb69386c1d575025832b77901fc73d7115ac2aadc2802558f23fb2c89" [label=""];
  "sha256:5c6ddadcb69386c1d575025832b77901fc73d7115ac2aadc2802558f23fb2c89" -> "sha256:3899e103b4f5558e6408de4bcb736679fc46eddddf7f3c6ea15c39b4c825d8f4" [label=""];
}

