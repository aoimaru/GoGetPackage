[app/sources/206615088.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:ec09b168948baf4f9749fffa1f98f0bdbeca652d589ed21c0d1f46f13f77abd6" [label="/bin/sh -c apt-get update -yqq &&     apt-get upgrade -yqq &&     apt-get install imagemagick -yqq &&     npm install -g -q gulp yarn &&     apt-get clean -yqq &&     apt-get autoremove -yqq" shape="box"];
  "sha256:be578bd1b7fef78480bd50c420cc2b4c59aaf38e608b9c4b6ae3f62c069e8d43" [label="sha256:be578bd1b7fef78480bd50c420cc2b4c59aaf38e608b9c4b6ae3f62c069e8d43" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:ec09b168948baf4f9749fffa1f98f0bdbeca652d589ed21c0d1f46f13f77abd6" [label=""];
  "sha256:ec09b168948baf4f9749fffa1f98f0bdbeca652d589ed21c0d1f46f13f77abd6" -> "sha256:be578bd1b7fef78480bd50c420cc2b4c59aaf38e608b9c4b6ae3f62c069e8d43" [label=""];
}

