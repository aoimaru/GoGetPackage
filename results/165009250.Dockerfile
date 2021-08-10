[app/sources/165009250.Dockerfile]
digraph {
  "sha256:ae914ca32beebcfa25901c1a851e86a09702435ef8ac9ec4a0a06207c531ba78" [label="docker-image://registry.access.redhat.com/openshift3/nodejs-010-rhel7:latest" shape="ellipse"];
  "sha256:63ffa9880567b602541474f2f9af2b31af86e91eea2dba73245d3294fa1b7df7" [label="/bin/sh -c sed -i -e '1a curl -so /tmp/ca_cert http://cacert/; npm config set cafile /tmp/ca_cert' /usr/libexec/s2i/assemble" shape="box"];
  "sha256:23403871a3a0a0c234cfdd3f3d4c300e56e37a4841b31df8e9f4d1ba84ef3f0c" [label="sha256:23403871a3a0a0c234cfdd3f3d4c300e56e37a4841b31df8e9f4d1ba84ef3f0c" shape="plaintext"];
  "sha256:ae914ca32beebcfa25901c1a851e86a09702435ef8ac9ec4a0a06207c531ba78" -> "sha256:63ffa9880567b602541474f2f9af2b31af86e91eea2dba73245d3294fa1b7df7" [label=""];
  "sha256:63ffa9880567b602541474f2f9af2b31af86e91eea2dba73245d3294fa1b7df7" -> "sha256:23403871a3a0a0c234cfdd3f3d4c300e56e37a4841b31df8e9f4d1ba84ef3f0c" [label=""];
}

