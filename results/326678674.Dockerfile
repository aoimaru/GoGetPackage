[app/sources/326678674.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:681bb45b17155b1acee0620bbe229562080f5b74b7fe841b5066ce67b26d901b" [label="mkdir{path=/opt/hackillinois}" shape="note"];
  "sha256:9cd257a35e5c2a4d09c3f21d830d55da4377d593b627caae28ad211323069937" [label="local://context" shape="ellipse"];
  "sha256:77a1d08387de2d7e97fea83b9de8c4e19ed6e9768e8028f61d6ee580f1785b81" [label="copy{src=/hackillinois-api-gateway, dest=/opt/hackillinois/}" shape="note"];
  "sha256:a46bd22501dff4575954a279ded2181ba8a4e8ac55af297958901d254aba6d7f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1f7bc8174bf2bc74caf938749d939c62fffceff875e386820053009cdafdb7d4" [label="/bin/sh -c apt-get install -y ca-certificates" shape="box"];
  "sha256:43737078f6e3dbfedb639e3fe4f87fb89a0d4a826b4336c91c8534250d4bba06" [label="/bin/sh -c chmod +x hackillinois-api-gateway" shape="box"];
  "sha256:31333971a02cb6d0021da91a16c4cb32b3d1af2e6645cc41350f7a37e3c83542" [label="/bin/sh -c mkdir log/" shape="box"];
  "sha256:7335764cd5f1315abf1d0e1cdbfcdf47556a69a79618a62bde3846e538334e3e" [label="/bin/sh -c touch log/access.log" shape="box"];
  "sha256:3bb8aa070af5cf9dea72e0138f5d0f29a5bedd2d862dcd50ecc6916c54bd85be" [label="sha256:3bb8aa070af5cf9dea72e0138f5d0f29a5bedd2d862dcd50ecc6916c54bd85be" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:681bb45b17155b1acee0620bbe229562080f5b74b7fe841b5066ce67b26d901b" [label=""];
  "sha256:681bb45b17155b1acee0620bbe229562080f5b74b7fe841b5066ce67b26d901b" -> "sha256:77a1d08387de2d7e97fea83b9de8c4e19ed6e9768e8028f61d6ee580f1785b81" [label=""];
  "sha256:9cd257a35e5c2a4d09c3f21d830d55da4377d593b627caae28ad211323069937" -> "sha256:77a1d08387de2d7e97fea83b9de8c4e19ed6e9768e8028f61d6ee580f1785b81" [label=""];
  "sha256:77a1d08387de2d7e97fea83b9de8c4e19ed6e9768e8028f61d6ee580f1785b81" -> "sha256:a46bd22501dff4575954a279ded2181ba8a4e8ac55af297958901d254aba6d7f" [label=""];
  "sha256:a46bd22501dff4575954a279ded2181ba8a4e8ac55af297958901d254aba6d7f" -> "sha256:1f7bc8174bf2bc74caf938749d939c62fffceff875e386820053009cdafdb7d4" [label=""];
  "sha256:1f7bc8174bf2bc74caf938749d939c62fffceff875e386820053009cdafdb7d4" -> "sha256:43737078f6e3dbfedb639e3fe4f87fb89a0d4a826b4336c91c8534250d4bba06" [label=""];
  "sha256:43737078f6e3dbfedb639e3fe4f87fb89a0d4a826b4336c91c8534250d4bba06" -> "sha256:31333971a02cb6d0021da91a16c4cb32b3d1af2e6645cc41350f7a37e3c83542" [label=""];
  "sha256:31333971a02cb6d0021da91a16c4cb32b3d1af2e6645cc41350f7a37e3c83542" -> "sha256:7335764cd5f1315abf1d0e1cdbfcdf47556a69a79618a62bde3846e538334e3e" [label=""];
  "sha256:7335764cd5f1315abf1d0e1cdbfcdf47556a69a79618a62bde3846e538334e3e" -> "sha256:3bb8aa070af5cf9dea72e0138f5d0f29a5bedd2d862dcd50ecc6916c54bd85be" [label=""];
}

