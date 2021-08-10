[app/sources/201537906.Dockerfile]
digraph {
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" [label="docker-image://docker.io/mhart/alpine-node:6" shape="ellipse"];
  "sha256:a34fb31a15b975bcf16ab7123663bdea64dd7676c30f6d580da5fc0c9da9f3ce" [label="/bin/sh -c apk update && apk add --no-cache make python g++" shape="box"];
  "sha256:3b7caeb21d1a94e43a27cce10e9348f838cd48517ad29730e1d3adccdc308f45" [label="local://context" shape="ellipse"];
  "sha256:d1303aa2307bf0807a89ac9b03f0008db861e52ef5ca28556069d014077be975" [label="copy{src=/, dest=/suite}" shape="note"];
  "sha256:2c70fc0335183f31fd5c367694f2d33ffb79f5790c9fbf935a9e4a7e9547a50e" [label="mkdir{path=/suite}" shape="note"];
  "sha256:13c1c3ac2255faefe54291dc1328ee9e344d011361b680cff89a4dcce3a44671" [label="/bin/sh -c npm prune --production" shape="box"];
  "sha256:806152ab15a7c40297edf03f17d9178298916f949ac9f4a6ce5596d2c9548ba4" [label="/bin/sh -c npm rebuild --production" shape="box"];
  "sha256:12ddc8ea14bf7c5f04330119162d5eb2e2f88b7007d1393a03fb4ff190ecc9d2" [label="/bin/sh -c npm install" shape="box"];
  "sha256:22ff04f1780b8c66abaed7a9fc70dcd833de453c8163883ed6af60f8806aa7ee" [label="sha256:22ff04f1780b8c66abaed7a9fc70dcd833de453c8163883ed6af60f8806aa7ee" shape="plaintext"];
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" -> "sha256:a34fb31a15b975bcf16ab7123663bdea64dd7676c30f6d580da5fc0c9da9f3ce" [label=""];
  "sha256:a34fb31a15b975bcf16ab7123663bdea64dd7676c30f6d580da5fc0c9da9f3ce" -> "sha256:d1303aa2307bf0807a89ac9b03f0008db861e52ef5ca28556069d014077be975" [label=""];
  "sha256:3b7caeb21d1a94e43a27cce10e9348f838cd48517ad29730e1d3adccdc308f45" -> "sha256:d1303aa2307bf0807a89ac9b03f0008db861e52ef5ca28556069d014077be975" [label=""];
  "sha256:d1303aa2307bf0807a89ac9b03f0008db861e52ef5ca28556069d014077be975" -> "sha256:2c70fc0335183f31fd5c367694f2d33ffb79f5790c9fbf935a9e4a7e9547a50e" [label=""];
  "sha256:2c70fc0335183f31fd5c367694f2d33ffb79f5790c9fbf935a9e4a7e9547a50e" -> "sha256:13c1c3ac2255faefe54291dc1328ee9e344d011361b680cff89a4dcce3a44671" [label=""];
  "sha256:13c1c3ac2255faefe54291dc1328ee9e344d011361b680cff89a4dcce3a44671" -> "sha256:806152ab15a7c40297edf03f17d9178298916f949ac9f4a6ce5596d2c9548ba4" [label=""];
  "sha256:806152ab15a7c40297edf03f17d9178298916f949ac9f4a6ce5596d2c9548ba4" -> "sha256:12ddc8ea14bf7c5f04330119162d5eb2e2f88b7007d1393a03fb4ff190ecc9d2" [label=""];
  "sha256:12ddc8ea14bf7c5f04330119162d5eb2e2f88b7007d1393a03fb4ff190ecc9d2" -> "sha256:22ff04f1780b8c66abaed7a9fc70dcd833de453c8163883ed6af60f8806aa7ee" [label=""];
}

