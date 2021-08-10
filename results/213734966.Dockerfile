[app/sources/213734966.Dockerfile]
digraph {
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" [label="docker-image://docker.io/nodesource/jessie-base:latest" shape="ellipse"];
  "sha256:2631769a432af069f2574bdf5448d472dd5eb5c4ace48c000cff2779d774f026" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_2.x/pool/main/i/iojs/iojs_2.3.4-1nodesource1~jessie1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:890a1f0df17460bd97a29347dcc35a1f804e94be2c9a733a4068260b9c644e8d" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:a17911ce5da0cdb900930df53eee646c89956e5abcafb9f8d989771bbb213d3e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:50e44b00469382a2b6ff5d70a089f263e35fad4463868f0135aa15095707599d" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:fc0f25d77eb3230f349c2d7c683b8a1c30ccde56bb7af4c5f1e2ab95215e6f64" [label="sha256:fc0f25d77eb3230f349c2d7c683b8a1c30ccde56bb7af4c5f1e2ab95215e6f64" shape="plaintext"];
  "sha256:d7dba969bdb2c702d1f22fb5a861f0297602c774933d428980064c8b07ef7dc7" -> "sha256:2631769a432af069f2574bdf5448d472dd5eb5c4ace48c000cff2779d774f026" [label=""];
  "sha256:2631769a432af069f2574bdf5448d472dd5eb5c4ace48c000cff2779d774f026" -> "sha256:890a1f0df17460bd97a29347dcc35a1f804e94be2c9a733a4068260b9c644e8d" [label=""];
  "sha256:890a1f0df17460bd97a29347dcc35a1f804e94be2c9a733a4068260b9c644e8d" -> "sha256:a17911ce5da0cdb900930df53eee646c89956e5abcafb9f8d989771bbb213d3e" [label=""];
  "sha256:a17911ce5da0cdb900930df53eee646c89956e5abcafb9f8d989771bbb213d3e" -> "sha256:50e44b00469382a2b6ff5d70a089f263e35fad4463868f0135aa15095707599d" [label=""];
  "sha256:50e44b00469382a2b6ff5d70a089f263e35fad4463868f0135aa15095707599d" -> "sha256:fc0f25d77eb3230f349c2d7c683b8a1c30ccde56bb7af4c5f1e2ab95215e6f64" [label=""];
}

