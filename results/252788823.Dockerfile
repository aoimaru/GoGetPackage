[app/sources/252788823.Dockerfile]
digraph {
  "sha256:3a88032ee5a6c96833c1f3837f2edddeb0c5448990eca36294315ad9987e4049" [label="docker-image://docker.io/paddledev/paddle:cpu-latest" shape="ellipse"];
  "sha256:0cc76f2cbfb90dd064291f16a91525eeb2e7db94fcd76673eb5793c4e722c923" [label="local://context" shape="ellipse"];
  "sha256:0896ed725932425bb0589bb488bfa2e3a36b8304074a8ef5d9adadea4b5cecdc" [label="copy{src=/start.sh, dest=/root/}" shape="note"];
  "sha256:ba2e95c367da3eae4415948a10501bdc910aed45d4de15f1f522eca6034fbed4" [label="copy{src=/start_paddle.py, dest=/root/}" shape="note"];
  "sha256:5b5402daac0ff6e11f3992be9bc87f85bae89f1127913d8d49d12f1830e14c61" [label="sha256:5b5402daac0ff6e11f3992be9bc87f85bae89f1127913d8d49d12f1830e14c61" shape="plaintext"];
  "sha256:3a88032ee5a6c96833c1f3837f2edddeb0c5448990eca36294315ad9987e4049" -> "sha256:0896ed725932425bb0589bb488bfa2e3a36b8304074a8ef5d9adadea4b5cecdc" [label=""];
  "sha256:0cc76f2cbfb90dd064291f16a91525eeb2e7db94fcd76673eb5793c4e722c923" -> "sha256:0896ed725932425bb0589bb488bfa2e3a36b8304074a8ef5d9adadea4b5cecdc" [label=""];
  "sha256:0896ed725932425bb0589bb488bfa2e3a36b8304074a8ef5d9adadea4b5cecdc" -> "sha256:ba2e95c367da3eae4415948a10501bdc910aed45d4de15f1f522eca6034fbed4" [label=""];
  "sha256:0cc76f2cbfb90dd064291f16a91525eeb2e7db94fcd76673eb5793c4e722c923" -> "sha256:ba2e95c367da3eae4415948a10501bdc910aed45d4de15f1f522eca6034fbed4" [label=""];
  "sha256:ba2e95c367da3eae4415948a10501bdc910aed45d4de15f1f522eca6034fbed4" -> "sha256:5b5402daac0ff6e11f3992be9bc87f85bae89f1127913d8d49d12f1830e14c61" [label=""];
}

