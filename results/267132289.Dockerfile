[app/sources/267132289.Dockerfile]
digraph {
  "sha256:950db4b45f9b58560c360945466aa53a3d9fd765d5e557cfa7e07673ae15d46e" [label="docker-image://docker.io/library/logstash:2.4.1" shape="ellipse"];
  "sha256:7acd152e1a14fcfb1b6956412b8399f448a4906ff4aba3235a58af7e2ab47e60" [label="/bin/sh -c apt-get update && apt-get -y install openjdk-8-jdk" shape="box"];
  "sha256:863b5b5f2b7c7497ce148e5d6fc92fa641b0fc8e9ce5e5948d8efb0690b668a1" [label="sha256:863b5b5f2b7c7497ce148e5d6fc92fa641b0fc8e9ce5e5948d8efb0690b668a1" shape="plaintext"];
  "sha256:950db4b45f9b58560c360945466aa53a3d9fd765d5e557cfa7e07673ae15d46e" -> "sha256:7acd152e1a14fcfb1b6956412b8399f448a4906ff4aba3235a58af7e2ab47e60" [label=""];
  "sha256:7acd152e1a14fcfb1b6956412b8399f448a4906ff4aba3235a58af7e2ab47e60" -> "sha256:863b5b5f2b7c7497ce148e5d6fc92fa641b0fc8e9ce5e5948d8efb0690b668a1" [label=""];
}

