[app/sources/213735965.Dockerfile]
digraph {
  "sha256:5d54768223d832f4b4cd02a052691080e8f7adb1751919ecefab93a66f5304bf" [label="docker-image://docker.io/nodesource/fedora24-base:latest" shape="ellipse"];
  "sha256:5589e465e2b4628289e3fde1dff39b15e74453b125792cced853148fa0fd77c4" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_6.x/fc/24/x86_64/nodejs-6.4.0-1nodesource.fc24.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:e41eba4c948c8268fd3c08c80a392c0388c9dca7d44e2e2389bc7e1a66a71b4b" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:e7caaf903c7ee810187b70a7f123f12c9ee90d4fff4cf79d577005ec1bf6982e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:61a9c1a928883b6f030655040022fc3aaae1e76e4b25d7cada786ecdeb2d5ae3" [label="sha256:61a9c1a928883b6f030655040022fc3aaae1e76e4b25d7cada786ecdeb2d5ae3" shape="plaintext"];
  "sha256:5d54768223d832f4b4cd02a052691080e8f7adb1751919ecefab93a66f5304bf" -> "sha256:5589e465e2b4628289e3fde1dff39b15e74453b125792cced853148fa0fd77c4" [label=""];
  "sha256:5589e465e2b4628289e3fde1dff39b15e74453b125792cced853148fa0fd77c4" -> "sha256:e41eba4c948c8268fd3c08c80a392c0388c9dca7d44e2e2389bc7e1a66a71b4b" [label=""];
  "sha256:e41eba4c948c8268fd3c08c80a392c0388c9dca7d44e2e2389bc7e1a66a71b4b" -> "sha256:e7caaf903c7ee810187b70a7f123f12c9ee90d4fff4cf79d577005ec1bf6982e" [label=""];
  "sha256:e7caaf903c7ee810187b70a7f123f12c9ee90d4fff4cf79d577005ec1bf6982e" -> "sha256:61a9c1a928883b6f030655040022fc3aaae1e76e4b25d7cada786ecdeb2d5ae3" [label=""];
}

