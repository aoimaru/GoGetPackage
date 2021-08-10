[app/sources/345468605.Dockerfile]
digraph {
  "sha256:d5d832b5b27f4b474ee1b0a7f54f76984e23cabf2ee115768cc649c4ec0d747c" [label="docker-image://docker.io/iflavoursbv/sbt-openjdk-8-alpine:latest" shape="ellipse"];
  "sha256:691a83b211610c9c4b54fb516fb56c1bfd7e9bb47abce1c23e704ef43fbeaf8b" [label="local://context" shape="ellipse"];
  "sha256:7dbff141f0d4762084eca0d5e4103b8804def16de2a73c8eae0a58ba12adeea4" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:63b02f76c5a35870117df17a68d5bae7fc6f359ced7d56b70e12399c21002060" [label="copy{src=/test.sh, dest=/app}" shape="note"];
  "sha256:eaa60b4a49c56a50bde924db5b1af4269d4a8cc53e3dbe2fc3429092ac24d7db" [label="copy{src=/project, dest=/app/project}" shape="note"];
  "sha256:a33d607bd69793edb7a032a80fea3bc0fa208beb2ef45900de4328630e235733" [label="copy{src=/build.sbt, dest=/app}" shape="note"];
  "sha256:95589ff932320a5db7984107e40b4783a2d94673217d05b88ddabf5e16d45432" [label="mkdir{path=/app}" shape="note"];
  "sha256:54fc3906582edc343ebd6731757b624dad186105d41b3d53e3e9cf8c3b7f42b6" [label="sha256:54fc3906582edc343ebd6731757b624dad186105d41b3d53e3e9cf8c3b7f42b6" shape="plaintext"];
  "sha256:d5d832b5b27f4b474ee1b0a7f54f76984e23cabf2ee115768cc649c4ec0d747c" -> "sha256:7dbff141f0d4762084eca0d5e4103b8804def16de2a73c8eae0a58ba12adeea4" [label=""];
  "sha256:691a83b211610c9c4b54fb516fb56c1bfd7e9bb47abce1c23e704ef43fbeaf8b" -> "sha256:7dbff141f0d4762084eca0d5e4103b8804def16de2a73c8eae0a58ba12adeea4" [label=""];
  "sha256:7dbff141f0d4762084eca0d5e4103b8804def16de2a73c8eae0a58ba12adeea4" -> "sha256:63b02f76c5a35870117df17a68d5bae7fc6f359ced7d56b70e12399c21002060" [label=""];
  "sha256:691a83b211610c9c4b54fb516fb56c1bfd7e9bb47abce1c23e704ef43fbeaf8b" -> "sha256:63b02f76c5a35870117df17a68d5bae7fc6f359ced7d56b70e12399c21002060" [label=""];
  "sha256:63b02f76c5a35870117df17a68d5bae7fc6f359ced7d56b70e12399c21002060" -> "sha256:eaa60b4a49c56a50bde924db5b1af4269d4a8cc53e3dbe2fc3429092ac24d7db" [label=""];
  "sha256:691a83b211610c9c4b54fb516fb56c1bfd7e9bb47abce1c23e704ef43fbeaf8b" -> "sha256:eaa60b4a49c56a50bde924db5b1af4269d4a8cc53e3dbe2fc3429092ac24d7db" [label=""];
  "sha256:eaa60b4a49c56a50bde924db5b1af4269d4a8cc53e3dbe2fc3429092ac24d7db" -> "sha256:a33d607bd69793edb7a032a80fea3bc0fa208beb2ef45900de4328630e235733" [label=""];
  "sha256:691a83b211610c9c4b54fb516fb56c1bfd7e9bb47abce1c23e704ef43fbeaf8b" -> "sha256:a33d607bd69793edb7a032a80fea3bc0fa208beb2ef45900de4328630e235733" [label=""];
  "sha256:a33d607bd69793edb7a032a80fea3bc0fa208beb2ef45900de4328630e235733" -> "sha256:95589ff932320a5db7984107e40b4783a2d94673217d05b88ddabf5e16d45432" [label=""];
  "sha256:95589ff932320a5db7984107e40b4783a2d94673217d05b88ddabf5e16d45432" -> "sha256:54fc3906582edc343ebd6731757b624dad186105d41b3d53e3e9cf8c3b7f42b6" [label=""];
}

