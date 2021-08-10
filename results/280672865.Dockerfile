[app/sources/280672865.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:f231f89c990fa1b441210df623a1c106abb1301d4ee083fe3007d0bb4c4d907b" [label="local://context" shape="ellipse"];
  "sha256:2dead9cb97f2d2ba36e00077bcd7bb99b08aa7e3a8ff051696f9c1326abade4f" [label="copy{src=/, dest=/tidypy}" shape="note"];
  "sha256:87b2999697672040536f36eed7df65c8a250fe3394f69857e3f1d5d3b56126ce" [label="mkdir{path=/tidypy}" shape="note"];
  "sha256:36eecc6595712cf690fe01e8a4a25cc29d5783393eb9a1338a2c88ff62ef70c7" [label="/bin/sh -c apk --no-cache add git mercurial subversion bzr gcc musl-dev &&     pip install --no-cache-dir . Sphinx" shape="box"];
  "sha256:a3ab5e6c8b7621be5f80bf16e2d33e2d8a8c809197c4145523a0cd3a2ba23022" [label="mkdir{path=/project}" shape="note"];
  "sha256:81fb603d50ebdff0ac3d544e5f6df8038ca60b844e156aaa7f1e2781549cf0b3" [label="sha256:81fb603d50ebdff0ac3d544e5f6df8038ca60b844e156aaa7f1e2781549cf0b3" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:2dead9cb97f2d2ba36e00077bcd7bb99b08aa7e3a8ff051696f9c1326abade4f" [label=""];
  "sha256:f231f89c990fa1b441210df623a1c106abb1301d4ee083fe3007d0bb4c4d907b" -> "sha256:2dead9cb97f2d2ba36e00077bcd7bb99b08aa7e3a8ff051696f9c1326abade4f" [label=""];
  "sha256:2dead9cb97f2d2ba36e00077bcd7bb99b08aa7e3a8ff051696f9c1326abade4f" -> "sha256:87b2999697672040536f36eed7df65c8a250fe3394f69857e3f1d5d3b56126ce" [label=""];
  "sha256:87b2999697672040536f36eed7df65c8a250fe3394f69857e3f1d5d3b56126ce" -> "sha256:36eecc6595712cf690fe01e8a4a25cc29d5783393eb9a1338a2c88ff62ef70c7" [label=""];
  "sha256:36eecc6595712cf690fe01e8a4a25cc29d5783393eb9a1338a2c88ff62ef70c7" -> "sha256:a3ab5e6c8b7621be5f80bf16e2d33e2d8a8c809197c4145523a0cd3a2ba23022" [label=""];
  "sha256:a3ab5e6c8b7621be5f80bf16e2d33e2d8a8c809197c4145523a0cd3a2ba23022" -> "sha256:81fb603d50ebdff0ac3d544e5f6df8038ca60b844e156aaa7f1e2781549cf0b3" [label=""];
}

