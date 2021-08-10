[app/sources/323771026.Dockerfile]
digraph {
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:ea637836de51c54d7920f57863417cd3e3f8dfb549341d1fc9ebb7de738c2165" [label="local://context" shape="ellipse"];
  "sha256:de903a71cb7ace72cc5eaa126b9c8621d4ac82e5ce58a78adc542c43ed2aa3f9" [label="copy{src=/, dest=/go/src/github.com/znly/go-ml-transpiler/serving/}" shape="note"];
  "sha256:ea3b8f8ac708122467f417c27ebf726568c313f4bbf722b5b501033c5be4bae4" [label="mkdir{path=/go/src/github.com/znly/go-ml-transpiler/serving}" shape="note"];
  "sha256:b85b09b4642d713c59dcb5a460cacd67ed08b6627798b40f4a54da6850db00d9" [label="docker-image://docker.io/transpiler/model:latest" shape="ellipse"];
  "sha256:c29898cf1cb84614d7149fd173b8e3c6b16d834d8a90eb67f61b1d8803ca360e" [label="copy{src=/transpiler/model, dest=/go/src/github.com/znly/go-ml-transpiler/serving/server/model/}" shape="note"];
  "sha256:d28127401b9edeb9e7e27b3996e5d52f149a0dd6176af1892b7d18bfbf421246" [label="mkdir{path=/go/src/github.com/znly/go-ml-transpiler/serving/server}" shape="note"];
  "sha256:fa1abe0e082cf0e3a912c77abc199d7fbf2e77b4986b741089a3a78426b8ef08" [label="/bin/sh -c go install" shape="box"];
  "sha256:a738eab758ead099f9da489ce8ca99b805b77c93e5dcf4e40cfa03dc27034654" [label="sha256:a738eab758ead099f9da489ce8ca99b805b77c93e5dcf4e40cfa03dc27034654" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:de903a71cb7ace72cc5eaa126b9c8621d4ac82e5ce58a78adc542c43ed2aa3f9" [label=""];
  "sha256:ea637836de51c54d7920f57863417cd3e3f8dfb549341d1fc9ebb7de738c2165" -> "sha256:de903a71cb7ace72cc5eaa126b9c8621d4ac82e5ce58a78adc542c43ed2aa3f9" [label=""];
  "sha256:de903a71cb7ace72cc5eaa126b9c8621d4ac82e5ce58a78adc542c43ed2aa3f9" -> "sha256:ea3b8f8ac708122467f417c27ebf726568c313f4bbf722b5b501033c5be4bae4" [label=""];
  "sha256:ea3b8f8ac708122467f417c27ebf726568c313f4bbf722b5b501033c5be4bae4" -> "sha256:c29898cf1cb84614d7149fd173b8e3c6b16d834d8a90eb67f61b1d8803ca360e" [label=""];
  "sha256:b85b09b4642d713c59dcb5a460cacd67ed08b6627798b40f4a54da6850db00d9" -> "sha256:c29898cf1cb84614d7149fd173b8e3c6b16d834d8a90eb67f61b1d8803ca360e" [label=""];
  "sha256:c29898cf1cb84614d7149fd173b8e3c6b16d834d8a90eb67f61b1d8803ca360e" -> "sha256:d28127401b9edeb9e7e27b3996e5d52f149a0dd6176af1892b7d18bfbf421246" [label=""];
  "sha256:d28127401b9edeb9e7e27b3996e5d52f149a0dd6176af1892b7d18bfbf421246" -> "sha256:fa1abe0e082cf0e3a912c77abc199d7fbf2e77b4986b741089a3a78426b8ef08" [label=""];
  "sha256:fa1abe0e082cf0e3a912c77abc199d7fbf2e77b4986b741089a3a78426b8ef08" -> "sha256:a738eab758ead099f9da489ce8ca99b805b77c93e5dcf4e40cfa03dc27034654" [label=""];
}

