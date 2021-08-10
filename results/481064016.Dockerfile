[app/sources/481064016.Dockerfile]
digraph {
  "sha256:0a43f4a1c7b23501b64dd91e7150e3a961e8986c623e9167e4ac3c7e39986c6f" [label="docker-image://snowplow-docker-registry.bintray.io/snowplow/base-debian:0.1.0" shape="ellipse"];
  "sha256:ab29136529107cf71c3b7e3fca9b2eb57272d15496844382c0112191df7d4837" [label="/bin/sh -c mkdir -p /tmp/build &&     cd /tmp/build &&     wget -q http://dl.bintray.com/snowplow/snowplow-generic/${ARCHIVE} &&     unzip -d ${SNOWPLOW_BIN_PATH} ${ARCHIVE} &&     cd /tmp &&     rm -rf /tmp/build" shape="box"];
  "sha256:ded458312aaa3633f0410b7f150eb9f94c173912d4bb84d3e0cc6ee72bac86d4" [label="local://context" shape="ellipse"];
  "sha256:ed439daa0142a6184bd1be3d547b2565148e965cc5ef80f833a2c24dd8bdd005" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:54d327a8e1d04d5efa4327d878507f9c3be4ba6cef817ff8e3ca673954072508" [label="sha256:54d327a8e1d04d5efa4327d878507f9c3be4ba6cef817ff8e3ca673954072508" shape="plaintext"];
  "sha256:0a43f4a1c7b23501b64dd91e7150e3a961e8986c623e9167e4ac3c7e39986c6f" -> "sha256:ab29136529107cf71c3b7e3fca9b2eb57272d15496844382c0112191df7d4837" [label=""];
  "sha256:ab29136529107cf71c3b7e3fca9b2eb57272d15496844382c0112191df7d4837" -> "sha256:ed439daa0142a6184bd1be3d547b2565148e965cc5ef80f833a2c24dd8bdd005" [label=""];
  "sha256:ded458312aaa3633f0410b7f150eb9f94c173912d4bb84d3e0cc6ee72bac86d4" -> "sha256:ed439daa0142a6184bd1be3d547b2565148e965cc5ef80f833a2c24dd8bdd005" [label=""];
  "sha256:ed439daa0142a6184bd1be3d547b2565148e965cc5ef80f833a2c24dd8bdd005" -> "sha256:54d327a8e1d04d5efa4327d878507f9c3be4ba6cef817ff8e3ca673954072508" [label=""];
}

