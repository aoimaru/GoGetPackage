[app/sources/351810818.Dockerfile]
digraph {
  "sha256:879accff9f5188c9ab0173d2d75e76d16ef0e0a79ba9a149f5a0954caabe1225" [label="docker-image://quay.io/ucsc_cgl/spark-and-maven@sha256:dab7c604b2b786a23f7e3e0adfb2905f6ff4fa4377cb50b783d9d318f82a0373" shape="ellipse"];
  "sha256:a1479c5b61976dabbbac615c3d6ead6a0dab76af9d44f4e6aa944727b9343bf1" [label="mkdir{path=/home}" shape="note"];
  "sha256:1dc6f1f4ffcce2cb7bab1f5947161efb9855eb34e37b35bc667f03a4de27aa01" [label="/bin/sh -c git clone https://github.com/bigdatagenomics/mango.git" shape="box"];
  "sha256:6325b88e5349bfbe3d34d96b8ce11575aebafc0a4dbe371f4a89d7ccb594bc24" [label="mkdir{path=/home/mango}" shape="note"];
  "sha256:4849a2519fcbd55648fa76445540d8931d8d14ccac4077d886de136277b36da1" [label="/bin/sh -c /opt/apache-maven-3.3.9/bin/mvn package -DskipTests" shape="box"];
  "sha256:e28495e2eba9bb8de4e51a7bf36c501736e58868efda2b8e29cbb6c604f33011" [label="/bin/sh -c rm -rf /home/mango/.git" shape="box"];
  "sha256:e42f0545d1101b1422835c46d3211c5125909cd6b75bdfc1b8e0ba73f656df1b" [label="mkdir{path=/home/mango}" shape="note"];
  "sha256:2cc5e2bbc26f1bad330e312a1b4614d3dbb8d2bcdf3678ecfe0871be819b04d5" [label="sha256:2cc5e2bbc26f1bad330e312a1b4614d3dbb8d2bcdf3678ecfe0871be819b04d5" shape="plaintext"];
  "sha256:879accff9f5188c9ab0173d2d75e76d16ef0e0a79ba9a149f5a0954caabe1225" -> "sha256:a1479c5b61976dabbbac615c3d6ead6a0dab76af9d44f4e6aa944727b9343bf1" [label=""];
  "sha256:a1479c5b61976dabbbac615c3d6ead6a0dab76af9d44f4e6aa944727b9343bf1" -> "sha256:1dc6f1f4ffcce2cb7bab1f5947161efb9855eb34e37b35bc667f03a4de27aa01" [label=""];
  "sha256:1dc6f1f4ffcce2cb7bab1f5947161efb9855eb34e37b35bc667f03a4de27aa01" -> "sha256:6325b88e5349bfbe3d34d96b8ce11575aebafc0a4dbe371f4a89d7ccb594bc24" [label=""];
  "sha256:6325b88e5349bfbe3d34d96b8ce11575aebafc0a4dbe371f4a89d7ccb594bc24" -> "sha256:4849a2519fcbd55648fa76445540d8931d8d14ccac4077d886de136277b36da1" [label=""];
  "sha256:4849a2519fcbd55648fa76445540d8931d8d14ccac4077d886de136277b36da1" -> "sha256:e28495e2eba9bb8de4e51a7bf36c501736e58868efda2b8e29cbb6c604f33011" [label=""];
  "sha256:e28495e2eba9bb8de4e51a7bf36c501736e58868efda2b8e29cbb6c604f33011" -> "sha256:e42f0545d1101b1422835c46d3211c5125909cd6b75bdfc1b8e0ba73f656df1b" [label=""];
  "sha256:e42f0545d1101b1422835c46d3211c5125909cd6b75bdfc1b8e0ba73f656df1b" -> "sha256:2cc5e2bbc26f1bad330e312a1b4614d3dbb8d2bcdf3678ecfe0871be819b04d5" [label=""];
}

