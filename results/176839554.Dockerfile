[app/sources/176839554.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:d4b0e27344d50b2aa8c2256800a5a54187f0a52ef9b2be8ca13c28402b9752f4" [label="local://context" shape="ellipse"];
  "sha256:5c971f6066698d84f1c3eb9a2c4ebb970faea5b02335da5484222c99eac65e71" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:f49a0582b49b4a15a2ebd894e2b5339d2344585ff436b87274cd6fce5c2f85b1" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:72868342e598eb9ac27e35dcfdfefc6f09c7e144d950f6534a57c758a9e71307" [label="/bin/sh -c gcc -g -Wall -static nnp-test.c -o /usr/bin/nnp-test" shape="box"];
  "sha256:6ccb3089b2fcbcadee0c84ba4c5bef621e0a0d31ad3d9cc76c48e4f48810d979" [label="/bin/sh -c chmod +s /usr/bin/nnp-test" shape="box"];
  "sha256:ae49daddff2c25e6b096a696923c5bfab1790608a1fca8825414a62e07c731b0" [label="sha256:ae49daddff2c25e6b096a696923c5bfab1790608a1fca8825414a62e07c731b0" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:5c971f6066698d84f1c3eb9a2c4ebb970faea5b02335da5484222c99eac65e71" [label=""];
  "sha256:d4b0e27344d50b2aa8c2256800a5a54187f0a52ef9b2be8ca13c28402b9752f4" -> "sha256:5c971f6066698d84f1c3eb9a2c4ebb970faea5b02335da5484222c99eac65e71" [label=""];
  "sha256:5c971f6066698d84f1c3eb9a2c4ebb970faea5b02335da5484222c99eac65e71" -> "sha256:f49a0582b49b4a15a2ebd894e2b5339d2344585ff436b87274cd6fce5c2f85b1" [label=""];
  "sha256:f49a0582b49b4a15a2ebd894e2b5339d2344585ff436b87274cd6fce5c2f85b1" -> "sha256:72868342e598eb9ac27e35dcfdfefc6f09c7e144d950f6534a57c758a9e71307" [label=""];
  "sha256:72868342e598eb9ac27e35dcfdfefc6f09c7e144d950f6534a57c758a9e71307" -> "sha256:6ccb3089b2fcbcadee0c84ba4c5bef621e0a0d31ad3d9cc76c48e4f48810d979" [label=""];
  "sha256:6ccb3089b2fcbcadee0c84ba4c5bef621e0a0d31ad3d9cc76c48e4f48810d979" -> "sha256:ae49daddff2c25e6b096a696923c5bfab1790608a1fca8825414a62e07c731b0" [label=""];
}

