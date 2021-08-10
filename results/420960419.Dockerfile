[app/sources/420960419.Dockerfile]
digraph {
  "sha256:07f1ebe4e9ff199bf1e5c7113508b7f4d413dade6ad3e6a0b84f1e318019724a" [label="docker-image://docker.io/heroku/cedar:14" shape="ellipse"];
  "sha256:6fab48168ad517e9bd3d1e490774396abd81633d3093ec672988bc5916cc734d" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:9f9fd34049848faa21797baf3067e3bd4bc43047ca39191c9bab958613431be2" [label="/bin/sh -c addgroup --quiet --gid 2000 slug &&     useradd slug --uid=2000 --gid=2000 --home-dir /app --no-create-home         --shell /bin/bash" shape="box"];
  "sha256:47eb384c7374e3e384e4c114e04a41e11737f7fcba519b3d4b4a811ef415782a" [label="/bin/sh -c chown slug:slug /app" shape="box"];
  "sha256:232f08bdecd660880f70fa13c5eb643a7c76744cb60c8e65fb1c2f41ca7db4c1" [label="mkdir{path=/app}" shape="note"];
  "sha256:c4beab1933fb05b9f082546c9dff2b3806dab3dcab800c96fb0f193274195b00" [label="local://context" shape="ellipse"];
  "sha256:e48c9aeee70820a4be31e1c3dd811c45a35938f18793e463ea298b69ca4af813" [label="copy{src=/runner, dest=/runner}" shape="note"];
  "sha256:d4d487080439e5b30491392fda73c33393f4f43cbaf216be4dc4e1daef6defa3" [label="/bin/sh -c chown slug:slug /runner/init" shape="box"];
  "sha256:52e0bdb16629d1c1b5414d2f47ecb7e26bc7d4e25aed3009ae837ba120bad638" [label="sha256:52e0bdb16629d1c1b5414d2f47ecb7e26bc7d4e25aed3009ae837ba120bad638" shape="plaintext"];
  "sha256:07f1ebe4e9ff199bf1e5c7113508b7f4d413dade6ad3e6a0b84f1e318019724a" -> "sha256:6fab48168ad517e9bd3d1e490774396abd81633d3093ec672988bc5916cc734d" [label=""];
  "sha256:6fab48168ad517e9bd3d1e490774396abd81633d3093ec672988bc5916cc734d" -> "sha256:9f9fd34049848faa21797baf3067e3bd4bc43047ca39191c9bab958613431be2" [label=""];
  "sha256:9f9fd34049848faa21797baf3067e3bd4bc43047ca39191c9bab958613431be2" -> "sha256:47eb384c7374e3e384e4c114e04a41e11737f7fcba519b3d4b4a811ef415782a" [label=""];
  "sha256:47eb384c7374e3e384e4c114e04a41e11737f7fcba519b3d4b4a811ef415782a" -> "sha256:232f08bdecd660880f70fa13c5eb643a7c76744cb60c8e65fb1c2f41ca7db4c1" [label=""];
  "sha256:232f08bdecd660880f70fa13c5eb643a7c76744cb60c8e65fb1c2f41ca7db4c1" -> "sha256:e48c9aeee70820a4be31e1c3dd811c45a35938f18793e463ea298b69ca4af813" [label=""];
  "sha256:c4beab1933fb05b9f082546c9dff2b3806dab3dcab800c96fb0f193274195b00" -> "sha256:e48c9aeee70820a4be31e1c3dd811c45a35938f18793e463ea298b69ca4af813" [label=""];
  "sha256:e48c9aeee70820a4be31e1c3dd811c45a35938f18793e463ea298b69ca4af813" -> "sha256:d4d487080439e5b30491392fda73c33393f4f43cbaf216be4dc4e1daef6defa3" [label=""];
  "sha256:d4d487080439e5b30491392fda73c33393f4f43cbaf216be4dc4e1daef6defa3" -> "sha256:52e0bdb16629d1c1b5414d2f47ecb7e26bc7d4e25aed3009ae837ba120bad638" [label=""];
}

