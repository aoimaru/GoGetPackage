[app/sources/252768586.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:907bbbc0de56e07e83fba74061bc6a21ee544aca78d8615a857ba6c458215fa1" [label="local://context" shape="ellipse"];
  "sha256:9eaf00e2ff4dc31dac322c9d031867339ebaa628f5cb8c87bd2cfb044c7f9375" [label="copy{src=/files, dest=/tmp/files}" shape="note"];
  "sha256:03a3945e9c298ab2f9bb3980f9fb83ae3d63aeec3119b640b074d9c37f966d09" [label="/bin/sh -c /tmp/files/initial.sh" shape="box"];
  "sha256:76169a83cfd9d38b4639cf805da7f243a533fbc01978166aed3ed0e0393878c3" [label="/bin/sh -c rm -fr /tmp/files" shape="box"];
  "sha256:d746732acfb26d42edc7f3117b60036a32e3a43df0580a9cc15e0e97e046e7d3" [label="sha256:d746732acfb26d42edc7f3117b60036a32e3a43df0580a9cc15e0e97e046e7d3" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9eaf00e2ff4dc31dac322c9d031867339ebaa628f5cb8c87bd2cfb044c7f9375" [label=""];
  "sha256:907bbbc0de56e07e83fba74061bc6a21ee544aca78d8615a857ba6c458215fa1" -> "sha256:9eaf00e2ff4dc31dac322c9d031867339ebaa628f5cb8c87bd2cfb044c7f9375" [label=""];
  "sha256:9eaf00e2ff4dc31dac322c9d031867339ebaa628f5cb8c87bd2cfb044c7f9375" -> "sha256:03a3945e9c298ab2f9bb3980f9fb83ae3d63aeec3119b640b074d9c37f966d09" [label=""];
  "sha256:03a3945e9c298ab2f9bb3980f9fb83ae3d63aeec3119b640b074d9c37f966d09" -> "sha256:76169a83cfd9d38b4639cf805da7f243a533fbc01978166aed3ed0e0393878c3" [label=""];
  "sha256:76169a83cfd9d38b4639cf805da7f243a533fbc01978166aed3ed0e0393878c3" -> "sha256:d746732acfb26d42edc7f3117b60036a32e3a43df0580a9cc15e0e97e046e7d3" [label=""];
}

