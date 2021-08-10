[app/sources/162437552.Dockerfile]
digraph {
  "sha256:01f989218c6b6847b1a61ef8dbb16caa4eb194475d4d8a248347390390d2f071" [label="docker-image://docker.io/maluuba/jetty9-java8:latest" shape="ellipse"];
  "sha256:7fb8b24b7b442b79d5d66ce4ae501984fc1aaabb6af3b55058b04914cb3d79e8" [label="local://context" shape="ellipse"];
  "sha256:2dc36f9b8d407f46581422955ca33a87ca375616a25cfbb733fbb502d8c921b0" [label="copy{src=/jstatd.all.policy, dest=/usr/lib/jvm/java-8-openjdk-amd64/jstatd.policy}" shape="note"];
  "sha256:8154292e6d4dfa331f29f3d29c6ca7cae4cc121e741b7b70edb2610abe982610" [label="copy{src=/start-jetty-profiler.sh, dest=/opt/start-jetty-profiler.sh}" shape="note"];
  "sha256:e18e9b81ce0cea4d7f05e6c3ff495b33002a6bb9c94274aa34003f6a735390ee" [label="/bin/sh -c chmod +x /opt/start-jetty-profiler.sh" shape="box"];
  "sha256:2dd78ed7823e87e0ad2f8efacfccf8838d77835298c2876a6b38c8129dfea10c" [label="/bin/sh -c echo \"JAVA_OPTIONS=\\\"\\${JAVA_OPTS} ${NEW_JAVA_OPTS} \\\"\"  >> /etc/default/jetty" shape="box"];
  "sha256:b36d0171c0c5e525c84489081a8cdcf96940703910a3b0eb7c365c7b1d5b8ed0" [label="sha256:b36d0171c0c5e525c84489081a8cdcf96940703910a3b0eb7c365c7b1d5b8ed0" shape="plaintext"];
  "sha256:01f989218c6b6847b1a61ef8dbb16caa4eb194475d4d8a248347390390d2f071" -> "sha256:2dc36f9b8d407f46581422955ca33a87ca375616a25cfbb733fbb502d8c921b0" [label=""];
  "sha256:7fb8b24b7b442b79d5d66ce4ae501984fc1aaabb6af3b55058b04914cb3d79e8" -> "sha256:2dc36f9b8d407f46581422955ca33a87ca375616a25cfbb733fbb502d8c921b0" [label=""];
  "sha256:2dc36f9b8d407f46581422955ca33a87ca375616a25cfbb733fbb502d8c921b0" -> "sha256:8154292e6d4dfa331f29f3d29c6ca7cae4cc121e741b7b70edb2610abe982610" [label=""];
  "sha256:7fb8b24b7b442b79d5d66ce4ae501984fc1aaabb6af3b55058b04914cb3d79e8" -> "sha256:8154292e6d4dfa331f29f3d29c6ca7cae4cc121e741b7b70edb2610abe982610" [label=""];
  "sha256:8154292e6d4dfa331f29f3d29c6ca7cae4cc121e741b7b70edb2610abe982610" -> "sha256:e18e9b81ce0cea4d7f05e6c3ff495b33002a6bb9c94274aa34003f6a735390ee" [label=""];
  "sha256:e18e9b81ce0cea4d7f05e6c3ff495b33002a6bb9c94274aa34003f6a735390ee" -> "sha256:2dd78ed7823e87e0ad2f8efacfccf8838d77835298c2876a6b38c8129dfea10c" [label=""];
  "sha256:2dd78ed7823e87e0ad2f8efacfccf8838d77835298c2876a6b38c8129dfea10c" -> "sha256:b36d0171c0c5e525c84489081a8cdcf96940703910a3b0eb7c365c7b1d5b8ed0" [label=""];
}

