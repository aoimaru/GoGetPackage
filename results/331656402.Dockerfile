[app/sources/331656402.Dockerfile]
digraph {
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" [label="docker-image://docker.io/tensorflow/tensorflow:latest-gpu-py3" shape="ellipse"];
  "sha256:78df9d6a5bb45ee14555ddd404848b806afbcce51b51ab92e5695e7a7c678809" [label="/bin/sh -c apt-get update && apt-get install -y wget unzip" shape="box"];
  "sha256:a76ea4e44426049845ffabbc01595917691cea0adff674a87ba4939f33b5b001" [label="/bin/sh -c pip install keras" shape="box"];
  "sha256:583b8af0ed2cb03a3032b8640e8f9604f6d79ddad6463031b77c6436f6e59459" [label="mkdir{path=/src}" shape="note"];
  "sha256:54e83ed1c11fde68668f4df038145e38478f7a9dde1ffc28656b8cbd49ef2f48" [label="sha256:54e83ed1c11fde68668f4df038145e38478f7a9dde1ffc28656b8cbd49ef2f48" shape="plaintext"];
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" -> "sha256:78df9d6a5bb45ee14555ddd404848b806afbcce51b51ab92e5695e7a7c678809" [label=""];
  "sha256:78df9d6a5bb45ee14555ddd404848b806afbcce51b51ab92e5695e7a7c678809" -> "sha256:a76ea4e44426049845ffabbc01595917691cea0adff674a87ba4939f33b5b001" [label=""];
  "sha256:a76ea4e44426049845ffabbc01595917691cea0adff674a87ba4939f33b5b001" -> "sha256:583b8af0ed2cb03a3032b8640e8f9604f6d79ddad6463031b77c6436f6e59459" [label=""];
  "sha256:583b8af0ed2cb03a3032b8640e8f9604f6d79ddad6463031b77c6436f6e59459" -> "sha256:54e83ed1c11fde68668f4df038145e38478f7a9dde1ffc28656b8cbd49ef2f48" [label=""];
}

