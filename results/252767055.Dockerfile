[app/sources/252767055.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:71ca9914e6b87470eb9227c6f5e155461249655bcb04c08228ba0e406ed62e09" [label="/bin/sh -c yum -y upgrade" shape="box"];
  "sha256:0cb0031a6d3cb175b979bb9b741f1290fd6d3f3f5ec358c3aa46b7b072c32b9e" [label="/bin/sh -c yum -y install rpm-build rpmdevtools yum-utils" shape="box"];
  "sha256:cfb2683b5d686d2a074bdbdc6fb0cc1f377e95e0ec199af47c0c32f3b0c9331a" [label="/bin/sh -c ln -sf ${RPM_BUILD_DIR} /root/rpmbuild" shape="box"];
  "sha256:c22b7c84ef910ec46816ea93430a602c893f2840e91c2abcee5a2f31ca0f0589" [label="/bin/sh -c mkdir -p ${SOURCES} ${WORKSPACE} ${OUTPUT} ${RPM_BUILD_DIR}/{BUILD,RPMS,SOURCES,SPECS,SRPMS}" shape="box"];
  "sha256:845759afcbc21b89cc72bdf37cb5c2b24d80fc1f3039f63e803a7a826f7e7352" [label="local://context" shape="ellipse"];
  "sha256:5af66605a83406c256f9c342213c1831c9ff6c69c192439461b93c6d6f781ed6" [label="copy{src=/assets/build, dest=/usr/bin/build}" shape="note"];
  "sha256:27fadf5ba22feb250d0f62f170e0063514fcf973d2e59ed7bd25467e7b5d4f16" [label="sha256:27fadf5ba22feb250d0f62f170e0063514fcf973d2e59ed7bd25467e7b5d4f16" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:71ca9914e6b87470eb9227c6f5e155461249655bcb04c08228ba0e406ed62e09" [label=""];
  "sha256:71ca9914e6b87470eb9227c6f5e155461249655bcb04c08228ba0e406ed62e09" -> "sha256:0cb0031a6d3cb175b979bb9b741f1290fd6d3f3f5ec358c3aa46b7b072c32b9e" [label=""];
  "sha256:0cb0031a6d3cb175b979bb9b741f1290fd6d3f3f5ec358c3aa46b7b072c32b9e" -> "sha256:cfb2683b5d686d2a074bdbdc6fb0cc1f377e95e0ec199af47c0c32f3b0c9331a" [label=""];
  "sha256:cfb2683b5d686d2a074bdbdc6fb0cc1f377e95e0ec199af47c0c32f3b0c9331a" -> "sha256:c22b7c84ef910ec46816ea93430a602c893f2840e91c2abcee5a2f31ca0f0589" [label=""];
  "sha256:c22b7c84ef910ec46816ea93430a602c893f2840e91c2abcee5a2f31ca0f0589" -> "sha256:5af66605a83406c256f9c342213c1831c9ff6c69c192439461b93c6d6f781ed6" [label=""];
  "sha256:845759afcbc21b89cc72bdf37cb5c2b24d80fc1f3039f63e803a7a826f7e7352" -> "sha256:5af66605a83406c256f9c342213c1831c9ff6c69c192439461b93c6d6f781ed6" [label=""];
  "sha256:5af66605a83406c256f9c342213c1831c9ff6c69c192439461b93c6d6f781ed6" -> "sha256:27fadf5ba22feb250d0f62f170e0063514fcf973d2e59ed7bd25467e7b5d4f16" [label=""];
}

