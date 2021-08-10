[app/sources/252774420.Dockerfile]
digraph {
  "sha256:fcc74d1e016ad3cb5c946a73082b43563dfc61832ee4a4b91f00bdee1eb7d084" [label="local://context" shape="ellipse"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:efc0eb87e123efd947c80f85ae135d9c34b81d7dc0dff213d0789e36e82a28fb" [label="/bin/sh -c rm /etc/nginx/conf.d/*" shape="box"];
  "sha256:de4bcfbec9a0138e51b88be2958a05543ec47f4a87e6d30b9143bbff22e200c2" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:9bfd808efcf48ede27107b080c74121bb03102b5489ca5f941cb4e3810800dc8" [label="copy{src=/index.html, dest=/etc/nginx/html/}" shape="note"];
  "sha256:fcfa978ad86c7c72d6684fd825d306b7b067efdcf6701060d7b5cfa21b83e19d" [label="sha256:fcfa978ad86c7c72d6684fd825d306b7b067efdcf6701060d7b5cfa21b83e19d" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:efc0eb87e123efd947c80f85ae135d9c34b81d7dc0dff213d0789e36e82a28fb" [label=""];
  "sha256:efc0eb87e123efd947c80f85ae135d9c34b81d7dc0dff213d0789e36e82a28fb" -> "sha256:de4bcfbec9a0138e51b88be2958a05543ec47f4a87e6d30b9143bbff22e200c2" [label=""];
  "sha256:fcc74d1e016ad3cb5c946a73082b43563dfc61832ee4a4b91f00bdee1eb7d084" -> "sha256:de4bcfbec9a0138e51b88be2958a05543ec47f4a87e6d30b9143bbff22e200c2" [label=""];
  "sha256:de4bcfbec9a0138e51b88be2958a05543ec47f4a87e6d30b9143bbff22e200c2" -> "sha256:9bfd808efcf48ede27107b080c74121bb03102b5489ca5f941cb4e3810800dc8" [label=""];
  "sha256:fcc74d1e016ad3cb5c946a73082b43563dfc61832ee4a4b91f00bdee1eb7d084" -> "sha256:9bfd808efcf48ede27107b080c74121bb03102b5489ca5f941cb4e3810800dc8" [label=""];
  "sha256:9bfd808efcf48ede27107b080c74121bb03102b5489ca5f941cb4e3810800dc8" -> "sha256:fcfa978ad86c7c72d6684fd825d306b7b067efdcf6701060d7b5cfa21b83e19d" [label=""];
}

