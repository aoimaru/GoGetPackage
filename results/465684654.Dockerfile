[app/sources/465684654.Dockerfile]
digraph {
  "sha256:b8a508481fdae5b1fa776f1a845163a1ad774a7dde5345989541baf173c4606e" [label="docker-image://docker.io/library/golang:1.12-alpine@sha256:3f8e3ad3e7c128d29ac3004ac8314967c5ddbfa5bfa7caa59b0de493fc01686a" shape="ellipse"];
  "sha256:41a9a2eeb684260c6850a73c419ff7446b82f2a7ffc3c0610b22405b72d26ab0" [label="/bin/sh -c apk add --update --no-cache build-base git" shape="box"];
  "sha256:5df64dcabeda2e851c849bdfbaf55d45df4f410d2a38afe53139c73ece598f43" [label="/bin/sh -c echo \"nobody:x:65534:65534:Nobody:/:\" > /etc_passwd" shape="box"];
  "sha256:7447ed481f89cf79c093dbbab9bd2a980d664601fe676473c6e6445c5884ff2d" [label="mkdir{path=/src}" shape="note"];
  "sha256:90fae300e2fb4ed949af57e4302acd0cf45ad7db805df76f2e4893a1cf868537" [label="local://context" shape="ellipse"];
  "sha256:fd9035225bf6e076b6391ef92c22ae61f3b940b2f145aeef2e5fcd74b5ade537" [label="copy{src=/go.mod, dest=/src/}" shape="note"];
  "sha256:7df09c1a0b79b98adffeff303135cf95dfb12e722e4d3ffbf0d86bbcc2e3b737" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:f844bf52380178fd1ca1bec4f64415990ab780df40bda1c8c4876dcaeeffb35c" [label="copy{src=/*.go, dest=/src/}" shape="note"];
  "sha256:004b3631b992c11c816bda7ed004b89870840abf2a40f08d4da06971e046b5e4" [label="/bin/sh -c CGO_ENABLED=0 go build -o /bin/kubernetes-cloudflare-sync ." shape="box"];
  "sha256:989a3642096353049914cd4c49f823ef849b85960201d0940095a02f50e58351" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:bbde888cb1f969efe44cd9e670961d08b006b5eabd48d04d4f236604f36ee367" [label="copy{src=/etc_passwd, dest=/etc/passwd}" shape="note"];
  "sha256:2d8b28e5b94f4d31e75285975ec244ed4467f9b66667a564e51fd725c27b594b" [label="copy{src=/bin/kubernetes-cloudflare-sync, dest=/bin/kubernetes-cloudflare-sync}" shape="note"];
  "sha256:b455e87acfc403a7a1e9b255d8ca69a236d67524ad92545a0af57e555109851c" [label="sha256:b455e87acfc403a7a1e9b255d8ca69a236d67524ad92545a0af57e555109851c" shape="plaintext"];
  "sha256:b8a508481fdae5b1fa776f1a845163a1ad774a7dde5345989541baf173c4606e" -> "sha256:41a9a2eeb684260c6850a73c419ff7446b82f2a7ffc3c0610b22405b72d26ab0" [label=""];
  "sha256:41a9a2eeb684260c6850a73c419ff7446b82f2a7ffc3c0610b22405b72d26ab0" -> "sha256:5df64dcabeda2e851c849bdfbaf55d45df4f410d2a38afe53139c73ece598f43" [label=""];
  "sha256:5df64dcabeda2e851c849bdfbaf55d45df4f410d2a38afe53139c73ece598f43" -> "sha256:7447ed481f89cf79c093dbbab9bd2a980d664601fe676473c6e6445c5884ff2d" [label=""];
  "sha256:7447ed481f89cf79c093dbbab9bd2a980d664601fe676473c6e6445c5884ff2d" -> "sha256:fd9035225bf6e076b6391ef92c22ae61f3b940b2f145aeef2e5fcd74b5ade537" [label=""];
  "sha256:90fae300e2fb4ed949af57e4302acd0cf45ad7db805df76f2e4893a1cf868537" -> "sha256:fd9035225bf6e076b6391ef92c22ae61f3b940b2f145aeef2e5fcd74b5ade537" [label=""];
  "sha256:fd9035225bf6e076b6391ef92c22ae61f3b940b2f145aeef2e5fcd74b5ade537" -> "sha256:7df09c1a0b79b98adffeff303135cf95dfb12e722e4d3ffbf0d86bbcc2e3b737" [label=""];
  "sha256:7df09c1a0b79b98adffeff303135cf95dfb12e722e4d3ffbf0d86bbcc2e3b737" -> "sha256:f844bf52380178fd1ca1bec4f64415990ab780df40bda1c8c4876dcaeeffb35c" [label=""];
  "sha256:90fae300e2fb4ed949af57e4302acd0cf45ad7db805df76f2e4893a1cf868537" -> "sha256:f844bf52380178fd1ca1bec4f64415990ab780df40bda1c8c4876dcaeeffb35c" [label=""];
  "sha256:f844bf52380178fd1ca1bec4f64415990ab780df40bda1c8c4876dcaeeffb35c" -> "sha256:004b3631b992c11c816bda7ed004b89870840abf2a40f08d4da06971e046b5e4" [label=""];
  "sha256:004b3631b992c11c816bda7ed004b89870840abf2a40f08d4da06971e046b5e4" -> "sha256:989a3642096353049914cd4c49f823ef849b85960201d0940095a02f50e58351" [label=""];
  "sha256:989a3642096353049914cd4c49f823ef849b85960201d0940095a02f50e58351" -> "sha256:bbde888cb1f969efe44cd9e670961d08b006b5eabd48d04d4f236604f36ee367" [label=""];
  "sha256:004b3631b992c11c816bda7ed004b89870840abf2a40f08d4da06971e046b5e4" -> "sha256:bbde888cb1f969efe44cd9e670961d08b006b5eabd48d04d4f236604f36ee367" [label=""];
  "sha256:bbde888cb1f969efe44cd9e670961d08b006b5eabd48d04d4f236604f36ee367" -> "sha256:2d8b28e5b94f4d31e75285975ec244ed4467f9b66667a564e51fd725c27b594b" [label=""];
  "sha256:004b3631b992c11c816bda7ed004b89870840abf2a40f08d4da06971e046b5e4" -> "sha256:2d8b28e5b94f4d31e75285975ec244ed4467f9b66667a564e51fd725c27b594b" [label=""];
  "sha256:2d8b28e5b94f4d31e75285975ec244ed4467f9b66667a564e51fd725c27b594b" -> "sha256:b455e87acfc403a7a1e9b255d8ca69a236d67524ad92545a0af57e555109851c" [label=""];
}

