[app/sources/255257934.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:627326c5e4c25a476dfb0630da7cb9731d9a31d23d7f6ed917d61e6359e9222d" [label="local://context" shape="ellipse"];
  "sha256:960df2ab0cf906e354b02b99ece544513188a94c6e19649c749d1002178f1acf" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:399acd7159247ebd42dc7ee8ec423665519afd86109e55af5e22e214bd65b792" [label="mkdir{path=/app}" shape="note"];
  "sha256:91792f35eb9a69083910b0eca2d132fa26a7b8c373ddee4bff22ac58e4d7afe2" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4fc056b0b95b1536d6193604de7ef78720a04ed9328f070f6d970a88bcd8a507" [label="/bin/sh -c npm rebuild node-sass" shape="box"];
  "sha256:6c98429fb0e9d1d3af9331aa532ac6c794ea8f61cd85f585af2d67fb66e17ba0" [label="/bin/sh -c node node_modules/.bin/r.js -o rbuild.js" shape="box"];
  "sha256:73141337acd3c1f04581234829ce74e39e636a36087cba92430b362f7c54c656" [label="/bin/sh -c node node_modules/aurelia-cli/bin/aurelia-cli.js build --env $APP_ENV" shape="box"];
  "sha256:68365fa711b6ab5d0f7f2f28ac4add2aa8e61a4fd79c9773fc386bd2b1712438" [label="sha256:68365fa711b6ab5d0f7f2f28ac4add2aa8e61a4fd79c9773fc386bd2b1712438" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:960df2ab0cf906e354b02b99ece544513188a94c6e19649c749d1002178f1acf" [label=""];
  "sha256:627326c5e4c25a476dfb0630da7cb9731d9a31d23d7f6ed917d61e6359e9222d" -> "sha256:960df2ab0cf906e354b02b99ece544513188a94c6e19649c749d1002178f1acf" [label=""];
  "sha256:960df2ab0cf906e354b02b99ece544513188a94c6e19649c749d1002178f1acf" -> "sha256:399acd7159247ebd42dc7ee8ec423665519afd86109e55af5e22e214bd65b792" [label=""];
  "sha256:399acd7159247ebd42dc7ee8ec423665519afd86109e55af5e22e214bd65b792" -> "sha256:91792f35eb9a69083910b0eca2d132fa26a7b8c373ddee4bff22ac58e4d7afe2" [label=""];
  "sha256:91792f35eb9a69083910b0eca2d132fa26a7b8c373ddee4bff22ac58e4d7afe2" -> "sha256:4fc056b0b95b1536d6193604de7ef78720a04ed9328f070f6d970a88bcd8a507" [label=""];
  "sha256:4fc056b0b95b1536d6193604de7ef78720a04ed9328f070f6d970a88bcd8a507" -> "sha256:6c98429fb0e9d1d3af9331aa532ac6c794ea8f61cd85f585af2d67fb66e17ba0" [label=""];
  "sha256:6c98429fb0e9d1d3af9331aa532ac6c794ea8f61cd85f585af2d67fb66e17ba0" -> "sha256:73141337acd3c1f04581234829ce74e39e636a36087cba92430b362f7c54c656" [label=""];
  "sha256:73141337acd3c1f04581234829ce74e39e636a36087cba92430b362f7c54c656" -> "sha256:68365fa711b6ab5d0f7f2f28ac4add2aa8e61a4fd79c9773fc386bd2b1712438" [label=""];
}

