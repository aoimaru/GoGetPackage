[app/sources/307799562.Dockerfile]
digraph {
  "sha256:152b38bc36e168bf812c97d81d009bb8a3d69b688930b0942232858d2982424a" [label="docker-image://docker.io/yeasy/hyperledger-fabric-base:1.0.2" shape="ellipse"];
  "sha256:3514b0589bbaf464d1dcfef9f14bd9ad7e35d7f021f97825af9dc528ded7149b" [label="/bin/sh -c cd $FABRIC_ROOT/peer     && CGO_CFLAGS=\" \" go install -ldflags \"$LD_FLAGS -linkmode external -extldflags '-static -lpthread'\"     && go clean" shape="box"];
  "sha256:ee48da190a4b4a32b53f4fee068d9968a1bf84a046e18b182d20a77fd163789f" [label="sha256:ee48da190a4b4a32b53f4fee068d9968a1bf84a046e18b182d20a77fd163789f" shape="plaintext"];
  "sha256:152b38bc36e168bf812c97d81d009bb8a3d69b688930b0942232858d2982424a" -> "sha256:3514b0589bbaf464d1dcfef9f14bd9ad7e35d7f021f97825af9dc528ded7149b" [label=""];
  "sha256:3514b0589bbaf464d1dcfef9f14bd9ad7e35d7f021f97825af9dc528ded7149b" -> "sha256:ee48da190a4b4a32b53f4fee068d9968a1bf84a046e18b182d20a77fd163789f" [label=""];
}

