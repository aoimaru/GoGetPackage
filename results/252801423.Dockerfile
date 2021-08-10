[app/sources/252801423.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:de8804aa268e20efca58ea5f06f355c5373100de5fd9be6715d7bbcf02c133c9" [label="/bin/sh -c apk --no-cache add curl zip" shape="box"];
  "sha256:a2086d008474c94e070474cc867991503c9d8f64a763e157b6ac3049c1e64dcc" [label="sha256:a2086d008474c94e070474cc867991503c9d8f64a763e157b6ac3049c1e64dcc" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:de8804aa268e20efca58ea5f06f355c5373100de5fd9be6715d7bbcf02c133c9" [label=""];
  "sha256:de8804aa268e20efca58ea5f06f355c5373100de5fd9be6715d7bbcf02c133c9" -> "sha256:a2086d008474c94e070474cc867991503c9d8f64a763e157b6ac3049c1e64dcc" [label=""];
}

