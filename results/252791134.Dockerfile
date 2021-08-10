[app/sources/252791134.Dockerfile]
digraph {
  "sha256:e528d5ae6e73636bd0eac2f02a4765defb36c7524a7c9dde673007624d6fef4f" [label="docker-image://docker.io/jwilder/nginx-proxy:0.3.0" shape="ellipse"];
  "sha256:a6dd2118538d4706b7b483f7b66c9aacb7e24bde0412c6eccb5132e161274310" [label="local://context" shape="ellipse"];
  "sha256:39d1bba40fd705c1ef5bf9ceeb603dd9d9d8a82f42bc9c5fe8b1d0314b36562a" [label="copy{src=/sources.list, dest=/etc/apt/security.sources.list}" shape="note"];
  "sha256:a0c61384671f4d9aa6f547ecec66f8070a3b9bddf32171e259ce190bdf097493" [label="/bin/sh -c apt-get update -o Dir::Etc::SourceList=/etc/apt/security.sources.list" shape="box"];
  "sha256:be1acff1dbf94a331f8af46fc4f54c36c0c32b9e353a8829cd1527b0fde8d9f0" [label="/bin/sh -c apt-get upgrade -y -o Dir::Etc::SourceList=/etc/apt/security.sources.list" shape="box"];
  "sha256:2a078959677581b52b4f365085be5a30b19e29bc55f5efc51f5b8e57df8d5536" [label="/bin/sh -c apt-get clean && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:ce7c4b9c7657774806f390f9d15aa278497659b3399fc5d2e119576f9eb891f5" [label="sha256:ce7c4b9c7657774806f390f9d15aa278497659b3399fc5d2e119576f9eb891f5" shape="plaintext"];
  "sha256:e528d5ae6e73636bd0eac2f02a4765defb36c7524a7c9dde673007624d6fef4f" -> "sha256:39d1bba40fd705c1ef5bf9ceeb603dd9d9d8a82f42bc9c5fe8b1d0314b36562a" [label=""];
  "sha256:a6dd2118538d4706b7b483f7b66c9aacb7e24bde0412c6eccb5132e161274310" -> "sha256:39d1bba40fd705c1ef5bf9ceeb603dd9d9d8a82f42bc9c5fe8b1d0314b36562a" [label=""];
  "sha256:39d1bba40fd705c1ef5bf9ceeb603dd9d9d8a82f42bc9c5fe8b1d0314b36562a" -> "sha256:a0c61384671f4d9aa6f547ecec66f8070a3b9bddf32171e259ce190bdf097493" [label=""];
  "sha256:a0c61384671f4d9aa6f547ecec66f8070a3b9bddf32171e259ce190bdf097493" -> "sha256:be1acff1dbf94a331f8af46fc4f54c36c0c32b9e353a8829cd1527b0fde8d9f0" [label=""];
  "sha256:be1acff1dbf94a331f8af46fc4f54c36c0c32b9e353a8829cd1527b0fde8d9f0" -> "sha256:2a078959677581b52b4f365085be5a30b19e29bc55f5efc51f5b8e57df8d5536" [label=""];
  "sha256:2a078959677581b52b4f365085be5a30b19e29bc55f5efc51f5b8e57df8d5536" -> "sha256:ce7c4b9c7657774806f390f9d15aa278497659b3399fc5d2e119576f9eb891f5" [label=""];
}

