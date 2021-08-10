[app/sources/326803133.Dockerfile]
digraph {
  "sha256:f5674e004a113131d72051b502a763becf55baa844106cad9377ae2664da3cba" [label="docker-image://docker.io/library/mysql:5.7.12" shape="ellipse"];
  "sha256:58d9923de68957a627d6c7a6f97fb6826efac17407e69ebfa6cf68292271b586" [label="/bin/sh -c apt-get update && apt-get install -y netcat" shape="box"];
  "sha256:cdbb34ec58177e618cb0a1da463e39bb06ad9cb539a0411ef8d4ca95fadfc32d" [label="sha256:cdbb34ec58177e618cb0a1da463e39bb06ad9cb539a0411ef8d4ca95fadfc32d" shape="plaintext"];
  "sha256:f5674e004a113131d72051b502a763becf55baa844106cad9377ae2664da3cba" -> "sha256:58d9923de68957a627d6c7a6f97fb6826efac17407e69ebfa6cf68292271b586" [label=""];
  "sha256:58d9923de68957a627d6c7a6f97fb6826efac17407e69ebfa6cf68292271b586" -> "sha256:cdbb34ec58177e618cb0a1da463e39bb06ad9cb539a0411ef8d4ca95fadfc32d" [label=""];
}

