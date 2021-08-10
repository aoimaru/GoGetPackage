[app/sources/465056222.Dockerfile]
digraph {
  "sha256:15890fdaeba00acd84af01bd4626d1363bb619a9c8be10d9476b22ef27c40803" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e591cf7430687b0d7e3f01606026971804fe812f95c7b303921d17b2284f147f" [label="copy{src=/bin, dest=/bin}" shape="note"];
  "sha256:e5057723b03a70c5ca79fd5f9eedeca06de23cdb398a6de005fc8183c7e19a49" [label="sha256:e5057723b03a70c5ca79fd5f9eedeca06de23cdb398a6de005fc8183c7e19a49" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e591cf7430687b0d7e3f01606026971804fe812f95c7b303921d17b2284f147f" [label=""];
  "sha256:15890fdaeba00acd84af01bd4626d1363bb619a9c8be10d9476b22ef27c40803" -> "sha256:e591cf7430687b0d7e3f01606026971804fe812f95c7b303921d17b2284f147f" [label=""];
  "sha256:e591cf7430687b0d7e3f01606026971804fe812f95c7b303921d17b2284f147f" -> "sha256:e5057723b03a70c5ca79fd5f9eedeca06de23cdb398a6de005fc8183c7e19a49" [label=""];
}

