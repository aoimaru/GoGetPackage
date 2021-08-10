[app/sources/327104094.Dockerfile]
digraph {
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" [label="docker-image://docker.io/library/golang:1.10.1" shape="ellipse"];
  "sha256:1b29bf3d1d359417d8b59e435782a599fa09dac82912980d11dcc2a8c94503f9" [label="mkdir{path=/go/src/github.com/mchmarny/simple-app}" shape="note"];
  "sha256:ae03899900fb7bb051ed12637a0c59e9ae1313e7ab68a935c10177120f34c00f" [label="local://context" shape="ellipse"];
  "sha256:6f6eef45accbb35e41d942749f277d3eabbd51abc40e970e6fc509a658df7e4b" [label="copy{src=/, dest=/go/src/github.com/mchmarny/simple-app/}" shape="note"];
  "sha256:d3be14fb93b4d0ba87130cb2d8c92978e3bf1c0da8cdd42794b1e6376e4e03f0" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -v -o app" shape="box"];
  "sha256:8848969b109ed6d70bde872f4ed882a821c666ed8fa9e6ebe25fa511cf0f4aa1" [label="copy{src=/go/src/github.com/mchmarny/simple-app/app, dest=/}" shape="note"];
  "sha256:87ae39f49888288c7eb96da24117745d8daa377c135d146989af7ed221512167" [label="sha256:87ae39f49888288c7eb96da24117745d8daa377c135d146989af7ed221512167" shape="plaintext"];
  "sha256:8c71afdae5fbf4abc175ffa28d69e96d36e58e2d36683c701e196526b8da07cc" -> "sha256:1b29bf3d1d359417d8b59e435782a599fa09dac82912980d11dcc2a8c94503f9" [label=""];
  "sha256:1b29bf3d1d359417d8b59e435782a599fa09dac82912980d11dcc2a8c94503f9" -> "sha256:6f6eef45accbb35e41d942749f277d3eabbd51abc40e970e6fc509a658df7e4b" [label=""];
  "sha256:ae03899900fb7bb051ed12637a0c59e9ae1313e7ab68a935c10177120f34c00f" -> "sha256:6f6eef45accbb35e41d942749f277d3eabbd51abc40e970e6fc509a658df7e4b" [label=""];
  "sha256:6f6eef45accbb35e41d942749f277d3eabbd51abc40e970e6fc509a658df7e4b" -> "sha256:d3be14fb93b4d0ba87130cb2d8c92978e3bf1c0da8cdd42794b1e6376e4e03f0" [label=""];
  "sha256:d3be14fb93b4d0ba87130cb2d8c92978e3bf1c0da8cdd42794b1e6376e4e03f0" -> "sha256:8848969b109ed6d70bde872f4ed882a821c666ed8fa9e6ebe25fa511cf0f4aa1" [label=""];
  "sha256:8848969b109ed6d70bde872f4ed882a821c666ed8fa9e6ebe25fa511cf0f4aa1" -> "sha256:87ae39f49888288c7eb96da24117745d8daa377c135d146989af7ed221512167" [label=""];
}

