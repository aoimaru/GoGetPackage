[app/sources/354052916.Dockerfile]
digraph {
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" [label="docker-image://docker.io/library/node:0.12" shape="ellipse"];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label="/bin/sh -c mkdir app" shape="box"];
  "sha256:8fc82296dfb32c17e172a7908b33b15ecb145be4570da3a93d4298cad05e86be" [label="local://context" shape="ellipse"];
  "sha256:fcd7ea3b07653478bb262dcc13e87ab3b6426c8736c82386020cc8835fc9523c" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d627c80c2c47d294b07ee28f42ff74e38e641aee81122d8264bd696766c003be" [label="mkdir{path=/app}" shape="note"];
  "sha256:9ecf545288f9e5f0da7528b241aa2fee2b6ae13fb14cc93743eed963cb4e110d" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4f55bdd4b4ad1765fa0ba0afc8f8dc5748222c61c79344a4290f518d9f5a216a" [label="/bin/sh -c npm install webpack@\"1.4\"" shape="box"];
  "sha256:4e8f5938cccbb52c30153e2faf03e868b502fa12439f4e15b2080cbbda8eb695" [label="sha256:4e8f5938cccbb52c30153e2faf03e868b502fa12439f4e15b2080cbbda8eb695" shape="plaintext"];
  "sha256:ed3338fe2a0c184642b8c7b6223fb6d18bbfcb6460ed3c0c2d78f1268435cd3c" -> "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" [label=""];
  "sha256:9e41cc3ba1635a7518f63db3985ed43cb0091d3447c629e0cf3de761c0da5902" -> "sha256:fcd7ea3b07653478bb262dcc13e87ab3b6426c8736c82386020cc8835fc9523c" [label=""];
  "sha256:8fc82296dfb32c17e172a7908b33b15ecb145be4570da3a93d4298cad05e86be" -> "sha256:fcd7ea3b07653478bb262dcc13e87ab3b6426c8736c82386020cc8835fc9523c" [label=""];
  "sha256:fcd7ea3b07653478bb262dcc13e87ab3b6426c8736c82386020cc8835fc9523c" -> "sha256:d627c80c2c47d294b07ee28f42ff74e38e641aee81122d8264bd696766c003be" [label=""];
  "sha256:d627c80c2c47d294b07ee28f42ff74e38e641aee81122d8264bd696766c003be" -> "sha256:9ecf545288f9e5f0da7528b241aa2fee2b6ae13fb14cc93743eed963cb4e110d" [label=""];
  "sha256:9ecf545288f9e5f0da7528b241aa2fee2b6ae13fb14cc93743eed963cb4e110d" -> "sha256:4f55bdd4b4ad1765fa0ba0afc8f8dc5748222c61c79344a4290f518d9f5a216a" [label=""];
  "sha256:4f55bdd4b4ad1765fa0ba0afc8f8dc5748222c61c79344a4290f518d9f5a216a" -> "sha256:4e8f5938cccbb52c30153e2faf03e868b502fa12439f4e15b2080cbbda8eb695" [label=""];
}

