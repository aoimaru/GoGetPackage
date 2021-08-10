[app/sources/320141444.Dockerfile]
digraph {
  "sha256:a4e721f0a38ef51862f9b491fd8f77e359d4b2e5c61460e562bd67d92c43caa4" [label="docker-image://gcr.io/distroless/base@sha256:97f9cbf81590c7dd878d7e10c20116fa7488c2fb91b3c839df1ebdcb61ab13ca" shape="ellipse"];
  "sha256:c0d55a2cfbc8b5607a90aa2db9d5d7c06cf5c73cdea2c817e0f38dbccc795773" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:915b734c4c75a239ea8192ed3814a3b64ed7941f6286b9f2e24f606ef69b594f" [label="mkdir{path=/go/src/github.com/knative/docs}" shape="note"];
  "sha256:27fb891ee72f71c1b0ea98f2d7dc1579b593092512ce20fb7081df4403fbaab2" [label="copy{src=/, dest=/go/src/github.com/knative/docs/}" shape="note"];
  "sha256:6e4a638c179b4e827a5cdb3144d49f5e5f5eb855da4fa02d79cb60c62d6ec71d" [label="/bin/sh -c CGO_ENABLED=0 go build ./docs/serving/samples/rest-api-go/" shape="box"];
  "sha256:7eb5bd182b1ef46bad655273faa25f055fb6d2582538b90a97df644c30e33e06" [label="copy{src=/go/src/github.com/knative/docs/rest-api-go, dest=/sample}" shape="note"];
  "sha256:65d6c2ec810522ee7aebdb6b97277ff8ac0fcf889e8da243409b954587085adf" [label="sha256:65d6c2ec810522ee7aebdb6b97277ff8ac0fcf889e8da243409b954587085adf" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:915b734c4c75a239ea8192ed3814a3b64ed7941f6286b9f2e24f606ef69b594f" [label=""];
  "sha256:915b734c4c75a239ea8192ed3814a3b64ed7941f6286b9f2e24f606ef69b594f" -> "sha256:27fb891ee72f71c1b0ea98f2d7dc1579b593092512ce20fb7081df4403fbaab2" [label=""];
  "sha256:c0d55a2cfbc8b5607a90aa2db9d5d7c06cf5c73cdea2c817e0f38dbccc795773" -> "sha256:27fb891ee72f71c1b0ea98f2d7dc1579b593092512ce20fb7081df4403fbaab2" [label=""];
  "sha256:27fb891ee72f71c1b0ea98f2d7dc1579b593092512ce20fb7081df4403fbaab2" -> "sha256:6e4a638c179b4e827a5cdb3144d49f5e5f5eb855da4fa02d79cb60c62d6ec71d" [label=""];
  "sha256:a4e721f0a38ef51862f9b491fd8f77e359d4b2e5c61460e562bd67d92c43caa4" -> "sha256:7eb5bd182b1ef46bad655273faa25f055fb6d2582538b90a97df644c30e33e06" [label=""];
  "sha256:6e4a638c179b4e827a5cdb3144d49f5e5f5eb855da4fa02d79cb60c62d6ec71d" -> "sha256:7eb5bd182b1ef46bad655273faa25f055fb6d2582538b90a97df644c30e33e06" [label=""];
  "sha256:7eb5bd182b1ef46bad655273faa25f055fb6d2582538b90a97df644c30e33e06" -> "sha256:65d6c2ec810522ee7aebdb6b97277ff8ac0fcf889e8da243409b954587085adf" [label=""];
}

