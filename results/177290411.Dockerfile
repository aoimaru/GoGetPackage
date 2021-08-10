[app/sources/177290411.Dockerfile]
digraph {
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" [label="docker-image://docker.io/library/spark-test-base:latest" shape="ellipse"];
  "sha256:48c2b4909fa52e2887a9347ce4934e699f28f1b30f55cd1bc8d8a88521c3bb17" [label="local://context" shape="ellipse"];
  "sha256:cf4991dc78ff61653a115e678b3b9e7edf19fd45aeebda40c14efa52dc53f71c" [label="copy{src=/default_cmd, dest=/root/}" shape="note"];
  "sha256:3db9f6c49bee249ff7bf18559a9629f9db3fe123f4848a59d7327aec776eca09" [label="sha256:3db9f6c49bee249ff7bf18559a9629f9db3fe123f4848a59d7327aec776eca09" shape="plaintext"];
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" -> "sha256:cf4991dc78ff61653a115e678b3b9e7edf19fd45aeebda40c14efa52dc53f71c" [label=""];
  "sha256:48c2b4909fa52e2887a9347ce4934e699f28f1b30f55cd1bc8d8a88521c3bb17" -> "sha256:cf4991dc78ff61653a115e678b3b9e7edf19fd45aeebda40c14efa52dc53f71c" [label=""];
  "sha256:cf4991dc78ff61653a115e678b3b9e7edf19fd45aeebda40c14efa52dc53f71c" -> "sha256:3db9f6c49bee249ff7bf18559a9629f9db3fe123f4848a59d7327aec776eca09" [label=""];
}

