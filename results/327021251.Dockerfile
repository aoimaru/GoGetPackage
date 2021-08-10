[app/sources/327021251.Dockerfile]
digraph {
  "sha256:16de4623443bcb21afe490c5c671dc5a5f030b57a76b48279bf40077a4ea03e2" [label="docker-image://docker.io/library/node:9.8.0" shape="ellipse"];
  "sha256:4c7f25bdbadab61b9ce1bd9418888fdcd4481aa97c60beed484a126215a2c66e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2c758c4dc6837d9cef6df734e4eb151e96d04b87977693f7dc55d8c8e80353ef" [label="local://context" shape="ellipse"];
  "sha256:384163e2f793ed42f96c2ee962bb51c7a289b2338c5f798f3a0e09c1e06b4dc4" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:8c0588b0da234c92c0ca62db7b3c2a3502b198c97a092df9449390c74e1a20ab" [label="/bin/sh -c npm install" shape="box"];
  "sha256:67288613c00c583fd63932b0248b143f4b575ae792b0cc385101e319856037cc" [label="/bin/sh -c npm i -g gulp-cli" shape="box"];
  "sha256:7b64fadb0e7cb031d868707327b5bffa01f67141aea997831ba8cf8996d80e5c" [label="/bin/sh -c gulp scripts" shape="box"];
  "sha256:b240622598a84ae82d622fafeb4932ff37ad1bb50e4bf8f6310553238ad50e45" [label="/bin/sh -c groupadd -g 999 appuser &&     useradd -r -u 999 -g appuser appuser" shape="box"];
  "sha256:7328b7dc67f5357f2f48f80da1ab1d0aef6deecc904dd11fe1c15672a28a08e0" [label="sha256:7328b7dc67f5357f2f48f80da1ab1d0aef6deecc904dd11fe1c15672a28a08e0" shape="plaintext"];
  "sha256:16de4623443bcb21afe490c5c671dc5a5f030b57a76b48279bf40077a4ea03e2" -> "sha256:4c7f25bdbadab61b9ce1bd9418888fdcd4481aa97c60beed484a126215a2c66e" [label=""];
  "sha256:4c7f25bdbadab61b9ce1bd9418888fdcd4481aa97c60beed484a126215a2c66e" -> "sha256:384163e2f793ed42f96c2ee962bb51c7a289b2338c5f798f3a0e09c1e06b4dc4" [label=""];
  "sha256:2c758c4dc6837d9cef6df734e4eb151e96d04b87977693f7dc55d8c8e80353ef" -> "sha256:384163e2f793ed42f96c2ee962bb51c7a289b2338c5f798f3a0e09c1e06b4dc4" [label=""];
  "sha256:384163e2f793ed42f96c2ee962bb51c7a289b2338c5f798f3a0e09c1e06b4dc4" -> "sha256:8c0588b0da234c92c0ca62db7b3c2a3502b198c97a092df9449390c74e1a20ab" [label=""];
  "sha256:8c0588b0da234c92c0ca62db7b3c2a3502b198c97a092df9449390c74e1a20ab" -> "sha256:67288613c00c583fd63932b0248b143f4b575ae792b0cc385101e319856037cc" [label=""];
  "sha256:67288613c00c583fd63932b0248b143f4b575ae792b0cc385101e319856037cc" -> "sha256:7b64fadb0e7cb031d868707327b5bffa01f67141aea997831ba8cf8996d80e5c" [label=""];
  "sha256:7b64fadb0e7cb031d868707327b5bffa01f67141aea997831ba8cf8996d80e5c" -> "sha256:b240622598a84ae82d622fafeb4932ff37ad1bb50e4bf8f6310553238ad50e45" [label=""];
  "sha256:b240622598a84ae82d622fafeb4932ff37ad1bb50e4bf8f6310553238ad50e45" -> "sha256:7328b7dc67f5357f2f48f80da1ab1d0aef6deecc904dd11fe1c15672a28a08e0" [label=""];
}

