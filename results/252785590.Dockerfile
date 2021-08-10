[app/sources/252785590.Dockerfile]
digraph {
  "sha256:9d025f2a9cd6f4abca70c35c89bd25d421ea177432195d3ab3c8c96c19650990" [label="docker-image://docker.io/library/node:4-onbuild" shape="ellipse"];
  "sha256:8e74e4538fef34883003219cce8b8d2587b032453adf97b6deadbbd186f3fc1c" [label="/bin/sh -c npm install npm -g" shape="box"];
  "sha256:9d6061c304903a37d31c2d6fb1890e08b0b3b9555b743100a3c47eaa5dbb07d6" [label="/bin/sh -c npm set progress=false && npm install -g --progress=false yarn" shape="box"];
  "sha256:01a53bd76bd9d187d2bb3e90838d2ca47d7076d640b7a8cb158ad504448c3e0a" [label="sha256:01a53bd76bd9d187d2bb3e90838d2ca47d7076d640b7a8cb158ad504448c3e0a" shape="plaintext"];
  "sha256:9d025f2a9cd6f4abca70c35c89bd25d421ea177432195d3ab3c8c96c19650990" -> "sha256:8e74e4538fef34883003219cce8b8d2587b032453adf97b6deadbbd186f3fc1c" [label=""];
  "sha256:8e74e4538fef34883003219cce8b8d2587b032453adf97b6deadbbd186f3fc1c" -> "sha256:9d6061c304903a37d31c2d6fb1890e08b0b3b9555b743100a3c47eaa5dbb07d6" [label=""];
  "sha256:9d6061c304903a37d31c2d6fb1890e08b0b3b9555b743100a3c47eaa5dbb07d6" -> "sha256:01a53bd76bd9d187d2bb3e90838d2ca47d7076d640b7a8cb158ad504448c3e0a" [label=""];
}

