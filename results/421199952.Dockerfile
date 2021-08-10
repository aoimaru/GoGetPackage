[app/sources/421199952.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:85ab634463b69963defecc4b2d4fcb39004b90694785c91783b7dfd095710c48" [label="mkdir{path=/src}" shape="note"];
  "sha256:1a0919f839bb792425440d67fd24f2d0090cb70cb1b139cd6eb5c9131ef112fb" [label="local://context" shape="ellipse"];
  "sha256:9f68540015d93347e13b22d0471c0c0575e0c0986f833ece90971e1f33fe433e" [label="copy{src=/requirements-dev.txt, dest=/src/}" shape="note"];
  "sha256:6ba97c91d433df5b649806135692ae01babe2611e044c2702786f9ccf7f3bce2" [label="/bin/sh -c apk update     && apk add libmemcached-dev         gcc         musl-dev         cyrus-sasl-dev         zlib-dev         make         vim         bash         git         libffi         libffi-dev     && ln -sf /usr/bin/vim /usr/bin/vi     && pip install --no-cache-dir -r requirements-dev.txt" shape="box"];
  "sha256:9d15505dab7983af006ae30d8d97df5977e444d26562416a2f9aef6780b3ff2d" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:19c41434bc5d11fc8fbd9016a1533a7cedd1e2e2cd302fd0968c2658cf566b84" [label="copy{src=/docker/vimrc, dest=/root/.vimrc}" shape="note"];
  "sha256:95ee8a6d97509d86cdc3685f420c803aaa74462fd0723206429b9249fbd4dbd2" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:f184a8a39288facee758405eddbfd0b77ce7b8abe5c6c70dbe6fb5c0013ef879" [label="sha256:f184a8a39288facee758405eddbfd0b77ce7b8abe5c6c70dbe6fb5c0013ef879" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:85ab634463b69963defecc4b2d4fcb39004b90694785c91783b7dfd095710c48" [label=""];
  "sha256:85ab634463b69963defecc4b2d4fcb39004b90694785c91783b7dfd095710c48" -> "sha256:9f68540015d93347e13b22d0471c0c0575e0c0986f833ece90971e1f33fe433e" [label=""];
  "sha256:1a0919f839bb792425440d67fd24f2d0090cb70cb1b139cd6eb5c9131ef112fb" -> "sha256:9f68540015d93347e13b22d0471c0c0575e0c0986f833ece90971e1f33fe433e" [label=""];
  "sha256:9f68540015d93347e13b22d0471c0c0575e0c0986f833ece90971e1f33fe433e" -> "sha256:6ba97c91d433df5b649806135692ae01babe2611e044c2702786f9ccf7f3bce2" [label=""];
  "sha256:6ba97c91d433df5b649806135692ae01babe2611e044c2702786f9ccf7f3bce2" -> "sha256:9d15505dab7983af006ae30d8d97df5977e444d26562416a2f9aef6780b3ff2d" [label=""];
  "sha256:1a0919f839bb792425440d67fd24f2d0090cb70cb1b139cd6eb5c9131ef112fb" -> "sha256:9d15505dab7983af006ae30d8d97df5977e444d26562416a2f9aef6780b3ff2d" [label=""];
  "sha256:9d15505dab7983af006ae30d8d97df5977e444d26562416a2f9aef6780b3ff2d" -> "sha256:19c41434bc5d11fc8fbd9016a1533a7cedd1e2e2cd302fd0968c2658cf566b84" [label=""];
  "sha256:1a0919f839bb792425440d67fd24f2d0090cb70cb1b139cd6eb5c9131ef112fb" -> "sha256:19c41434bc5d11fc8fbd9016a1533a7cedd1e2e2cd302fd0968c2658cf566b84" [label=""];
  "sha256:19c41434bc5d11fc8fbd9016a1533a7cedd1e2e2cd302fd0968c2658cf566b84" -> "sha256:95ee8a6d97509d86cdc3685f420c803aaa74462fd0723206429b9249fbd4dbd2" [label=""];
  "sha256:95ee8a6d97509d86cdc3685f420c803aaa74462fd0723206429b9249fbd4dbd2" -> "sha256:f184a8a39288facee758405eddbfd0b77ce7b8abe5c6c70dbe6fb5c0013ef879" [label=""];
}

