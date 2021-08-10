[app/sources/165009147.Dockerfile]
digraph {
  "sha256:ad49edb3354e9603ad55458afcb8fc40bf4adb1d9211c9cbda8e45b407c80bcd" [label="docker-image://registry.access.redhat.com/jboss-eap-6/eap64-openshift:latest" shape="ellipse"];
  "sha256:4a80bd3c885ef7053dbd106e86cd165a3d49a2a6f31401f5ff6eb0a723e686e4" [label="/bin/sh -c sed -i -e 's!mvn !mvn -Djavax.net.ssl.trustStore=/tmp/trust.jks -Djavax.net.ssl.trustStorePassword=password !' /usr/local/s2i/assemble" shape="box"];
  "sha256:dc56e3811855b109b966e45c2e02aac53d23f1273490fab52df2a2555c5e9e8e" [label="/bin/sh -c mv /usr/local/s2i/assemble /usr/local/s2i/_assemble" shape="box"];
  "sha256:95446b3a5aa506ae57296536552ad01780061871e2647aeaed76104a64e6689a" [label="local://context" shape="ellipse"];
  "sha256:3867e124e74bf4885944483901b93df078c1e4b04a895dea8f5487b7c6f6887b" [label="copy{src=/assemble, dest=/usr/local/s2i/assemble}" shape="note"];
  "sha256:ebe5beae4ff168abf4d193a536be78c3b0151d2aba5db727a30510327a8627ee" [label="sha256:ebe5beae4ff168abf4d193a536be78c3b0151d2aba5db727a30510327a8627ee" shape="plaintext"];
  "sha256:ad49edb3354e9603ad55458afcb8fc40bf4adb1d9211c9cbda8e45b407c80bcd" -> "sha256:4a80bd3c885ef7053dbd106e86cd165a3d49a2a6f31401f5ff6eb0a723e686e4" [label=""];
  "sha256:4a80bd3c885ef7053dbd106e86cd165a3d49a2a6f31401f5ff6eb0a723e686e4" -> "sha256:dc56e3811855b109b966e45c2e02aac53d23f1273490fab52df2a2555c5e9e8e" [label=""];
  "sha256:dc56e3811855b109b966e45c2e02aac53d23f1273490fab52df2a2555c5e9e8e" -> "sha256:3867e124e74bf4885944483901b93df078c1e4b04a895dea8f5487b7c6f6887b" [label=""];
  "sha256:95446b3a5aa506ae57296536552ad01780061871e2647aeaed76104a64e6689a" -> "sha256:3867e124e74bf4885944483901b93df078c1e4b04a895dea8f5487b7c6f6887b" [label=""];
  "sha256:3867e124e74bf4885944483901b93df078c1e4b04a895dea8f5487b7c6f6887b" -> "sha256:ebe5beae4ff168abf4d193a536be78c3b0151d2aba5db727a30510327a8627ee" [label=""];
}

