[app/sources/261121222.Dockerfile]
digraph {
  "sha256:428591abf628d53605c2346b5ee01f507fa4b28be53e63bfadb5c68214f6c6f9" [label="docker-image://docker.io/artemklevtsov/r-alpine:latest" shape="ellipse"];
  "sha256:93492a9ad96a73e37f263f85c5959f6d098ce26955a454bf9fbce61d170d5855" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:41f777c3fdcfe3719cc8d1b565b8091e682f6a898b73833e7219036f268b13b5" [label="sha256:41f777c3fdcfe3719cc8d1b565b8091e682f6a898b73833e7219036f268b13b5" shape="plaintext"];
  "sha256:428591abf628d53605c2346b5ee01f507fa4b28be53e63bfadb5c68214f6c6f9" -> "sha256:93492a9ad96a73e37f263f85c5959f6d098ce26955a454bf9fbce61d170d5855" [label=""];
  "sha256:93492a9ad96a73e37f263f85c5959f6d098ce26955a454bf9fbce61d170d5855" -> "sha256:41f777c3fdcfe3719cc8d1b565b8091e682f6a898b73833e7219036f268b13b5" [label=""];
}

