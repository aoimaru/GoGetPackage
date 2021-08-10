[app/sources/320101094.Dockerfile]
digraph {
  "sha256:9c72481af526be597acf49285a5fa714c7674fa8dcb866a564f3c5d8a97cd716" [label="docker-image://docker.io/webdevops/base:latest@sha256:11c3cdcceb69d1cfb9d6509530d4195d2cae80be8ec3450abaccf092d3116124" shape="ellipse"];
  "sha256:4c72a09c951f80d06e79cf47cba6849eebbb49c26ffdb451fe0aa59cbe570082" [label="/bin/sh -c /usr/local/bin/apt-install         liquidsoap         liquidsoap-plugin-all         mplayer         gstreamer0.10-plugins-base         gstreamer0.10-plugins-good     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:07b0637b85ac7634d8f962f18361e748606cd87eb95729e24698a805434b700d" [label="local://context" shape="ellipse"];
  "sha256:fe51d68ad57b8c19426abb4736a529c2911b52011aec531f79d515e2b746d4cf" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:fcc7b195cd11bd1241d852dd85d151c18dce0f230c8bfc951620dd03ad6fdbe7" [label="sha256:fcc7b195cd11bd1241d852dd85d151c18dce0f230c8bfc951620dd03ad6fdbe7" shape="plaintext"];
  "sha256:9c72481af526be597acf49285a5fa714c7674fa8dcb866a564f3c5d8a97cd716" -> "sha256:4c72a09c951f80d06e79cf47cba6849eebbb49c26ffdb451fe0aa59cbe570082" [label=""];
  "sha256:4c72a09c951f80d06e79cf47cba6849eebbb49c26ffdb451fe0aa59cbe570082" -> "sha256:fe51d68ad57b8c19426abb4736a529c2911b52011aec531f79d515e2b746d4cf" [label=""];
  "sha256:07b0637b85ac7634d8f962f18361e748606cd87eb95729e24698a805434b700d" -> "sha256:fe51d68ad57b8c19426abb4736a529c2911b52011aec531f79d515e2b746d4cf" [label=""];
  "sha256:fe51d68ad57b8c19426abb4736a529c2911b52011aec531f79d515e2b746d4cf" -> "sha256:fcc7b195cd11bd1241d852dd85d151c18dce0f230c8bfc951620dd03ad6fdbe7" [label=""];
}

