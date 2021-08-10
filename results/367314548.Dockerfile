[app/sources/367314548.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:2e53858282176b4c1726af74a9a588c5fffa7b1d2c2f2c735a47ab37590f3b06" [label="/bin/sh -c apt-get -qq update   && apt-get install -y     libleptonica-dev     libtesseract-dev     tesseract-ocr" shape="box"];
  "sha256:0bc542c087c92c5e9f83752147aa62dda07f0154ac69f69d4f61d7751df1d81c" [label="/bin/sh -c apt-get install -y   tesseract-ocr-jpn" shape="box"];
  "sha256:23b06579b8a6b6e4b23506cb4d4f5b9961ad7781dc91c069483d52070e873915" [label="local://context" shape="ellipse"];
  "sha256:20e0308807134d44791289be3e3a389d828f00dcccd6544eddcdcf1c85dcbb26" [label="copy{src=/, dest=/src/github.com/otiai10/ocrserver}" shape="note"];
  "sha256:004226bff654f7cffacc90415cb0943427984986f97e2e5658c65b2acafdce52" [label="mkdir{path=/src/github.com/otiai10/ocrserver}" shape="note"];
  "sha256:b4b33a1d15c485f2f921d19aab0231304be35fe00af180142c6b887f9e773c41" [label="/bin/sh -c go get ./..." shape="box"];
  "sha256:bd855748b030cd0a3d04dd26715ddc6b7804e01fd2542c61d401b10fbae9c5e1" [label="/bin/sh -c go test -v github.com/otiai10/gosseract" shape="box"];
  "sha256:f4eb21ab2b6fecafc547a1c3145c9c3c0978e7e00d7d1fc46c1b28b6184835e4" [label="sha256:f4eb21ab2b6fecafc547a1c3145c9c3c0978e7e00d7d1fc46c1b28b6184835e4" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:2e53858282176b4c1726af74a9a588c5fffa7b1d2c2f2c735a47ab37590f3b06" [label=""];
  "sha256:2e53858282176b4c1726af74a9a588c5fffa7b1d2c2f2c735a47ab37590f3b06" -> "sha256:0bc542c087c92c5e9f83752147aa62dda07f0154ac69f69d4f61d7751df1d81c" [label=""];
  "sha256:0bc542c087c92c5e9f83752147aa62dda07f0154ac69f69d4f61d7751df1d81c" -> "sha256:20e0308807134d44791289be3e3a389d828f00dcccd6544eddcdcf1c85dcbb26" [label=""];
  "sha256:23b06579b8a6b6e4b23506cb4d4f5b9961ad7781dc91c069483d52070e873915" -> "sha256:20e0308807134d44791289be3e3a389d828f00dcccd6544eddcdcf1c85dcbb26" [label=""];
  "sha256:20e0308807134d44791289be3e3a389d828f00dcccd6544eddcdcf1c85dcbb26" -> "sha256:004226bff654f7cffacc90415cb0943427984986f97e2e5658c65b2acafdce52" [label=""];
  "sha256:004226bff654f7cffacc90415cb0943427984986f97e2e5658c65b2acafdce52" -> "sha256:b4b33a1d15c485f2f921d19aab0231304be35fe00af180142c6b887f9e773c41" [label=""];
  "sha256:b4b33a1d15c485f2f921d19aab0231304be35fe00af180142c6b887f9e773c41" -> "sha256:bd855748b030cd0a3d04dd26715ddc6b7804e01fd2542c61d401b10fbae9c5e1" [label=""];
  "sha256:bd855748b030cd0a3d04dd26715ddc6b7804e01fd2542c61d401b10fbae9c5e1" -> "sha256:f4eb21ab2b6fecafc547a1c3145c9c3c0978e7e00d7d1fc46c1b28b6184835e4" [label=""];
}

