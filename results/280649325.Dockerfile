[app/sources/280649325.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:7f11f27afef54fb775076115db75540105ba9fb1a47a24271bfa06c6b425db54" [label="local://context" shape="ellipse"];
  "sha256:af78e60c52cf6a1500cd222190724a261654c18ded40a7c6d386e67b754839bc" [label="copy{src=/controller, dest=/controller}" shape="note"];
  "sha256:aac430e119d671c92b88f6d76c0344a5619c50041480f3d2e314afdbb9e8e29e" [label="sha256:aac430e119d671c92b88f6d76c0344a5619c50041480f3d2e314afdbb9e8e29e" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:af78e60c52cf6a1500cd222190724a261654c18ded40a7c6d386e67b754839bc" [label=""];
  "sha256:7f11f27afef54fb775076115db75540105ba9fb1a47a24271bfa06c6b425db54" -> "sha256:af78e60c52cf6a1500cd222190724a261654c18ded40a7c6d386e67b754839bc" [label=""];
  "sha256:af78e60c52cf6a1500cd222190724a261654c18ded40a7c6d386e67b754839bc" -> "sha256:aac430e119d671c92b88f6d76c0344a5619c50041480f3d2e314afdbb9e8e29e" [label=""];
}

