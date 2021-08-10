[app/sources/391526374.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:d71c6b3bc16b9d021648687396108a26fae574bb2d47fe6b577bb948165590d3" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:acc8bbd132a25b45fefd305212c6c4e8b7e7855f1d5c0926f097d2e36926ab60" [label="/bin/sh -c apt-get install -y openjdk-8-jre wget &&     wget http://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/${SWAGGER_CODEGEN_VERSION}/swagger-codegen-cli-${SWAGGER_CODEGEN_VERSION}.jar     -O /usr/local/bin/swagger-codegen-cli.jar &&     apt-get remove -y wget" shape="box"];
  "sha256:ba4f0cbe19aabf76e00c9d81c8433adee2227a4f31a2e032b814b29b35b1ddd7" [label="/bin/sh -c apt-get install -y wget unzip &&     wget https://github.com/google/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip     -O /protoc-${PROTOC_VERSION}-linux-x86_64.zip &&     unzip /protoc-${PROTOC_VERSION}-linux-x86_64.zip -d /usr/local/ &&     rm -f /protoc-${PROTOC_VERSION}-linux-x86_64.zip &&     apt-get remove -y unzip wget" shape="box"];
  "sha256:c5afe62ea0edda630f9e9c4b7b2c9bd39fabc06f8e0066c38b03130785df8529" [label="/bin/sh -c apt-get install -y wget bzip2 &&     wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash &&     apt-get remove -y wget" shape="box"];
  "sha256:691a5444c954ad89b55a4284a214fbbc0ac0a821b4f8ddfd176a771a37517d46" [label="/bin/sh -c apt-get autoremove -y &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5f1cbc7302a373ea5d07af4e3d7bc6a464849c5f6985448fdc358cfc29f2b864" [label="sha256:5f1cbc7302a373ea5d07af4e3d7bc6a464849c5f6985448fdc358cfc29f2b864" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:d71c6b3bc16b9d021648687396108a26fae574bb2d47fe6b577bb948165590d3" [label=""];
  "sha256:d71c6b3bc16b9d021648687396108a26fae574bb2d47fe6b577bb948165590d3" -> "sha256:acc8bbd132a25b45fefd305212c6c4e8b7e7855f1d5c0926f097d2e36926ab60" [label=""];
  "sha256:acc8bbd132a25b45fefd305212c6c4e8b7e7855f1d5c0926f097d2e36926ab60" -> "sha256:ba4f0cbe19aabf76e00c9d81c8433adee2227a4f31a2e032b814b29b35b1ddd7" [label=""];
  "sha256:ba4f0cbe19aabf76e00c9d81c8433adee2227a4f31a2e032b814b29b35b1ddd7" -> "sha256:c5afe62ea0edda630f9e9c4b7b2c9bd39fabc06f8e0066c38b03130785df8529" [label=""];
  "sha256:c5afe62ea0edda630f9e9c4b7b2c9bd39fabc06f8e0066c38b03130785df8529" -> "sha256:691a5444c954ad89b55a4284a214fbbc0ac0a821b4f8ddfd176a771a37517d46" [label=""];
  "sha256:691a5444c954ad89b55a4284a214fbbc0ac0a821b4f8ddfd176a771a37517d46" -> "sha256:5f1cbc7302a373ea5d07af4e3d7bc6a464849c5f6985448fdc358cfc29f2b864" [label=""];
}

