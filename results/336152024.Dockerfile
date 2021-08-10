[app/sources/336152024.Dockerfile]
digraph {
  "sha256:3afbccad2cf775e9f9032df23d6904bfe3544ec0ca66c10b494d26637a5932a6" [label="docker-image://docker.io/arm32v6/python:3.7.3-alpine" shape="ellipse"];
  "sha256:60ad2e367207e62b0ea09b7e83004708cb8fb63481bc3cec5fcb7f405119f456" [label="mkdir{path=/app}" shape="note"];
  "sha256:2e6dd73f1eec8e552ae6f6bde722634a107b174c460d0094a8b670a7c3670d81" [label="local://context" shape="ellipse"];
  "sha256:3e2389bb45c1562989f200b2f8bc4cb2a74bdf8379dc6bc7248d077000445a7e" [label="copy{src=/requirements.txt, dest=/app/},copy{src=/Varken.py, dest=/app/}" shape="note"];
  "sha256:de0e1a497d0fe178c87eccc4b303d45545e9f10a21f0655d049dff12dd3cf3d4" [label="copy{src=/varken, dest=/app/varken}" shape="note"];
  "sha256:56be78be6bb7ba43326a77c5ca7e86785ff9008d4517d7db4495ab6a7093c177" [label="copy{src=/data, dest=/app/data}" shape="note"];
  "sha256:4ef3a095510d1ad6c8f4d120e85453db1b225985945620960a0463e61af853e0" [label="/bin/sh -c apk add --no-cache tzdata &&     pip install --no-cache-dir -r /app/requirements.txt" shape="box"];
  "sha256:9344514ed98cbbbb0a555b76f590fbf19409df6463578ff18fc40cbc7936b7cd" [label="sha256:9344514ed98cbbbb0a555b76f590fbf19409df6463578ff18fc40cbc7936b7cd" shape="plaintext"];
  "sha256:3afbccad2cf775e9f9032df23d6904bfe3544ec0ca66c10b494d26637a5932a6" -> "sha256:60ad2e367207e62b0ea09b7e83004708cb8fb63481bc3cec5fcb7f405119f456" [label=""];
  "sha256:60ad2e367207e62b0ea09b7e83004708cb8fb63481bc3cec5fcb7f405119f456" -> "sha256:3e2389bb45c1562989f200b2f8bc4cb2a74bdf8379dc6bc7248d077000445a7e" [label=""];
  "sha256:2e6dd73f1eec8e552ae6f6bde722634a107b174c460d0094a8b670a7c3670d81" -> "sha256:3e2389bb45c1562989f200b2f8bc4cb2a74bdf8379dc6bc7248d077000445a7e" [label=""];
  "sha256:3e2389bb45c1562989f200b2f8bc4cb2a74bdf8379dc6bc7248d077000445a7e" -> "sha256:de0e1a497d0fe178c87eccc4b303d45545e9f10a21f0655d049dff12dd3cf3d4" [label=""];
  "sha256:2e6dd73f1eec8e552ae6f6bde722634a107b174c460d0094a8b670a7c3670d81" -> "sha256:de0e1a497d0fe178c87eccc4b303d45545e9f10a21f0655d049dff12dd3cf3d4" [label=""];
  "sha256:de0e1a497d0fe178c87eccc4b303d45545e9f10a21f0655d049dff12dd3cf3d4" -> "sha256:56be78be6bb7ba43326a77c5ca7e86785ff9008d4517d7db4495ab6a7093c177" [label=""];
  "sha256:2e6dd73f1eec8e552ae6f6bde722634a107b174c460d0094a8b670a7c3670d81" -> "sha256:56be78be6bb7ba43326a77c5ca7e86785ff9008d4517d7db4495ab6a7093c177" [label=""];
  "sha256:56be78be6bb7ba43326a77c5ca7e86785ff9008d4517d7db4495ab6a7093c177" -> "sha256:4ef3a095510d1ad6c8f4d120e85453db1b225985945620960a0463e61af853e0" [label=""];
  "sha256:4ef3a095510d1ad6c8f4d120e85453db1b225985945620960a0463e61af853e0" -> "sha256:9344514ed98cbbbb0a555b76f590fbf19409df6463578ff18fc40cbc7936b7cd" [label=""];
}

