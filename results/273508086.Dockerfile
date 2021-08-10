[app/sources/273508086.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:eaea0df5884ce98a9a22d8ee3900fd1a6b555e0d01af7ff22d2f31520068f963" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:67b4c01843ebdefb0c77212aa691aacdc112edbae760260d8f3f7b2d74735c9d" [label="/bin/sh -c apt-get -qq install tomcat8 default-jdk" shape="box"];
  "sha256:90c62ab5d8b4a602d92bf74515ba92477f4a369b737cce697c0a36595260c371" [label="/bin/sh -c mkdir -p $CATALINA_TMPDIR" shape="box"];
  "sha256:26947439de1036a3a7d91a2b0934025fffc66b69ea2b027cfb521c13ebaf3f1e" [label="sha256:26947439de1036a3a7d91a2b0934025fffc66b69ea2b027cfb521c13ebaf3f1e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:eaea0df5884ce98a9a22d8ee3900fd1a6b555e0d01af7ff22d2f31520068f963" [label=""];
  "sha256:eaea0df5884ce98a9a22d8ee3900fd1a6b555e0d01af7ff22d2f31520068f963" -> "sha256:67b4c01843ebdefb0c77212aa691aacdc112edbae760260d8f3f7b2d74735c9d" [label=""];
  "sha256:67b4c01843ebdefb0c77212aa691aacdc112edbae760260d8f3f7b2d74735c9d" -> "sha256:90c62ab5d8b4a602d92bf74515ba92477f4a369b737cce697c0a36595260c371" [label=""];
  "sha256:90c62ab5d8b4a602d92bf74515ba92477f4a369b737cce697c0a36595260c371" -> "sha256:26947439de1036a3a7d91a2b0934025fffc66b69ea2b027cfb521c13ebaf3f1e" [label=""];
}

