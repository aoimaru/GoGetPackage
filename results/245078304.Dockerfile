[app/sources/245078304.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d6e5947d7a2f323077d9392e62295c327281cfc6c1f196ba98596b609a49c982" [label="/bin/sh -c apt-get update &&     apt-get install -y python                        libpq-dev                        libjpeg-dev                        libfreetype6-dev                        python-dev                        python-pip     && apt-get clean     && apt-get autoclean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:08855c0521344a7198b8178e061c0c6ad25dedcad0da0fa0e20a971171b2ad63" [label="local://context" shape="ellipse"];
  "sha256:64b596c38588a76c5bc7c65d5ca47a76f41ff3458237df10b9b8007bb6c7ef15" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:0ecb411cad1970719a507bf22db9e5c20f810eadd207a964404b61c59e9fb1dc" [label="/bin/sh -c cd /app; pip install -r requirements.txt" shape="box"];
  "sha256:03d271cb01e7fa7bc1e030a5d12427f1af1f0060f47b65800f99ffb56985cf4e" [label="mkdir{path=/app}" shape="note"];
  "sha256:87ae79dd620352f46ee6f67120b6aec8854aea50c1bfa72238760b6360a55860" [label="/bin/sh -c python db_store.py" shape="box"];
  "sha256:5d8413ca8640d29a3d3079560d290564ac8f8214f12b97b8bae6106bcb7fd76b" [label="sha256:5d8413ca8640d29a3d3079560d290564ac8f8214f12b97b8bae6106bcb7fd76b" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d6e5947d7a2f323077d9392e62295c327281cfc6c1f196ba98596b609a49c982" [label=""];
  "sha256:d6e5947d7a2f323077d9392e62295c327281cfc6c1f196ba98596b609a49c982" -> "sha256:64b596c38588a76c5bc7c65d5ca47a76f41ff3458237df10b9b8007bb6c7ef15" [label=""];
  "sha256:08855c0521344a7198b8178e061c0c6ad25dedcad0da0fa0e20a971171b2ad63" -> "sha256:64b596c38588a76c5bc7c65d5ca47a76f41ff3458237df10b9b8007bb6c7ef15" [label=""];
  "sha256:64b596c38588a76c5bc7c65d5ca47a76f41ff3458237df10b9b8007bb6c7ef15" -> "sha256:0ecb411cad1970719a507bf22db9e5c20f810eadd207a964404b61c59e9fb1dc" [label=""];
  "sha256:0ecb411cad1970719a507bf22db9e5c20f810eadd207a964404b61c59e9fb1dc" -> "sha256:03d271cb01e7fa7bc1e030a5d12427f1af1f0060f47b65800f99ffb56985cf4e" [label=""];
  "sha256:03d271cb01e7fa7bc1e030a5d12427f1af1f0060f47b65800f99ffb56985cf4e" -> "sha256:87ae79dd620352f46ee6f67120b6aec8854aea50c1bfa72238760b6360a55860" [label=""];
  "sha256:87ae79dd620352f46ee6f67120b6aec8854aea50c1bfa72238760b6360a55860" -> "sha256:5d8413ca8640d29a3d3079560d290564ac8f8214f12b97b8bae6106bcb7fd76b" [label=""];
}

