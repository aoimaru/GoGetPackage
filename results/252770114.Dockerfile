[app/sources/252770114.Dockerfile]
digraph {
  "sha256:29c56e83caba56a4db5d0bf97fcf6e7eace1ca19f5dd6359d3eedcb873082c2c" [label="docker-image://docker.io/library/ruby:alpine" shape="ellipse"];
  "sha256:1c96b286ab4f142f0fffb425e6630f9ca145920f31217396fc19d85090c75338" [label="local://context" shape="ellipse"];
  "sha256:52fd8e60d669a52bcf91fb78b105c9d60f0de5410a6c7efde0cee8de71bd2a04" [label="copy{src=/Gemfile, dest=/Gemfile}" shape="note"];
  "sha256:86bc3f399ec3249d0015b72f12e07f5adeba2434072016d835979b7c8269d992" [label="/bin/sh -c mkdir -p /opt/resource && apk --no-cache add git build-base libxml2-dev libxslt-dev && bundle config build.nokogiri --use-system-libraries && rm -rf /var/cache/apk/* && bundle install && apk del build-base git" shape="box"];
  "sha256:8ed148ff2f383a368db138ee4d80d98beff7e4b738a2cbbaedc15253684e64e8" [label="copy{src=/check, dest=/opt/resource/check}" shape="note"];
  "sha256:147c5f45155fb40cf4a1f4507b9548e650e87e7c59a770534c57c393e84103f0" [label="copy{src=/in, dest=/opt/resource/in}" shape="note"];
  "sha256:b54e093d23a6aadcf3e85dc5b17dc13d6861aaa4f96ed7579e14b303bb08ddd4" [label="copy{src=/out, dest=/opt/resource/out}" shape="note"];
  "sha256:27805cc783c5cb109d6bdaa3834b73e8c4c728a3a93b5c1efd949f9c13f71dc7" [label="copy{src=/slack.erb, dest=/opt/resource/slack.erb}" shape="note"];
  "sha256:0628040119a523517379d13aa8866a6889865a69f89c8b05c4fddbf01f6ff5cd" [label="sha256:0628040119a523517379d13aa8866a6889865a69f89c8b05c4fddbf01f6ff5cd" shape="plaintext"];
  "sha256:29c56e83caba56a4db5d0bf97fcf6e7eace1ca19f5dd6359d3eedcb873082c2c" -> "sha256:52fd8e60d669a52bcf91fb78b105c9d60f0de5410a6c7efde0cee8de71bd2a04" [label=""];
  "sha256:1c96b286ab4f142f0fffb425e6630f9ca145920f31217396fc19d85090c75338" -> "sha256:52fd8e60d669a52bcf91fb78b105c9d60f0de5410a6c7efde0cee8de71bd2a04" [label=""];
  "sha256:52fd8e60d669a52bcf91fb78b105c9d60f0de5410a6c7efde0cee8de71bd2a04" -> "sha256:86bc3f399ec3249d0015b72f12e07f5adeba2434072016d835979b7c8269d992" [label=""];
  "sha256:86bc3f399ec3249d0015b72f12e07f5adeba2434072016d835979b7c8269d992" -> "sha256:8ed148ff2f383a368db138ee4d80d98beff7e4b738a2cbbaedc15253684e64e8" [label=""];
  "sha256:1c96b286ab4f142f0fffb425e6630f9ca145920f31217396fc19d85090c75338" -> "sha256:8ed148ff2f383a368db138ee4d80d98beff7e4b738a2cbbaedc15253684e64e8" [label=""];
  "sha256:8ed148ff2f383a368db138ee4d80d98beff7e4b738a2cbbaedc15253684e64e8" -> "sha256:147c5f45155fb40cf4a1f4507b9548e650e87e7c59a770534c57c393e84103f0" [label=""];
  "sha256:1c96b286ab4f142f0fffb425e6630f9ca145920f31217396fc19d85090c75338" -> "sha256:147c5f45155fb40cf4a1f4507b9548e650e87e7c59a770534c57c393e84103f0" [label=""];
  "sha256:147c5f45155fb40cf4a1f4507b9548e650e87e7c59a770534c57c393e84103f0" -> "sha256:b54e093d23a6aadcf3e85dc5b17dc13d6861aaa4f96ed7579e14b303bb08ddd4" [label=""];
  "sha256:1c96b286ab4f142f0fffb425e6630f9ca145920f31217396fc19d85090c75338" -> "sha256:b54e093d23a6aadcf3e85dc5b17dc13d6861aaa4f96ed7579e14b303bb08ddd4" [label=""];
  "sha256:b54e093d23a6aadcf3e85dc5b17dc13d6861aaa4f96ed7579e14b303bb08ddd4" -> "sha256:27805cc783c5cb109d6bdaa3834b73e8c4c728a3a93b5c1efd949f9c13f71dc7" [label=""];
  "sha256:1c96b286ab4f142f0fffb425e6630f9ca145920f31217396fc19d85090c75338" -> "sha256:27805cc783c5cb109d6bdaa3834b73e8c4c728a3a93b5c1efd949f9c13f71dc7" [label=""];
  "sha256:27805cc783c5cb109d6bdaa3834b73e8c4c728a3a93b5c1efd949f9c13f71dc7" -> "sha256:0628040119a523517379d13aa8866a6889865a69f89c8b05c4fddbf01f6ff5cd" [label=""];
}

