[app/sources/249676329.Dockerfile]
digraph {
  "sha256:ea17226c741f448e7d96339c211bb9ad84ac6d85cad8b3d92e3b64627da1e4cd" [label="docker-image://docker.io/library/busybox:buildroot-2014.02@sha256:f8cdcf3eb8fac77a9b24f37bc440feea024a5d3ec9a33f1d0a4c42c5df6a49c3" shape="ellipse"];
  "sha256:b9fee5808c677eb7c8e87e868c72b741d05d274a1eeb24fa74b2003a8df66463" [label="ls -la" shape="box"];
  "sha256:a254a402230ae5ed15bc0e7bda86f6eea191a02bf090d5e4b6dea66be2100ddf" [label="echo '1234'" shape="box"];
  "sha256:623963291a4d136247855cfbac165399bd9731ae550c932677fa506f604397e1" [label="/bin/sh -c echo \"1234\"" shape="box"];
  "sha256:9577dadec5bb2ea6932ecbd209c74885ded0c5d01e93767eb6197af751412f09" [label="/bin/sh -c echo 1234" shape="box"];
  "sha256:25ac0407f67e417f71497331fc7e8836c8b6ac92f9be6bb7cb2fd7d4754c9e9e" [label="/bin/sh -c echo '1234' &&     echo \"456\" &&     echo 789" shape="box"];
  "sha256:442d9c9faa7fcd1ffeee2c74085a76ae6425173dc19995f2532cd21a7711ba80" [label="/bin/sh -c sh -c 'echo root:testpass         > /tmp/passwd'" shape="box"];
  "sha256:cb6d40b4c0c6b86e32c74aa1932ebc8ff21d198dbe9bbb88af6f97c413824157" [label="/bin/sh -c mkdir -p /test /test2 /test3/test" shape="box"];
  "sha256:2e8d7728dde0c53d02af888bf6d02a31b4f534bc1131d77e8c5c7accba9979a3" [label="mkdir{path=/test}" shape="note"];
  "sha256:9d60a68a2fdc831bf2907f38bc52482434f00a5b38b07bd92c480f40d98a8668" [label="local://context" shape="ellipse"];
  "sha256:8e47b1ddffcbeb6f75e3cdf4e6e2d40aa3f869f59eaae1bc76f0a1773f6122ea" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:02f6e4b6330ca7a8c4ee61410ad105fc242f9a29e7c35ffb99bb890af97c637a" [label="copy{src=/, dest=/test/copy}" shape="note"];
  "sha256:2f15ffae64137347d94c1406da34542f708bd601e24a14305f480e652675a7b8" [label="sha256:2f15ffae64137347d94c1406da34542f708bd601e24a14305f480e652675a7b8" shape="plaintext"];
  "sha256:ea17226c741f448e7d96339c211bb9ad84ac6d85cad8b3d92e3b64627da1e4cd" -> "sha256:b9fee5808c677eb7c8e87e868c72b741d05d274a1eeb24fa74b2003a8df66463" [label=""];
  "sha256:b9fee5808c677eb7c8e87e868c72b741d05d274a1eeb24fa74b2003a8df66463" -> "sha256:a254a402230ae5ed15bc0e7bda86f6eea191a02bf090d5e4b6dea66be2100ddf" [label=""];
  "sha256:a254a402230ae5ed15bc0e7bda86f6eea191a02bf090d5e4b6dea66be2100ddf" -> "sha256:623963291a4d136247855cfbac165399bd9731ae550c932677fa506f604397e1" [label=""];
  "sha256:623963291a4d136247855cfbac165399bd9731ae550c932677fa506f604397e1" -> "sha256:9577dadec5bb2ea6932ecbd209c74885ded0c5d01e93767eb6197af751412f09" [label=""];
  "sha256:9577dadec5bb2ea6932ecbd209c74885ded0c5d01e93767eb6197af751412f09" -> "sha256:25ac0407f67e417f71497331fc7e8836c8b6ac92f9be6bb7cb2fd7d4754c9e9e" [label=""];
  "sha256:25ac0407f67e417f71497331fc7e8836c8b6ac92f9be6bb7cb2fd7d4754c9e9e" -> "sha256:442d9c9faa7fcd1ffeee2c74085a76ae6425173dc19995f2532cd21a7711ba80" [label=""];
  "sha256:442d9c9faa7fcd1ffeee2c74085a76ae6425173dc19995f2532cd21a7711ba80" -> "sha256:cb6d40b4c0c6b86e32c74aa1932ebc8ff21d198dbe9bbb88af6f97c413824157" [label=""];
  "sha256:cb6d40b4c0c6b86e32c74aa1932ebc8ff21d198dbe9bbb88af6f97c413824157" -> "sha256:2e8d7728dde0c53d02af888bf6d02a31b4f534bc1131d77e8c5c7accba9979a3" [label=""];
  "sha256:2e8d7728dde0c53d02af888bf6d02a31b4f534bc1131d77e8c5c7accba9979a3" -> "sha256:8e47b1ddffcbeb6f75e3cdf4e6e2d40aa3f869f59eaae1bc76f0a1773f6122ea" [label=""];
  "sha256:9d60a68a2fdc831bf2907f38bc52482434f00a5b38b07bd92c480f40d98a8668" -> "sha256:8e47b1ddffcbeb6f75e3cdf4e6e2d40aa3f869f59eaae1bc76f0a1773f6122ea" [label=""];
  "sha256:8e47b1ddffcbeb6f75e3cdf4e6e2d40aa3f869f59eaae1bc76f0a1773f6122ea" -> "sha256:02f6e4b6330ca7a8c4ee61410ad105fc242f9a29e7c35ffb99bb890af97c637a" [label=""];
  "sha256:9d60a68a2fdc831bf2907f38bc52482434f00a5b38b07bd92c480f40d98a8668" -> "sha256:02f6e4b6330ca7a8c4ee61410ad105fc242f9a29e7c35ffb99bb890af97c637a" [label=""];
  "sha256:02f6e4b6330ca7a8c4ee61410ad105fc242f9a29e7c35ffb99bb890af97c637a" -> "sha256:2f15ffae64137347d94c1406da34542f708bd601e24a14305f480e652675a7b8" [label=""];
}

