[app/sources/299106436.Dockerfile]
digraph {
  "sha256:a98a08484fa42e4e52f7b6f4ed345127a12a5625b5379d561c9ba43f1c23e7b9" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5e7d7a5ab05d71767565e95d86beacf2065d86679d36927e7567012fc355e89a" [label="/bin/sh -c apt-get install -y python python-pip wget" shape="box"];
  "sha256:a45b7ccf7faa8b465fbf3ea3f9da4f1c338f63a6d3a28592758f6310c60f90dd" [label="/bin/sh -c pip install Flask" shape="box"];
  "sha256:6f9dd7f83c21c503c68739633cb3f3ac1704006fc906358100f3b35dd5195d57" [label="copy{src=/hello.py, dest=/home/hello.py}" shape="note"];
  "sha256:a9b4e82712c451dfae32bde6f30f590857971c6fe9e2213bb044baf3695fedd5" [label="mkdir{path=/home}" shape="note"];
  "sha256:72d39599c4cc87589fd9c3c81e89f9fbcc0c2cb359c5b48add8804f2239c1097" [label="sha256:72d39599c4cc87589fd9c3c81e89f9fbcc0c2cb359c5b48add8804f2239c1097" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:5e7d7a5ab05d71767565e95d86beacf2065d86679d36927e7567012fc355e89a" [label=""];
  "sha256:5e7d7a5ab05d71767565e95d86beacf2065d86679d36927e7567012fc355e89a" -> "sha256:a45b7ccf7faa8b465fbf3ea3f9da4f1c338f63a6d3a28592758f6310c60f90dd" [label=""];
  "sha256:a45b7ccf7faa8b465fbf3ea3f9da4f1c338f63a6d3a28592758f6310c60f90dd" -> "sha256:6f9dd7f83c21c503c68739633cb3f3ac1704006fc906358100f3b35dd5195d57" [label=""];
  "sha256:a98a08484fa42e4e52f7b6f4ed345127a12a5625b5379d561c9ba43f1c23e7b9" -> "sha256:6f9dd7f83c21c503c68739633cb3f3ac1704006fc906358100f3b35dd5195d57" [label=""];
  "sha256:6f9dd7f83c21c503c68739633cb3f3ac1704006fc906358100f3b35dd5195d57" -> "sha256:a9b4e82712c451dfae32bde6f30f590857971c6fe9e2213bb044baf3695fedd5" [label=""];
  "sha256:a9b4e82712c451dfae32bde6f30f590857971c6fe9e2213bb044baf3695fedd5" -> "sha256:72d39599c4cc87589fd9c3c81e89f9fbcc0c2cb359c5b48add8804f2239c1097" [label=""];
}

