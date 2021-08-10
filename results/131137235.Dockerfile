[app/sources/131137235.Dockerfile]
digraph {
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" [label="local://context" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:a715ee172d475d4ed05e299d51edbb8f2dcac2a28c06f7bbfe6b8dc4c2c4b8c1" [label="copy{src=/docker/builds/apt.bash, dest=/tmp/}" shape="note"];
  "sha256:54951e18db00c53ab6a449b2613b67a9d3d95a2914bbc010ac4854dcf7246ca4" [label="/bin/sh -c bash /tmp/apt.bash" shape="box"];
  "sha256:b27cf3f521a5af4ae5852877d72f01200402d4df13d3e9ba0d6db0ddc6ce5d2a" [label="copy{src=/docker/builds/draco.bash, dest=/tmp/}" shape="note"];
  "sha256:c7febb44a433b40c3d2d0c2b2a77a3fca9c8c045bf6c237359d21a2c6f9079ec" [label="copy{src=/docker/builds/vhacd.bash, dest=/tmp/}" shape="note"];
  "sha256:ef45730ba21226db990f3f882bf737a57a0776dbcae955603ff0b73f9d442fed" [label="copy{src=/docker/builds/builds.bash, dest=/tmp/}" shape="note"];
  "sha256:27aef3536730e362d1104ddb41b12fcbacebdc8661e736748cf6dbdc3b212e37" [label="/bin/sh -c bash /tmp/builds.bash" shape="box"];
  "sha256:01a0d63de3c63242ed3c71a9127e253cdb5d73998812a2c866e7867c0ff9f903" [label="copy{src=/docker/config/xvfb.supervisord.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:4cd785070e2207e880875ec4e06e13857c490a61c68c5b336ef038b74add411b" [label="/bin/sh -c useradd -m -s /bin/bash user" shape="box"];
  "sha256:ad3d1d8439008772ed243dfdccd7f1788ca29e34b30656caec7675f97206a6da" [label="/bin/sh -c chown -R user:user /tmp" shape="box"];
  "sha256:888fdddd2cfaa74a6c2b9cfdc836fe65b2b15d76647faef14d89297c261958fa" [label="copy{src=/docker/builds/conda.bash, dest=/tmp/}" shape="note"];
  "sha256:6923bcac451edadb5e705d95c83d19eda8f5ea28595f4ff55848e42bc3cf9c67" [label="copy{src=/, dest=/tmp/trimesh}" shape="note"];
  "sha256:7d93a560f4987ec1ddbcf16f93ff0288868f362bc66de653642fe86e98dfe2ef" [label="/bin/sh -c bash /tmp/conda.bash" shape="box"];
  "sha256:813f93811bc7291e4703799ee8649f613365bc0876eda828a5f06d62524aa408" [label="/bin/sh -c pytest -p no:warnings -p no:alldep /tmp/trimesh/tests" shape="box"];
  "sha256:bc1f5f9bd5dad70dd668d3ac4251e9c1d9db667d89d062e4d3f6a5f3b3386709" [label="sha256:bc1f5f9bd5dad70dd668d3ac4251e9c1d9db667d89d062e4d3f6a5f3b3386709" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:a715ee172d475d4ed05e299d51edbb8f2dcac2a28c06f7bbfe6b8dc4c2c4b8c1" [label=""];
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" -> "sha256:a715ee172d475d4ed05e299d51edbb8f2dcac2a28c06f7bbfe6b8dc4c2c4b8c1" [label=""];
  "sha256:a715ee172d475d4ed05e299d51edbb8f2dcac2a28c06f7bbfe6b8dc4c2c4b8c1" -> "sha256:54951e18db00c53ab6a449b2613b67a9d3d95a2914bbc010ac4854dcf7246ca4" [label=""];
  "sha256:54951e18db00c53ab6a449b2613b67a9d3d95a2914bbc010ac4854dcf7246ca4" -> "sha256:b27cf3f521a5af4ae5852877d72f01200402d4df13d3e9ba0d6db0ddc6ce5d2a" [label=""];
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" -> "sha256:b27cf3f521a5af4ae5852877d72f01200402d4df13d3e9ba0d6db0ddc6ce5d2a" [label=""];
  "sha256:b27cf3f521a5af4ae5852877d72f01200402d4df13d3e9ba0d6db0ddc6ce5d2a" -> "sha256:c7febb44a433b40c3d2d0c2b2a77a3fca9c8c045bf6c237359d21a2c6f9079ec" [label=""];
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" -> "sha256:c7febb44a433b40c3d2d0c2b2a77a3fca9c8c045bf6c237359d21a2c6f9079ec" [label=""];
  "sha256:c7febb44a433b40c3d2d0c2b2a77a3fca9c8c045bf6c237359d21a2c6f9079ec" -> "sha256:ef45730ba21226db990f3f882bf737a57a0776dbcae955603ff0b73f9d442fed" [label=""];
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" -> "sha256:ef45730ba21226db990f3f882bf737a57a0776dbcae955603ff0b73f9d442fed" [label=""];
  "sha256:ef45730ba21226db990f3f882bf737a57a0776dbcae955603ff0b73f9d442fed" -> "sha256:27aef3536730e362d1104ddb41b12fcbacebdc8661e736748cf6dbdc3b212e37" [label=""];
  "sha256:27aef3536730e362d1104ddb41b12fcbacebdc8661e736748cf6dbdc3b212e37" -> "sha256:01a0d63de3c63242ed3c71a9127e253cdb5d73998812a2c866e7867c0ff9f903" [label=""];
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" -> "sha256:01a0d63de3c63242ed3c71a9127e253cdb5d73998812a2c866e7867c0ff9f903" [label=""];
  "sha256:01a0d63de3c63242ed3c71a9127e253cdb5d73998812a2c866e7867c0ff9f903" -> "sha256:4cd785070e2207e880875ec4e06e13857c490a61c68c5b336ef038b74add411b" [label=""];
  "sha256:4cd785070e2207e880875ec4e06e13857c490a61c68c5b336ef038b74add411b" -> "sha256:ad3d1d8439008772ed243dfdccd7f1788ca29e34b30656caec7675f97206a6da" [label=""];
  "sha256:ad3d1d8439008772ed243dfdccd7f1788ca29e34b30656caec7675f97206a6da" -> "sha256:888fdddd2cfaa74a6c2b9cfdc836fe65b2b15d76647faef14d89297c261958fa" [label=""];
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" -> "sha256:888fdddd2cfaa74a6c2b9cfdc836fe65b2b15d76647faef14d89297c261958fa" [label=""];
  "sha256:888fdddd2cfaa74a6c2b9cfdc836fe65b2b15d76647faef14d89297c261958fa" -> "sha256:6923bcac451edadb5e705d95c83d19eda8f5ea28595f4ff55848e42bc3cf9c67" [label=""];
  "sha256:bdd827828950e7f8cf6f1144d5f12610dac2c15e23ec314b0632a57f1e79a5d6" -> "sha256:6923bcac451edadb5e705d95c83d19eda8f5ea28595f4ff55848e42bc3cf9c67" [label=""];
  "sha256:6923bcac451edadb5e705d95c83d19eda8f5ea28595f4ff55848e42bc3cf9c67" -> "sha256:7d93a560f4987ec1ddbcf16f93ff0288868f362bc66de653642fe86e98dfe2ef" [label=""];
  "sha256:7d93a560f4987ec1ddbcf16f93ff0288868f362bc66de653642fe86e98dfe2ef" -> "sha256:813f93811bc7291e4703799ee8649f613365bc0876eda828a5f06d62524aa408" [label=""];
  "sha256:813f93811bc7291e4703799ee8649f613365bc0876eda828a5f06d62524aa408" -> "sha256:bc1f5f9bd5dad70dd668d3ac4251e9c1d9db667d89d062e4d3f6a5f3b3386709" [label=""];
}

