[app/sources/277494452.Dockerfile]
digraph {
  "sha256:c4a92d21fdf1c366ad97eca52d82671a74e9d6eba55036a6ac0860fd3d5514fb" [label="docker-image://docker.io/centos/nodejs-8-centos7:latest" shape="ellipse"];
  "sha256:7fb9cbf5af75e954b1040fc35bb4f0f49ce4b4ea257f81107f693facb9c9aafc" [label="/bin/sh -c mkdir .npm &&   chown -R 1001:0 .npm &&   chmod -R ug+rwx .npm" shape="box"];
  "sha256:7c3567262db8ff1ad1689fea2dfb241795507fa512e9bf05e17e32b0ee84f049" [label="sha256:7c3567262db8ff1ad1689fea2dfb241795507fa512e9bf05e17e32b0ee84f049" shape="plaintext"];
  "sha256:c4a92d21fdf1c366ad97eca52d82671a74e9d6eba55036a6ac0860fd3d5514fb" -> "sha256:7fb9cbf5af75e954b1040fc35bb4f0f49ce4b4ea257f81107f693facb9c9aafc" [label=""];
  "sha256:7fb9cbf5af75e954b1040fc35bb4f0f49ce4b4ea257f81107f693facb9c9aafc" -> "sha256:7c3567262db8ff1ad1689fea2dfb241795507fa512e9bf05e17e32b0ee84f049" [label=""];
}

