[app/sources/387612986.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:78082197f6b3ce16afd29a9060d4433c7d0c334c5c5d48e44a9bf1c409355956" [label="local://context" shape="ellipse"];
  "sha256:c8cc5c9dfadd1613c8f41868a060936d11cb4802b4d45c7ec6aa62fa2f332fa4" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:a3eb6f6955bc6efde394e666dae4d43748916eaea64a35a06b89a6a73e47679e" [label="sha256:a3eb6f6955bc6efde394e666dae4d43748916eaea64a35a06b89a6a73e47679e" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:c8cc5c9dfadd1613c8f41868a060936d11cb4802b4d45c7ec6aa62fa2f332fa4" [label=""];
  "sha256:78082197f6b3ce16afd29a9060d4433c7d0c334c5c5d48e44a9bf1c409355956" -> "sha256:c8cc5c9dfadd1613c8f41868a060936d11cb4802b4d45c7ec6aa62fa2f332fa4" [label=""];
  "sha256:c8cc5c9dfadd1613c8f41868a060936d11cb4802b4d45c7ec6aa62fa2f332fa4" -> "sha256:a3eb6f6955bc6efde394e666dae4d43748916eaea64a35a06b89a6a73e47679e" [label=""];
}

