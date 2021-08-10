[app/sources/238055597.Dockerfile]
digraph {
  "sha256:1c047655b14e6e715ce41ede510e356085e38cb99684a16e960c498e8aea5e71" [label="docker-image://docker.io/hyperledger/fabric-orderer:latest" shape="ellipse"];
  "sha256:b085b56c9f711c6158d4d9b73e54f1388e869d9ec7ac09065bfb79252b3a1eb5" [label="mkdir{path=/opt/gopath/src/github.com/hyperledger/fabric/peer}" shape="note"];
  "sha256:4a03609040196cd9833fe6ab65c5029e9516b175d8ef900f4fc3acba8f7cd8d0" [label="sha256:4a03609040196cd9833fe6ab65c5029e9516b175d8ef900f4fc3acba8f7cd8d0" shape="plaintext"];
  "sha256:1c047655b14e6e715ce41ede510e356085e38cb99684a16e960c498e8aea5e71" -> "sha256:b085b56c9f711c6158d4d9b73e54f1388e869d9ec7ac09065bfb79252b3a1eb5" [label=""];
  "sha256:b085b56c9f711c6158d4d9b73e54f1388e869d9ec7ac09065bfb79252b3a1eb5" -> "sha256:4a03609040196cd9833fe6ab65c5029e9516b175d8ef900f4fc3acba8f7cd8d0" [label=""];
}

