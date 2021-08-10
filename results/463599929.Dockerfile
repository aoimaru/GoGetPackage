[app/sources/463599929.Dockerfile]
digraph {
  "sha256:86004eeb3da6b3600d5180df89549c2d9ff38f475302c4797aa9560d8150bfe0" [label="docker-image://docker.io/library/node:carbon-alpine" shape="ellipse"];
  "sha256:d00abd70677303706c6ae34c15ec3711e7b6e70cacf2fb86815c1aee0d0c3430" [label="/bin/sh -c apk add --no-cache tzdata &&     ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&     echo \"Asia/Shanghai\" > /etc/timezone" shape="box"];
  "sha256:34aa0aa37df2b0ac4861ecd42db296c67095df0c60002d651dc0608e998f5d10" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:be70dc3e29aa80fc2a8951716851eb05a27d7e92865680f169fca7e5750e462c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:adcdea1b07d9751880ab1bc8aade30d0d58957143284a67c1d6b7ee5286c0ceb" [label="local://context" shape="ellipse"];
  "sha256:bd8b02242fb4b92870a52b9eaa1ea624b5e23009712e9415f30f090fbe19d6fc" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:dfa5332ed85ec06deceba3da339a917f5e681013eb1c4fc4f282681e16c092b9" [label="/bin/sh -c npm install && npm cache clean --force" shape="box"];
  "sha256:0c1eff18863fbc793119a33f43a481cca58c847895712713f9d8477698c831b1" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:1ebe89b7e5c0b65d0be404cb8689106ae30c785d460b26ca74fa1897a1d004ee" [label="sha256:1ebe89b7e5c0b65d0be404cb8689106ae30c785d460b26ca74fa1897a1d004ee" shape="plaintext"];
  "sha256:86004eeb3da6b3600d5180df89549c2d9ff38f475302c4797aa9560d8150bfe0" -> "sha256:d00abd70677303706c6ae34c15ec3711e7b6e70cacf2fb86815c1aee0d0c3430" [label=""];
  "sha256:d00abd70677303706c6ae34c15ec3711e7b6e70cacf2fb86815c1aee0d0c3430" -> "sha256:34aa0aa37df2b0ac4861ecd42db296c67095df0c60002d651dc0608e998f5d10" [label=""];
  "sha256:34aa0aa37df2b0ac4861ecd42db296c67095df0c60002d651dc0608e998f5d10" -> "sha256:be70dc3e29aa80fc2a8951716851eb05a27d7e92865680f169fca7e5750e462c" [label=""];
  "sha256:be70dc3e29aa80fc2a8951716851eb05a27d7e92865680f169fca7e5750e462c" -> "sha256:bd8b02242fb4b92870a52b9eaa1ea624b5e23009712e9415f30f090fbe19d6fc" [label=""];
  "sha256:adcdea1b07d9751880ab1bc8aade30d0d58957143284a67c1d6b7ee5286c0ceb" -> "sha256:bd8b02242fb4b92870a52b9eaa1ea624b5e23009712e9415f30f090fbe19d6fc" [label=""];
  "sha256:bd8b02242fb4b92870a52b9eaa1ea624b5e23009712e9415f30f090fbe19d6fc" -> "sha256:dfa5332ed85ec06deceba3da339a917f5e681013eb1c4fc4f282681e16c092b9" [label=""];
  "sha256:dfa5332ed85ec06deceba3da339a917f5e681013eb1c4fc4f282681e16c092b9" -> "sha256:0c1eff18863fbc793119a33f43a481cca58c847895712713f9d8477698c831b1" [label=""];
  "sha256:adcdea1b07d9751880ab1bc8aade30d0d58957143284a67c1d6b7ee5286c0ceb" -> "sha256:0c1eff18863fbc793119a33f43a481cca58c847895712713f9d8477698c831b1" [label=""];
  "sha256:0c1eff18863fbc793119a33f43a481cca58c847895712713f9d8477698c831b1" -> "sha256:1ebe89b7e5c0b65d0be404cb8689106ae30c785d460b26ca74fa1897a1d004ee" [label=""];
}

