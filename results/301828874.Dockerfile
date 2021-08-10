[app/sources/301828874.Dockerfile]
digraph {
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" [label="docker-image://docker.io/pveber/bistro-base:stretch" shape="ellipse"];
  "sha256:ff3d83173ca20beb6f2aec9157ab8caac72ccc6c6f32a171e549eba451e8e44d" [label="/bin/sh -c apt-get update && apt-get install -y mrbayes=3.2.6+dfsg-1+b4" shape="box"];
  "sha256:1f026e9f634aee0c24dad915ea2da8f2503c8b8bd3997121ee04df96437845eb" [label="sha256:1f026e9f634aee0c24dad915ea2da8f2503c8b8bd3997121ee04df96437845eb" shape="plaintext"];
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" -> "sha256:ff3d83173ca20beb6f2aec9157ab8caac72ccc6c6f32a171e549eba451e8e44d" [label=""];
  "sha256:ff3d83173ca20beb6f2aec9157ab8caac72ccc6c6f32a171e549eba451e8e44d" -> "sha256:1f026e9f634aee0c24dad915ea2da8f2503c8b8bd3997121ee04df96437845eb" [label=""];
}

