[app/sources/213735589.Dockerfile]
digraph {
  "sha256:578c7e8e52323786d9f14b1a94a34ef3bd060ce1bf9e786f781785de0100e699" [label="docker-image://docker.io/nodesource/fedora20-base:latest" shape="ellipse"];
  "sha256:479f2098ea070ada4b6d2c3e7bd170b225ba753031b1a96ac054a5fa86ebfc12" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub/fc/20/x86_64/nodejs-0.10.38-1nodesource.fc20.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:04bad61fba6d9d6b4489b4476fef8fe73da0e37fc55d279bc15c058b8300aa37" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:145c63dc8602de439c907f0c57e84fe26b7b2b38e18515db1080e5a8a1e923d3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8800d9832fc9afb423e5ae673d7a6397d1ca9f7dc583020765a05c1cd16499d9" [label="sha256:8800d9832fc9afb423e5ae673d7a6397d1ca9f7dc583020765a05c1cd16499d9" shape="plaintext"];
  "sha256:578c7e8e52323786d9f14b1a94a34ef3bd060ce1bf9e786f781785de0100e699" -> "sha256:479f2098ea070ada4b6d2c3e7bd170b225ba753031b1a96ac054a5fa86ebfc12" [label=""];
  "sha256:479f2098ea070ada4b6d2c3e7bd170b225ba753031b1a96ac054a5fa86ebfc12" -> "sha256:04bad61fba6d9d6b4489b4476fef8fe73da0e37fc55d279bc15c058b8300aa37" [label=""];
  "sha256:04bad61fba6d9d6b4489b4476fef8fe73da0e37fc55d279bc15c058b8300aa37" -> "sha256:145c63dc8602de439c907f0c57e84fe26b7b2b38e18515db1080e5a8a1e923d3" [label=""];
  "sha256:145c63dc8602de439c907f0c57e84fe26b7b2b38e18515db1080e5a8a1e923d3" -> "sha256:8800d9832fc9afb423e5ae673d7a6397d1ca9f7dc583020765a05c1cd16499d9" [label=""];
}

