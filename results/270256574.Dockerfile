[app/sources/270256574.Dockerfile]
digraph {
  "sha256:06a8d80af916b99aa5f1b2b79267184aa5fb9647a2c28817ecfe4e073f97f413" [label="local://context" shape="ellipse"];
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" [label="docker-image://docker.io/library/node:6.9.2" shape="ellipse"];
  "sha256:4fd11ce96fd8e5ce1253b8a5368e35ccf2165c473f7bd68857892604044f622f" [label="/bin/sh -c apt-get update && apt-get install ocaml libelf-dev -y" shape="box"];
  "sha256:7e2017d6834c785fa59d0a013251735e08f3d6c6b59d7070dc0c97b97d31b19c" [label="/bin/sh -c npm install yarn@$YARN_VERSION -g" shape="box"];
  "sha256:da971063e2f65cbbf3809a59925192ec6aed1cf203bc7b920596a328368ad724" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:06a4f059d3e024c4c4195d08aa1164c952889467ac17dd4da8717b4ee8ec2e8a" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:0af023112244f255ba448e43ad25d86bced5e3e950ef7776449d724aa1fcb358" [label="mkdir{path=/app}" shape="note"];
  "sha256:8df1c02de76642366eb9e65fc4a499f9af2d83d5c0ff656db8ca39f1c67176a2" [label="/bin/sh -c yarn install --ignore-engines" shape="box"];
  "sha256:979f2041ee03424b1883e283fb7635d2a24d717a18e4d3b1a6e72c60e6673710" [label="mkdir{path=/app/website}" shape="note"];
  "sha256:c7c1f3c814d00a8ea410e904adfc6eca8330fcab1267c9df4e91346ecebf6cd1" [label="/bin/sh -c yarn install --ignore-engines --ignore-platform" shape="box"];
  "sha256:6b7a0d22ce278bfa0430515424ae0ef7031973feb4557ebb46e45fd195daeb25" [label="mkdir{path=/app}" shape="note"];
  "sha256:21419da5920700a47114e1558b0419ea81a131953f5dcf146fa06114aada23f0" [label="sha256:21419da5920700a47114e1558b0419ea81a131953f5dcf146fa06114aada23f0" shape="plaintext"];
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" -> "sha256:4fd11ce96fd8e5ce1253b8a5368e35ccf2165c473f7bd68857892604044f622f" [label=""];
  "sha256:4fd11ce96fd8e5ce1253b8a5368e35ccf2165c473f7bd68857892604044f622f" -> "sha256:7e2017d6834c785fa59d0a013251735e08f3d6c6b59d7070dc0c97b97d31b19c" [label=""];
  "sha256:7e2017d6834c785fa59d0a013251735e08f3d6c6b59d7070dc0c97b97d31b19c" -> "sha256:da971063e2f65cbbf3809a59925192ec6aed1cf203bc7b920596a328368ad724" [label=""];
  "sha256:da971063e2f65cbbf3809a59925192ec6aed1cf203bc7b920596a328368ad724" -> "sha256:06a4f059d3e024c4c4195d08aa1164c952889467ac17dd4da8717b4ee8ec2e8a" [label=""];
  "sha256:06a8d80af916b99aa5f1b2b79267184aa5fb9647a2c28817ecfe4e073f97f413" -> "sha256:06a4f059d3e024c4c4195d08aa1164c952889467ac17dd4da8717b4ee8ec2e8a" [label=""];
  "sha256:06a4f059d3e024c4c4195d08aa1164c952889467ac17dd4da8717b4ee8ec2e8a" -> "sha256:0af023112244f255ba448e43ad25d86bced5e3e950ef7776449d724aa1fcb358" [label=""];
  "sha256:0af023112244f255ba448e43ad25d86bced5e3e950ef7776449d724aa1fcb358" -> "sha256:8df1c02de76642366eb9e65fc4a499f9af2d83d5c0ff656db8ca39f1c67176a2" [label=""];
  "sha256:8df1c02de76642366eb9e65fc4a499f9af2d83d5c0ff656db8ca39f1c67176a2" -> "sha256:979f2041ee03424b1883e283fb7635d2a24d717a18e4d3b1a6e72c60e6673710" [label=""];
  "sha256:979f2041ee03424b1883e283fb7635d2a24d717a18e4d3b1a6e72c60e6673710" -> "sha256:c7c1f3c814d00a8ea410e904adfc6eca8330fcab1267c9df4e91346ecebf6cd1" [label=""];
  "sha256:c7c1f3c814d00a8ea410e904adfc6eca8330fcab1267c9df4e91346ecebf6cd1" -> "sha256:6b7a0d22ce278bfa0430515424ae0ef7031973feb4557ebb46e45fd195daeb25" [label=""];
  "sha256:6b7a0d22ce278bfa0430515424ae0ef7031973feb4557ebb46e45fd195daeb25" -> "sha256:21419da5920700a47114e1558b0419ea81a131953f5dcf146fa06114aada23f0" [label=""];
}

