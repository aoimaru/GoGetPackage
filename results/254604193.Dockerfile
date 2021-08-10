[app/sources/254604193.Dockerfile]
digraph {
  "sha256:3a88032ee5a6c96833c1f3837f2edddeb0c5448990eca36294315ad9987e4049" [label="docker-image://docker.io/paddledev/paddle:cpu-latest" shape="ellipse"];
  "sha256:b0ffd8d806f7f05230514d4656fce025f01e2ab811eadd05c69941291fc813e8" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0765a5dad7e9dc1e79c5c3f1e8067b4013e7b0979cb454253bd7de0b3ddeb021" [label="/bin/sh -c apt-get install -y openssh-server emacs24-nox" shape="box"];
  "sha256:efc1bfe75022e88f1969b67a002eb4436fa727b5e6abc1493133a0d98b83066c" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:29083ebe3f6de3f33b3afb0edfb4ef83635f8023c30774810ebf9e7872229958" [label="/bin/sh -c echo 'root:root' | chpasswd" shape="box"];
  "sha256:22109dd67b4bf071df62c8d5b56cb85273a6170e63e759d7ae70c2ba671e1641" [label="/bin/sh -c sed -ri 's/^PermitRootLogin\\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config" shape="box"];
  "sha256:21eb23cc881e8a6052f376cd2ae1d246e6f7869ecc1cad3cc6986c392b84f218" [label="/bin/sh -c sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config" shape="box"];
  "sha256:9338a68fe5ec2c002e87968d3f8359c08a872a8d90dabc4106e08be7a8d0fe0e" [label="sha256:9338a68fe5ec2c002e87968d3f8359c08a872a8d90dabc4106e08be7a8d0fe0e" shape="plaintext"];
  "sha256:3a88032ee5a6c96833c1f3837f2edddeb0c5448990eca36294315ad9987e4049" -> "sha256:b0ffd8d806f7f05230514d4656fce025f01e2ab811eadd05c69941291fc813e8" [label=""];
  "sha256:b0ffd8d806f7f05230514d4656fce025f01e2ab811eadd05c69941291fc813e8" -> "sha256:0765a5dad7e9dc1e79c5c3f1e8067b4013e7b0979cb454253bd7de0b3ddeb021" [label=""];
  "sha256:0765a5dad7e9dc1e79c5c3f1e8067b4013e7b0979cb454253bd7de0b3ddeb021" -> "sha256:efc1bfe75022e88f1969b67a002eb4436fa727b5e6abc1493133a0d98b83066c" [label=""];
  "sha256:efc1bfe75022e88f1969b67a002eb4436fa727b5e6abc1493133a0d98b83066c" -> "sha256:29083ebe3f6de3f33b3afb0edfb4ef83635f8023c30774810ebf9e7872229958" [label=""];
  "sha256:29083ebe3f6de3f33b3afb0edfb4ef83635f8023c30774810ebf9e7872229958" -> "sha256:22109dd67b4bf071df62c8d5b56cb85273a6170e63e759d7ae70c2ba671e1641" [label=""];
  "sha256:22109dd67b4bf071df62c8d5b56cb85273a6170e63e759d7ae70c2ba671e1641" -> "sha256:21eb23cc881e8a6052f376cd2ae1d246e6f7869ecc1cad3cc6986c392b84f218" [label=""];
  "sha256:21eb23cc881e8a6052f376cd2ae1d246e6f7869ecc1cad3cc6986c392b84f218" -> "sha256:9338a68fe5ec2c002e87968d3f8359c08a872a8d90dabc4106e08be7a8d0fe0e" [label=""];
}

