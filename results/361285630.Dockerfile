[app/sources/361285630.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:058c88af4903dfe5047b32f89e3e94ab32d91abbb1b7f2136a5c2248f886a01d" [label="local://context" shape="ellipse"];
  "sha256:9195afceaa4ae41887d7d43df58933f5b7461a1e0d12c288381f59b6b07b10f6" [label="copy{src=/, dest=/tmp/gcloud-cleanup}" shape="note"];
  "sha256:a78cde08d02ff29786c53abae98cd1e5759bc679ff62a723747b9856b6ccb621" [label="mkdir{path=/tmp/gcloud-cleanup}" shape="note"];
  "sha256:d41db2325b897dee9f11ccd661cceec5fcbc221d0325f8d6984e143da82b3f73" [label="/bin/sh -c make build crossbuild" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:bd230f0d1ea5aae64094fab09a5f07ce257cd3bb1d6d5c69933e25ce12fa3a2e" [label="/bin/sh -c apk --no-cache add ca-certificates curl bash" shape="box"];
  "sha256:f6b4bfdf5a1bbaca70f0549a127da2e37bc4ede0ebfde556bd88830d03e48aa0" [label="copy{src=/tmp/gcloud-cleanup/build/linux/amd64/gcloud-cleanup, dest=/usr/local/bin/gcloud-cleanup}" shape="note"];
  "sha256:3e859d9e50e7ed3ac08a0188a60f745147b0b60cfd640bcd909cac762ff29885" [label="sha256:3e859d9e50e7ed3ac08a0188a60f745147b0b60cfd640bcd909cac762ff29885" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:9195afceaa4ae41887d7d43df58933f5b7461a1e0d12c288381f59b6b07b10f6" [label=""];
  "sha256:058c88af4903dfe5047b32f89e3e94ab32d91abbb1b7f2136a5c2248f886a01d" -> "sha256:9195afceaa4ae41887d7d43df58933f5b7461a1e0d12c288381f59b6b07b10f6" [label=""];
  "sha256:9195afceaa4ae41887d7d43df58933f5b7461a1e0d12c288381f59b6b07b10f6" -> "sha256:a78cde08d02ff29786c53abae98cd1e5759bc679ff62a723747b9856b6ccb621" [label=""];
  "sha256:a78cde08d02ff29786c53abae98cd1e5759bc679ff62a723747b9856b6ccb621" -> "sha256:d41db2325b897dee9f11ccd661cceec5fcbc221d0325f8d6984e143da82b3f73" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:bd230f0d1ea5aae64094fab09a5f07ce257cd3bb1d6d5c69933e25ce12fa3a2e" [label=""];
  "sha256:bd230f0d1ea5aae64094fab09a5f07ce257cd3bb1d6d5c69933e25ce12fa3a2e" -> "sha256:f6b4bfdf5a1bbaca70f0549a127da2e37bc4ede0ebfde556bd88830d03e48aa0" [label=""];
  "sha256:d41db2325b897dee9f11ccd661cceec5fcbc221d0325f8d6984e143da82b3f73" -> "sha256:f6b4bfdf5a1bbaca70f0549a127da2e37bc4ede0ebfde556bd88830d03e48aa0" [label=""];
  "sha256:f6b4bfdf5a1bbaca70f0549a127da2e37bc4ede0ebfde556bd88830d03e48aa0" -> "sha256:3e859d9e50e7ed3ac08a0188a60f745147b0b60cfd640bcd909cac762ff29885" [label=""];
}

