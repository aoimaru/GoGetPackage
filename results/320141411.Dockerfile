[app/sources/320141411.Dockerfile]
digraph {
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:08fdedf9f4c293e6207ca86d72bbe9b4cd887e09d1486c134e5ce9a399b043cb" [label="local://context" shape="ellipse"];
  "sha256:304024fe72ac5173ee09b11acee0477c6ccac692d3e7164946bf63d154870707" [label="copy{src=/Gemfile, dest=/usr/src/app/},copy{src=/Gemfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:07b3784bb9a914a9b192f49b3f6e4ecc61b9a1e25e027a4a3be7557d33d56167" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:fd33a5c23943cbfdff89ea3fb705ff28c947192b833f6ee6e130030dd73bd051" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:6de3bda92ddfae50b2e3d8d9f2739698124362e78c4f937a1b66792672f87e1d" [label="sha256:6de3bda92ddfae50b2e3d8d9f2739698124362e78c4f937a1b66792672f87e1d" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" [label=""];
  "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" -> "sha256:304024fe72ac5173ee09b11acee0477c6ccac692d3e7164946bf63d154870707" [label=""];
  "sha256:08fdedf9f4c293e6207ca86d72bbe9b4cd887e09d1486c134e5ce9a399b043cb" -> "sha256:304024fe72ac5173ee09b11acee0477c6ccac692d3e7164946bf63d154870707" [label=""];
  "sha256:304024fe72ac5173ee09b11acee0477c6ccac692d3e7164946bf63d154870707" -> "sha256:07b3784bb9a914a9b192f49b3f6e4ecc61b9a1e25e027a4a3be7557d33d56167" [label=""];
  "sha256:07b3784bb9a914a9b192f49b3f6e4ecc61b9a1e25e027a4a3be7557d33d56167" -> "sha256:fd33a5c23943cbfdff89ea3fb705ff28c947192b833f6ee6e130030dd73bd051" [label=""];
  "sha256:08fdedf9f4c293e6207ca86d72bbe9b4cd887e09d1486c134e5ce9a399b043cb" -> "sha256:fd33a5c23943cbfdff89ea3fb705ff28c947192b833f6ee6e130030dd73bd051" [label=""];
  "sha256:fd33a5c23943cbfdff89ea3fb705ff28c947192b833f6ee6e130030dd73bd051" -> "sha256:6de3bda92ddfae50b2e3d8d9f2739698124362e78c4f937a1b66792672f87e1d" [label=""];
}

