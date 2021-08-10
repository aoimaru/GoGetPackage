[app/sources/315795929.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:f321b304e6232602cbd3e923e471b9e2f85eee0e59f8bcd3e9645e6facab83bd" [label="/bin/sh -c npm install -g gitbook-cli" shape="box"];
  "sha256:6ea5a95812ce0b22832c499c753fe47fa876cfe7ef7ac6e1bac060745022ba0a" [label="/bin/sh -c gitbook fetch 3.2.3" shape="box"];
  "sha256:3445ad296d7ac80159fd4e76b808bffe99d0e35cee4b250cde271470d36c96d5" [label="sha256:3445ad296d7ac80159fd4e76b808bffe99d0e35cee4b250cde271470d36c96d5" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:f321b304e6232602cbd3e923e471b9e2f85eee0e59f8bcd3e9645e6facab83bd" [label=""];
  "sha256:f321b304e6232602cbd3e923e471b9e2f85eee0e59f8bcd3e9645e6facab83bd" -> "sha256:6ea5a95812ce0b22832c499c753fe47fa876cfe7ef7ac6e1bac060745022ba0a" [label=""];
  "sha256:6ea5a95812ce0b22832c499c753fe47fa876cfe7ef7ac6e1bac060745022ba0a" -> "sha256:3445ad296d7ac80159fd4e76b808bffe99d0e35cee4b250cde271470d36c96d5" [label=""];
}

