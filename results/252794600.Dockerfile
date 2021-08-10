[app/sources/252794600.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:5c9bc6a460a87fcfec2ae7b94217d0228088cb61d72db113d3a549740b3800fa" [label="/bin/sh -c npm i @dataprism/ldk && apk update && apk add bash && apk add librdkafka" shape="box"];
  "sha256:ccc464cef95e29bb8a5b96be3117f9c06543cf5798ba5a6a05c865284d2277b3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:137fba1cc315e1515851bb4257cafad1a4f73c55a5fa6c3ab8a8faa95c07c81f" [label="local://context" shape="ellipse"];
  "sha256:dbf6d3fe6832c7ddf104c4d13d558eb900a68fccad0e3fbc4ea5fd2e6747ea53" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:31676c29e72a7a53d4e209d447de7a4e9f9da8ac3a4a8db770859f8690bce267" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:7927cc4107d1382a1164af163867ab642d6a18742384900bcff745918c2078e9" [label="sha256:7927cc4107d1382a1164af163867ab642d6a18742384900bcff745918c2078e9" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:5c9bc6a460a87fcfec2ae7b94217d0228088cb61d72db113d3a549740b3800fa" [label=""];
  "sha256:5c9bc6a460a87fcfec2ae7b94217d0228088cb61d72db113d3a549740b3800fa" -> "sha256:ccc464cef95e29bb8a5b96be3117f9c06543cf5798ba5a6a05c865284d2277b3" [label=""];
  "sha256:ccc464cef95e29bb8a5b96be3117f9c06543cf5798ba5a6a05c865284d2277b3" -> "sha256:dbf6d3fe6832c7ddf104c4d13d558eb900a68fccad0e3fbc4ea5fd2e6747ea53" [label=""];
  "sha256:137fba1cc315e1515851bb4257cafad1a4f73c55a5fa6c3ab8a8faa95c07c81f" -> "sha256:dbf6d3fe6832c7ddf104c4d13d558eb900a68fccad0e3fbc4ea5fd2e6747ea53" [label=""];
  "sha256:dbf6d3fe6832c7ddf104c4d13d558eb900a68fccad0e3fbc4ea5fd2e6747ea53" -> "sha256:31676c29e72a7a53d4e209d447de7a4e9f9da8ac3a4a8db770859f8690bce267" [label=""];
  "sha256:31676c29e72a7a53d4e209d447de7a4e9f9da8ac3a4a8db770859f8690bce267" -> "sha256:7927cc4107d1382a1164af163867ab642d6a18742384900bcff745918c2078e9" [label=""];
}

