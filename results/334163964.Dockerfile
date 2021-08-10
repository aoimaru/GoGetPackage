[app/sources/334163964.Dockerfile]
digraph {
  "sha256:982b52ceafa6329084469d387f4835ca9cef380f861832ac0342da48647a8c9c" [label="docker-image://docker.io/library/nginx:stable" shape="ellipse"];
  "sha256:a8f3a3caeaa197f3b5842a6b9d65bc1e51ecc3d7a188d6d5ac529ad57e9f1af4" [label="local://context" shape="ellipse"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:9008fba0d077bc7977eccc0df1bb0c45047d0bfdfff21b074872c31e49944a3b" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:8007ef8cc41cdaf839a67ab20eb75e87960e0f5beffa5b6f757ab4a4eee9a712" [label="/bin/sh -c pip3 install --upgrade pip &&     pip install -r /requirements.txt &&     export WEB_HOST_PORT=$WEB_HOST_PORT &&     export WEB_HOST_SECURE_PORT=$WEB_HOST_SECURE_PORT &&     export APP_HOST_PORT=$APP_HOST_PORT &&     j2 /nginx.conf.j2 -o /nginx.conf" shape="box"];
  "sha256:0e65ddab193e4f3f9861e24fdc12ea8ecf6a643f4191d0e86022c8b7e4c84c67" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:c0a006d3a896b896957388265ecd403da9d79ca2f97babb3f50f004085984c4c" [label="copy{src=/*.pem, dest=/}" shape="note"];
  "sha256:6401e090e20ab401daa68b84a9e89c1d4dabce066b811481152b4e305653ce23" [label="sha256:6401e090e20ab401daa68b84a9e89c1d4dabce066b811481152b4e305653ce23" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:9008fba0d077bc7977eccc0df1bb0c45047d0bfdfff21b074872c31e49944a3b" [label=""];
  "sha256:a8f3a3caeaa197f3b5842a6b9d65bc1e51ecc3d7a188d6d5ac529ad57e9f1af4" -> "sha256:9008fba0d077bc7977eccc0df1bb0c45047d0bfdfff21b074872c31e49944a3b" [label=""];
  "sha256:9008fba0d077bc7977eccc0df1bb0c45047d0bfdfff21b074872c31e49944a3b" -> "sha256:8007ef8cc41cdaf839a67ab20eb75e87960e0f5beffa5b6f757ab4a4eee9a712" [label=""];
  "sha256:982b52ceafa6329084469d387f4835ca9cef380f861832ac0342da48647a8c9c" -> "sha256:0e65ddab193e4f3f9861e24fdc12ea8ecf6a643f4191d0e86022c8b7e4c84c67" [label=""];
  "sha256:8007ef8cc41cdaf839a67ab20eb75e87960e0f5beffa5b6f757ab4a4eee9a712" -> "sha256:0e65ddab193e4f3f9861e24fdc12ea8ecf6a643f4191d0e86022c8b7e4c84c67" [label=""];
  "sha256:0e65ddab193e4f3f9861e24fdc12ea8ecf6a643f4191d0e86022c8b7e4c84c67" -> "sha256:c0a006d3a896b896957388265ecd403da9d79ca2f97babb3f50f004085984c4c" [label=""];
  "sha256:a8f3a3caeaa197f3b5842a6b9d65bc1e51ecc3d7a188d6d5ac529ad57e9f1af4" -> "sha256:c0a006d3a896b896957388265ecd403da9d79ca2f97babb3f50f004085984c4c" [label=""];
  "sha256:c0a006d3a896b896957388265ecd403da9d79ca2f97babb3f50f004085984c4c" -> "sha256:6401e090e20ab401daa68b84a9e89c1d4dabce066b811481152b4e305653ce23" [label=""];
}

