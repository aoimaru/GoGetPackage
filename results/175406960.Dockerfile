[app/sources/175406960.Dockerfile]
digraph {
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" [label="docker-image://docker.io/openshift/origin:latest" shape="ellipse"];
  "sha256:da3d98b8462c3e9bb4975330ed35fd5d20e340db15d8b7146a9e6125b8c4d0e1" [label="/bin/sh -c mkdir -p /usr/libexec/origin" shape="box"];
  "sha256:2152e5ef0fca34e5d4e1bb315eb88dbac0c8279cbc4d492fe9bc3c7273bc221c" [label="local://context" shape="ellipse"];
  "sha256:2908be6dc22602932ed673214749fdaa96d8c4e03d2832fb9f2affab8ad23cec" [label="copy{src=/tag-in-image.sh, dest=/usr/libexec/origin}" shape="note"];
  "sha256:4cfbc1f1ad610d81fb14f6264d29b2316bb2828d71dcdbb112e5b2520d910d58" [label="/bin/sh -c echo \"Copied tag-in-image.sh to /usr/libexec/origin\"" shape="box"];
  "sha256:38e1226503af5c9907c534745f0c6c7065ffdc02ae13261476e51dc5ef439672" [label="/bin/sh -c echo \"looking into /usr/libexec/origin\"" shape="box"];
  "sha256:a90f0472fdc01e892e49cd50a30021521f4898271018955f7ff0026015c0f7ee" [label="/bin/sh -c ls -la /usr/libexec/origin" shape="box"];
  "sha256:d95fa38f2d8f004f9600fdb9f84b4faa7179210a91e4c7f2b399ca365941c011" [label="sha256:d95fa38f2d8f004f9600fdb9f84b4faa7179210a91e4c7f2b399ca365941c011" shape="plaintext"];
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" -> "sha256:da3d98b8462c3e9bb4975330ed35fd5d20e340db15d8b7146a9e6125b8c4d0e1" [label=""];
  "sha256:da3d98b8462c3e9bb4975330ed35fd5d20e340db15d8b7146a9e6125b8c4d0e1" -> "sha256:2908be6dc22602932ed673214749fdaa96d8c4e03d2832fb9f2affab8ad23cec" [label=""];
  "sha256:2152e5ef0fca34e5d4e1bb315eb88dbac0c8279cbc4d492fe9bc3c7273bc221c" -> "sha256:2908be6dc22602932ed673214749fdaa96d8c4e03d2832fb9f2affab8ad23cec" [label=""];
  "sha256:2908be6dc22602932ed673214749fdaa96d8c4e03d2832fb9f2affab8ad23cec" -> "sha256:4cfbc1f1ad610d81fb14f6264d29b2316bb2828d71dcdbb112e5b2520d910d58" [label=""];
  "sha256:4cfbc1f1ad610d81fb14f6264d29b2316bb2828d71dcdbb112e5b2520d910d58" -> "sha256:38e1226503af5c9907c534745f0c6c7065ffdc02ae13261476e51dc5ef439672" [label=""];
  "sha256:38e1226503af5c9907c534745f0c6c7065ffdc02ae13261476e51dc5ef439672" -> "sha256:a90f0472fdc01e892e49cd50a30021521f4898271018955f7ff0026015c0f7ee" [label=""];
  "sha256:a90f0472fdc01e892e49cd50a30021521f4898271018955f7ff0026015c0f7ee" -> "sha256:d95fa38f2d8f004f9600fdb9f84b4faa7179210a91e4c7f2b399ca365941c011" [label=""];
}

