[app/sources/278844315.Dockerfile]
digraph {
  "sha256:67c34056f463e167533dde370ac4e23e2a552afd6ea353b8edb056aac494d97c" [label="docker-image://docker.io/openpai/pai.example.tensorflow:v1.10" shape="ellipse"];
  "sha256:ab81e4d9716ff9695f2a6807b3d9a351e6af4078a577010e7fda47a1d4d7ed3f" [label="/bin/sh -c apt-get -y update && apt-get -y install git" shape="box"];
  "sha256:21973f158aa26a9af0b22ae4384164c5b66a598faa9a1a82e30f039432c047cf" [label="/bin/sh -c pip install keras" shape="box"];
  "sha256:1d840c8767fbf7d267215f586e3a3b329af6007dc819000fb7b7d07f9feb625e" [label="mkdir{path=/root}" shape="note"];
  "sha256:c62e3c14c3115fa14f616a589bf313f7df82aa3dddb385063f78ea00a116c6ad" [label="/bin/sh -c git clone https://github.com/keras-team/keras.git" shape="box"];
  "sha256:4d0de3b67c8f742da2ddb57aced38a0878bff3931f8799e17edc4b0adf298731" [label="mkdir{path=/root/keras/examples}" shape="note"];
  "sha256:9c4dc237dd7b3f9270c172e0bc63f8474ea716163dc01295100a1b9b73cce2f4" [label="sha256:9c4dc237dd7b3f9270c172e0bc63f8474ea716163dc01295100a1b9b73cce2f4" shape="plaintext"];
  "sha256:67c34056f463e167533dde370ac4e23e2a552afd6ea353b8edb056aac494d97c" -> "sha256:ab81e4d9716ff9695f2a6807b3d9a351e6af4078a577010e7fda47a1d4d7ed3f" [label=""];
  "sha256:ab81e4d9716ff9695f2a6807b3d9a351e6af4078a577010e7fda47a1d4d7ed3f" -> "sha256:21973f158aa26a9af0b22ae4384164c5b66a598faa9a1a82e30f039432c047cf" [label=""];
  "sha256:21973f158aa26a9af0b22ae4384164c5b66a598faa9a1a82e30f039432c047cf" -> "sha256:1d840c8767fbf7d267215f586e3a3b329af6007dc819000fb7b7d07f9feb625e" [label=""];
  "sha256:1d840c8767fbf7d267215f586e3a3b329af6007dc819000fb7b7d07f9feb625e" -> "sha256:c62e3c14c3115fa14f616a589bf313f7df82aa3dddb385063f78ea00a116c6ad" [label=""];
  "sha256:c62e3c14c3115fa14f616a589bf313f7df82aa3dddb385063f78ea00a116c6ad" -> "sha256:4d0de3b67c8f742da2ddb57aced38a0878bff3931f8799e17edc4b0adf298731" [label=""];
  "sha256:4d0de3b67c8f742da2ddb57aced38a0878bff3931f8799e17edc4b0adf298731" -> "sha256:9c4dc237dd7b3f9270c172e0bc63f8474ea716163dc01295100a1b9b73cce2f4" [label=""];
}

