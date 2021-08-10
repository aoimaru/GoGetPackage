[app/sources/345944090.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:76ceb16a023c87e84cd2073649432cca1c3a98fcb1533706fcc4ff242f9852b7" [label="/bin/sh -c apk add --no-cache bc" shape="box"];
  "sha256:3e42f319b4dd4f709c3536b1518856383211f0401103ca4166f477343188e1f7" [label="sha256:3e42f319b4dd4f709c3536b1518856383211f0401103ca4166f477343188e1f7" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:76ceb16a023c87e84cd2073649432cca1c3a98fcb1533706fcc4ff242f9852b7" [label=""];
  "sha256:76ceb16a023c87e84cd2073649432cca1c3a98fcb1533706fcc4ff242f9852b7" -> "sha256:3e42f319b4dd4f709c3536b1518856383211f0401103ca4166f477343188e1f7" [label=""];
}

