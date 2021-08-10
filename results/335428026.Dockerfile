[app/sources/335428026.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label="/bin/sh -c apt-get update && apt-get install nginx-full -y" shape="box"];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label="/bin/sh -c rm -rf /etc/nginx" shape="box"];
  "sha256:c77cd6411912b844584edeacef8722962df03ca5b1c5f9bebcdbc83eaf3be4d7" [label="local://context" shape="ellipse"];
  "sha256:a5d84c60a3697b4f9192c0b3088504327f738cb47f90cbe695d4a2c0992764a9" [label="copy{src=/etc, dest=/etc/nginx}" shape="note"];
  "sha256:4c1a0d4bc1e806f5cc468da7ec3aeeb0e295ee3ce0915798ec01534a5b40c456" [label="/bin/sh -c chown -R root:root /etc/nginx" shape="box"];
  "sha256:aa50b85c00b6147486fa91e554e0c44bf1470e0eebf3b7450abf9632b2a01971" [label="/bin/sh -c /usr/sbin/nginx -qt" shape="box"];
  "sha256:2e516fa24fb2a5754602c53d7196514b77487f354e342eb9b6e85dd6d1732e60" [label="/bin/sh -c mkdir /www" shape="box"];
  "sha256:afb4212e240622ae12e64a03ca8e38377dd8b8b8e064b93d776f9a59c1dcd172" [label="sha256:afb4212e240622ae12e64a03ca8e38377dd8b8b8e064b93d776f9a59c1dcd172" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label=""];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" -> "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label=""];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" -> "sha256:a5d84c60a3697b4f9192c0b3088504327f738cb47f90cbe695d4a2c0992764a9" [label=""];
  "sha256:c77cd6411912b844584edeacef8722962df03ca5b1c5f9bebcdbc83eaf3be4d7" -> "sha256:a5d84c60a3697b4f9192c0b3088504327f738cb47f90cbe695d4a2c0992764a9" [label=""];
  "sha256:a5d84c60a3697b4f9192c0b3088504327f738cb47f90cbe695d4a2c0992764a9" -> "sha256:4c1a0d4bc1e806f5cc468da7ec3aeeb0e295ee3ce0915798ec01534a5b40c456" [label=""];
  "sha256:4c1a0d4bc1e806f5cc468da7ec3aeeb0e295ee3ce0915798ec01534a5b40c456" -> "sha256:aa50b85c00b6147486fa91e554e0c44bf1470e0eebf3b7450abf9632b2a01971" [label=""];
  "sha256:aa50b85c00b6147486fa91e554e0c44bf1470e0eebf3b7450abf9632b2a01971" -> "sha256:2e516fa24fb2a5754602c53d7196514b77487f354e342eb9b6e85dd6d1732e60" [label=""];
  "sha256:2e516fa24fb2a5754602c53d7196514b77487f354e342eb9b6e85dd6d1732e60" -> "sha256:afb4212e240622ae12e64a03ca8e38377dd8b8b8e064b93d776f9a59c1dcd172" [label=""];
}

