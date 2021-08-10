[app/sources/255727118.Dockerfile]
digraph {
  "sha256:35078cd941f691e00c04bb3a9048250b9efa392f2d92b9b41260be33d88df141" [label="local://context" shape="ellipse"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:d761ab6bf7c6340769980576eb626380b1f8472152a9427418cb62725136eade" [label="copy{src=/dist/linux/amd64/dockerfy, dest=/usr/local/bin/dockerfy}" shape="note"];
  "sha256:c264a7f0eda89b1830f25916c9beee224efe671f8bb1f6684a78b928e84eabe8" [label="sha256:c264a7f0eda89b1830f25916c9beee224efe671f8bb1f6684a78b928e84eabe8" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:d761ab6bf7c6340769980576eb626380b1f8472152a9427418cb62725136eade" [label=""];
  "sha256:35078cd941f691e00c04bb3a9048250b9efa392f2d92b9b41260be33d88df141" -> "sha256:d761ab6bf7c6340769980576eb626380b1f8472152a9427418cb62725136eade" [label=""];
  "sha256:d761ab6bf7c6340769980576eb626380b1f8472152a9427418cb62725136eade" -> "sha256:c264a7f0eda89b1830f25916c9beee224efe671f8bb1f6684a78b928e84eabe8" [label=""];
}

