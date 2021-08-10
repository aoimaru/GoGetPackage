[app/sources/425085369.Dockerfile]
digraph {
  "sha256:426b9cc7f5939e9ac7c741fdbbd609f6579bb17ec8340cebb24743d073f50da8" [label="docker-image://docker.io/gewo/redis-base:latest" shape="ellipse"];
  "sha256:1a0a66beeb8fd65fa34aaae3c1738a9a4e40673fccefafe6e0182e59e3bf0f5a" [label="/bin/sh -c wget http://download.redis.io/releases/redis-${VERSION}.tar.gz &&  tar xvfz redis-${VERSION}.tar.gz &&  cd redis-${VERSION} && make redis-server && cd - &&  mv redis-${VERSION}/src/redis-server /usr/bin &&  rm -rf redis-${VERSION}*" shape="box"];
  "sha256:9a2294470b326b667e5c0681b785394a3176c90a00b7c7b4b5c5c7ce27caf7f5" [label="sha256:9a2294470b326b667e5c0681b785394a3176c90a00b7c7b4b5c5c7ce27caf7f5" shape="plaintext"];
  "sha256:426b9cc7f5939e9ac7c741fdbbd609f6579bb17ec8340cebb24743d073f50da8" -> "sha256:1a0a66beeb8fd65fa34aaae3c1738a9a4e40673fccefafe6e0182e59e3bf0f5a" [label=""];
  "sha256:1a0a66beeb8fd65fa34aaae3c1738a9a4e40673fccefafe6e0182e59e3bf0f5a" -> "sha256:9a2294470b326b667e5c0681b785394a3176c90a00b7c7b4b5c5c7ce27caf7f5" [label=""];
}

