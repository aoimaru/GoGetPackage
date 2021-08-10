[app/sources/245123769.Dockerfile]
digraph {
  "sha256:73dd4ea5ab699e512c9a589fc99a86f8d74022547ebf471588862943b7b34ef0" [label="docker-image://docker.io/wyntuition/angular2-slim:latest" shape="ellipse"];
  "sha256:b6b2d4fd20ca2df705e0a30b99d5911c8b9c676b3cf3b320c229a0d6c76fb049" [label="/bin/sh -c apk update &&     apk upgrade &&     apk add vim" shape="box"];
  "sha256:f353cff389094cfa864a755f6c9ca36ba89fcb3b9b7ddd269510de21ae74a7e0" [label="local://context" shape="ellipse"];
  "sha256:89e478c56844ac053cd702650e035eaf3d4af23fe90b1a65bf5b788603845eb6" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:3eebe4b9f3f5f09ec9142cb54213bf173681602e593707470a6983ba7f17a4dd" [label="mkdir{path=/app}" shape="note"];
  "sha256:3c784c171fc51ad2014bc5ec5e0d35cd922ef644889c4c3d5a85c2bb779b945a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fa4f5eedda6eca1b39ce6634bb1957f9340234b9a614d2128c062949c960fad1" [label="sha256:fa4f5eedda6eca1b39ce6634bb1957f9340234b9a614d2128c062949c960fad1" shape="plaintext"];
  "sha256:73dd4ea5ab699e512c9a589fc99a86f8d74022547ebf471588862943b7b34ef0" -> "sha256:b6b2d4fd20ca2df705e0a30b99d5911c8b9c676b3cf3b320c229a0d6c76fb049" [label=""];
  "sha256:b6b2d4fd20ca2df705e0a30b99d5911c8b9c676b3cf3b320c229a0d6c76fb049" -> "sha256:89e478c56844ac053cd702650e035eaf3d4af23fe90b1a65bf5b788603845eb6" [label=""];
  "sha256:f353cff389094cfa864a755f6c9ca36ba89fcb3b9b7ddd269510de21ae74a7e0" -> "sha256:89e478c56844ac053cd702650e035eaf3d4af23fe90b1a65bf5b788603845eb6" [label=""];
  "sha256:89e478c56844ac053cd702650e035eaf3d4af23fe90b1a65bf5b788603845eb6" -> "sha256:3eebe4b9f3f5f09ec9142cb54213bf173681602e593707470a6983ba7f17a4dd" [label=""];
  "sha256:3eebe4b9f3f5f09ec9142cb54213bf173681602e593707470a6983ba7f17a4dd" -> "sha256:3c784c171fc51ad2014bc5ec5e0d35cd922ef644889c4c3d5a85c2bb779b945a" [label=""];
  "sha256:3c784c171fc51ad2014bc5ec5e0d35cd922ef644889c4c3d5a85c2bb779b945a" -> "sha256:fa4f5eedda6eca1b39ce6634bb1957f9340234b9a614d2128c062949c960fad1" [label=""];
}

