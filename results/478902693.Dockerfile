[app/sources/478902693.Dockerfile]
digraph {
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" [label="docker-image://docker.io/library/node:9-alpine" shape="ellipse"];
  "sha256:1b108a2ddde37a0535538a1f99e95ba568eabeed6759cdd49a9bd7b50c752850" [label="/bin/sh -c apk update &&     apk add git python g++ make" shape="box"];
  "sha256:78ddeba60d26a81e226bcdee6a04eb5288ae180431801beb1e8af458e0cb8172" [label="/bin/sh -c npm i npm@latest -g" shape="box"];
  "sha256:39632c4cf19fe74fc477cef2ee13b345717c5db4821429088a30e0d6ed519d5d" [label="mkdir{path=/app}" shape="note"];
  "sha256:26be4f7b0af6ebe02ef1546b9899af3064a8ac74450aceab6873260f0a1cc702" [label="local://context" shape="ellipse"];
  "sha256:d2d29bf73f21796f4aee8985b0e1a34e7f60649248cf319972185610171f8521" [label="copy{src=/package*, dest=/app/}" shape="note"];
  "sha256:a71eb3ee614898d16ddd672dfb0de4081b2194387d3749b34d9dd6abb63eb0db" [label="copy{src=/.eslint*, dest=/app/},copy{src=/.babel*, dest=/app/}" shape="note"];
  "sha256:940c8ce1dba61fe615fed9edec131bf3042330d34fedcb4ea258786be305b4b3" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3f275bc26ef989f6b0c07e89e32c67a4d9beebdc25a85afe4a217ce12c4cb32d" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:de32c3078437b32b811446726a7f84b278fdffa4e9e59dd050b3599808574bce" [label="copy{src=/.env.sample, dest=/app/.env}" shape="note"];
  "sha256:0351074d379955e8c78c91cb33b16ea3b375075302574912072264177da1b76d" [label="sha256:0351074d379955e8c78c91cb33b16ea3b375075302574912072264177da1b76d" shape="plaintext"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" -> "sha256:1b108a2ddde37a0535538a1f99e95ba568eabeed6759cdd49a9bd7b50c752850" [label=""];
  "sha256:1b108a2ddde37a0535538a1f99e95ba568eabeed6759cdd49a9bd7b50c752850" -> "sha256:78ddeba60d26a81e226bcdee6a04eb5288ae180431801beb1e8af458e0cb8172" [label=""];
  "sha256:78ddeba60d26a81e226bcdee6a04eb5288ae180431801beb1e8af458e0cb8172" -> "sha256:39632c4cf19fe74fc477cef2ee13b345717c5db4821429088a30e0d6ed519d5d" [label=""];
  "sha256:39632c4cf19fe74fc477cef2ee13b345717c5db4821429088a30e0d6ed519d5d" -> "sha256:d2d29bf73f21796f4aee8985b0e1a34e7f60649248cf319972185610171f8521" [label=""];
  "sha256:26be4f7b0af6ebe02ef1546b9899af3064a8ac74450aceab6873260f0a1cc702" -> "sha256:d2d29bf73f21796f4aee8985b0e1a34e7f60649248cf319972185610171f8521" [label=""];
  "sha256:d2d29bf73f21796f4aee8985b0e1a34e7f60649248cf319972185610171f8521" -> "sha256:a71eb3ee614898d16ddd672dfb0de4081b2194387d3749b34d9dd6abb63eb0db" [label=""];
  "sha256:26be4f7b0af6ebe02ef1546b9899af3064a8ac74450aceab6873260f0a1cc702" -> "sha256:a71eb3ee614898d16ddd672dfb0de4081b2194387d3749b34d9dd6abb63eb0db" [label=""];
  "sha256:a71eb3ee614898d16ddd672dfb0de4081b2194387d3749b34d9dd6abb63eb0db" -> "sha256:940c8ce1dba61fe615fed9edec131bf3042330d34fedcb4ea258786be305b4b3" [label=""];
  "sha256:940c8ce1dba61fe615fed9edec131bf3042330d34fedcb4ea258786be305b4b3" -> "sha256:3f275bc26ef989f6b0c07e89e32c67a4d9beebdc25a85afe4a217ce12c4cb32d" [label=""];
  "sha256:26be4f7b0af6ebe02ef1546b9899af3064a8ac74450aceab6873260f0a1cc702" -> "sha256:3f275bc26ef989f6b0c07e89e32c67a4d9beebdc25a85afe4a217ce12c4cb32d" [label=""];
  "sha256:3f275bc26ef989f6b0c07e89e32c67a4d9beebdc25a85afe4a217ce12c4cb32d" -> "sha256:de32c3078437b32b811446726a7f84b278fdffa4e9e59dd050b3599808574bce" [label=""];
  "sha256:26be4f7b0af6ebe02ef1546b9899af3064a8ac74450aceab6873260f0a1cc702" -> "sha256:de32c3078437b32b811446726a7f84b278fdffa4e9e59dd050b3599808574bce" [label=""];
  "sha256:de32c3078437b32b811446726a7f84b278fdffa4e9e59dd050b3599808574bce" -> "sha256:0351074d379955e8c78c91cb33b16ea3b375075302574912072264177da1b76d" [label=""];
}

