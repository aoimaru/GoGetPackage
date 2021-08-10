[app/sources/252787008.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7ad55fb603e4eed73ec9930e25abeded963adbce1960b4d3158ef09bc3f9bbed" [label="/bin/sh -c apt-get update && apt-get install sphinxsearch -y" shape="box"];
  "sha256:97cc52b555a10af3b90a0e56d74408e5df206b9eab1f486d7e559a5092c7125c" [label="/bin/sh -c apt-get autoremove -y && apt-get autoclean" shape="box"];
  "sha256:87f9444386819affa6753c62a521285e8c2282e4b56bbf125eca51857ca0e4a6" [label="/bin/sh -c cp /etc/sphinxsearch/sphinx-min.conf.dist /etc/sphinxsearch/sphinx.conf" shape="box"];
  "sha256:aa806056a368d2e0c4f9c4cb7aaba50e5c2b42d7240127348b27c77d3c6cced9" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:0bf3a314f48187c6cfc3d2d953ef2114dccc697185a1410ef316a6a1261f9417" [label="sha256:0bf3a314f48187c6cfc3d2d953ef2114dccc697185a1410ef316a6a1261f9417" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:7ad55fb603e4eed73ec9930e25abeded963adbce1960b4d3158ef09bc3f9bbed" [label=""];
  "sha256:7ad55fb603e4eed73ec9930e25abeded963adbce1960b4d3158ef09bc3f9bbed" -> "sha256:97cc52b555a10af3b90a0e56d74408e5df206b9eab1f486d7e559a5092c7125c" [label=""];
  "sha256:97cc52b555a10af3b90a0e56d74408e5df206b9eab1f486d7e559a5092c7125c" -> "sha256:87f9444386819affa6753c62a521285e8c2282e4b56bbf125eca51857ca0e4a6" [label=""];
  "sha256:87f9444386819affa6753c62a521285e8c2282e4b56bbf125eca51857ca0e4a6" -> "sha256:aa806056a368d2e0c4f9c4cb7aaba50e5c2b42d7240127348b27c77d3c6cced9" [label=""];
  "sha256:aa806056a368d2e0c4f9c4cb7aaba50e5c2b42d7240127348b27c77d3c6cced9" -> "sha256:0bf3a314f48187c6cfc3d2d953ef2114dccc697185a1410ef316a6a1261f9417" [label=""];
}

