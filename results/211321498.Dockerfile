[app/sources/211321498.Dockerfile]
digraph {
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" [label="docker-image://docker.io/library/golang:1.8-alpine" shape="ellipse"];
  "sha256:e196d14589d05195d34a7d262b1a61e2a6b5e933be6600586e658e539539773f" [label="/bin/sh -c mkdir -p /go/src/github.com/hairyhenderson/restdemo" shape="box"];
  "sha256:902ab34c5745df4eeaa0e06e0b509bc51f12db21888519f5e261ceba0fc79ea7" [label="mkdir{path=/go/src/github.com/hairyhenderson/restdemo}" shape="note"];
  "sha256:e8dd009aafdfcb4b8ca2ed68611f23ebc34622dabc195610212e8972d0ee8bd6" [label="local://context" shape="ellipse"];
  "sha256:b8497c5331a3663db849b1d6427acc6bdbb57e41d9b55eb6030894dfdb740bed" [label="copy{src=/, dest=/go/src/github.com/hairyhenderson/restdemo}" shape="note"];
  "sha256:43da27d78f52e3e645185763cd0122512be2f2cfc1b4dfc3117a46d007f2d5a2" [label="/bin/sh -c go build -ldflags \"-w -s\"" shape="box"];
  "sha256:09684735d850c4ea78e4a08c86c91de06d58ba54e0d373ab26b916aff39f4098" [label="sha256:09684735d850c4ea78e4a08c86c91de06d58ba54e0d373ab26b916aff39f4098" shape="plaintext"];
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" -> "sha256:e196d14589d05195d34a7d262b1a61e2a6b5e933be6600586e658e539539773f" [label=""];
  "sha256:e196d14589d05195d34a7d262b1a61e2a6b5e933be6600586e658e539539773f" -> "sha256:902ab34c5745df4eeaa0e06e0b509bc51f12db21888519f5e261ceba0fc79ea7" [label=""];
  "sha256:902ab34c5745df4eeaa0e06e0b509bc51f12db21888519f5e261ceba0fc79ea7" -> "sha256:b8497c5331a3663db849b1d6427acc6bdbb57e41d9b55eb6030894dfdb740bed" [label=""];
  "sha256:e8dd009aafdfcb4b8ca2ed68611f23ebc34622dabc195610212e8972d0ee8bd6" -> "sha256:b8497c5331a3663db849b1d6427acc6bdbb57e41d9b55eb6030894dfdb740bed" [label=""];
  "sha256:b8497c5331a3663db849b1d6427acc6bdbb57e41d9b55eb6030894dfdb740bed" -> "sha256:43da27d78f52e3e645185763cd0122512be2f2cfc1b4dfc3117a46d007f2d5a2" [label=""];
  "sha256:43da27d78f52e3e645185763cd0122512be2f2cfc1b4dfc3117a46d007f2d5a2" -> "sha256:09684735d850c4ea78e4a08c86c91de06d58ba54e0d373ab26b916aff39f4098" [label=""];
}

