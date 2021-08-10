[app/sources/301317202.Dockerfile]
digraph {
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" [label="docker-image://docker.io/tudorg/xgo-base:latest" shape="ellipse"];
  "sha256:3b17595cf12a8429a20b70d267c69be2884a2db48c5c78f602630e651572895f" [label="local://context" shape="ellipse"];
  "sha256:0c6644d30bc24ef450039382ae5642c6ef3d459c8c556a8cbae1a321da8e958e" [label="copy{src=/build_go_daemon.sh, dest=/build_go_daemon.sh}" shape="note"];
  "sha256:bab569fac7e25606fb1eabf74a6bcda7e735884562f788e11150bd2dbb143969" [label="/bin/sh -c chmod +x $BUILD_GO_DAEMON" shape="box"];
  "sha256:03eb107dfcf7b80ecbf242b48ff57c54b01823bb6d4c9c2394d108bb7fe99130" [label="sha256:03eb107dfcf7b80ecbf242b48ff57c54b01823bb6d4c9c2394d108bb7fe99130" shape="plaintext"];
  "sha256:bbb5434fa58e89c6b5fe2aa5325cdf970da8c6409fdea28cf8fb477c709b450f" -> "sha256:0c6644d30bc24ef450039382ae5642c6ef3d459c8c556a8cbae1a321da8e958e" [label=""];
  "sha256:3b17595cf12a8429a20b70d267c69be2884a2db48c5c78f602630e651572895f" -> "sha256:0c6644d30bc24ef450039382ae5642c6ef3d459c8c556a8cbae1a321da8e958e" [label=""];
  "sha256:0c6644d30bc24ef450039382ae5642c6ef3d459c8c556a8cbae1a321da8e958e" -> "sha256:bab569fac7e25606fb1eabf74a6bcda7e735884562f788e11150bd2dbb143969" [label=""];
  "sha256:bab569fac7e25606fb1eabf74a6bcda7e735884562f788e11150bd2dbb143969" -> "sha256:03eb107dfcf7b80ecbf242b48ff57c54b01823bb6d4c9c2394d108bb7fe99130" [label=""];
}

