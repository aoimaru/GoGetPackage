[app/sources/482722781.Dockerfile]
digraph {
  "sha256:aa78dc3e99fa3955423b3d13c44070910d6e0b747da01fc8de0ea44acf1c0b33" [label="docker-image://docker.io/gitlab/gitlab-ce:latest" shape="ellipse"];
  "sha256:d351e66269d2a86043623c0b1943ecb2c1b09bc4ed15731d0d52589c81616369" [label="/bin/sh -c touch /.dockerenv" shape="box"];
  "sha256:bafa5900c9df67d83a06a195ab41f1fd0fa3cd370f6cc4baed5519e727f2e0d4" [label="sha256:bafa5900c9df67d83a06a195ab41f1fd0fa3cd370f6cc4baed5519e727f2e0d4" shape="plaintext"];
  "sha256:aa78dc3e99fa3955423b3d13c44070910d6e0b747da01fc8de0ea44acf1c0b33" -> "sha256:d351e66269d2a86043623c0b1943ecb2c1b09bc4ed15731d0d52589c81616369" [label=""];
  "sha256:d351e66269d2a86043623c0b1943ecb2c1b09bc4ed15731d0d52589c81616369" -> "sha256:bafa5900c9df67d83a06a195ab41f1fd0fa3cd370f6cc4baed5519e727f2e0d4" [label=""];
}

