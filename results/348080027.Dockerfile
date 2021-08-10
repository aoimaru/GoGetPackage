[app/sources/348080027.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:31bba7732cfaed07e31145cb2bafb24a4cc58a78d00f0ef4938e7465aa4384d2" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:906783b6bd1bb8a5b8c43fea7915e1c9b26b12c719f1c5f3162ce74c2f7856d5" [label="/bin/sh -c apt-get install -y gcc libpcap0.8-dev make" shape="box"];
  "sha256:d379b8a6db98d722662fbac19b83d859500696e10eb6aa50e0292d8e4e245948" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:32439c32a0fd5d5a0888610bc79c5060003dced0c08efbad5ee7cf93f6bfd6dd" [label="/bin/sh -c git clone https://github.com/p0f/p0f.git" shape="box"];
  "sha256:868a6785745e7e977343fbf427943dbe47633e97e1e65860efde5689a7ac66fd" [label="mkdir{path=/home/opennsm/p0f}" shape="note"];
  "sha256:4c57162b0b47170920ebabb98cefddc81cbffa388e7baf07a29013dadb74b3e4" [label="/bin/sh -c git checkout v$VERS" shape="box"];
  "sha256:c4ed9416f88d7c95219840d4770c68b4d86a28fd1651d3d109d4ba4071c56d6f" [label="/bin/sh -c ./Build" shape="box"];
  "sha256:f711b5373198b347b6c7dfec88955dbba8c9f8930c175f3b43561cd446789803" [label="/bin/sh -c install -m 755 -o root -g root ./$PROGRAM /usr/local/bin/" shape="box"];
  "sha256:571faea5ca2b1a7821853a8e636977f16ef2e7a3c71de075611483940c6fc50d" [label="/bin/sh -c mkdir /etc/p0f && install -m 644 -o root -g root ./$PROGRAM.fp /etc/p0f" shape="box"];
  "sha256:8df500c6c2e19465d37f8823907782fb312c3177abe5e8e0b7b9b64c5817a1d3" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:4870c83583418172443360ccdb4e30f810070b48d2353c990818809b6508d333" [label="sha256:4870c83583418172443360ccdb4e30f810070b48d2353c990818809b6508d333" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:31bba7732cfaed07e31145cb2bafb24a4cc58a78d00f0ef4938e7465aa4384d2" [label=""];
  "sha256:31bba7732cfaed07e31145cb2bafb24a4cc58a78d00f0ef4938e7465aa4384d2" -> "sha256:906783b6bd1bb8a5b8c43fea7915e1c9b26b12c719f1c5f3162ce74c2f7856d5" [label=""];
  "sha256:906783b6bd1bb8a5b8c43fea7915e1c9b26b12c719f1c5f3162ce74c2f7856d5" -> "sha256:d379b8a6db98d722662fbac19b83d859500696e10eb6aa50e0292d8e4e245948" [label=""];
  "sha256:d379b8a6db98d722662fbac19b83d859500696e10eb6aa50e0292d8e4e245948" -> "sha256:32439c32a0fd5d5a0888610bc79c5060003dced0c08efbad5ee7cf93f6bfd6dd" [label=""];
  "sha256:32439c32a0fd5d5a0888610bc79c5060003dced0c08efbad5ee7cf93f6bfd6dd" -> "sha256:868a6785745e7e977343fbf427943dbe47633e97e1e65860efde5689a7ac66fd" [label=""];
  "sha256:868a6785745e7e977343fbf427943dbe47633e97e1e65860efde5689a7ac66fd" -> "sha256:4c57162b0b47170920ebabb98cefddc81cbffa388e7baf07a29013dadb74b3e4" [label=""];
  "sha256:4c57162b0b47170920ebabb98cefddc81cbffa388e7baf07a29013dadb74b3e4" -> "sha256:c4ed9416f88d7c95219840d4770c68b4d86a28fd1651d3d109d4ba4071c56d6f" [label=""];
  "sha256:c4ed9416f88d7c95219840d4770c68b4d86a28fd1651d3d109d4ba4071c56d6f" -> "sha256:f711b5373198b347b6c7dfec88955dbba8c9f8930c175f3b43561cd446789803" [label=""];
  "sha256:f711b5373198b347b6c7dfec88955dbba8c9f8930c175f3b43561cd446789803" -> "sha256:571faea5ca2b1a7821853a8e636977f16ef2e7a3c71de075611483940c6fc50d" [label=""];
  "sha256:571faea5ca2b1a7821853a8e636977f16ef2e7a3c71de075611483940c6fc50d" -> "sha256:8df500c6c2e19465d37f8823907782fb312c3177abe5e8e0b7b9b64c5817a1d3" [label=""];
  "sha256:8df500c6c2e19465d37f8823907782fb312c3177abe5e8e0b7b9b64c5817a1d3" -> "sha256:4870c83583418172443360ccdb4e30f810070b48d2353c990818809b6508d333" [label=""];
}

