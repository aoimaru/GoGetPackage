[app/sources/252792164.Dockerfile]
digraph {
  "sha256:8cdfdf2f535c6ab46657597825d49f2bd25e92497f019f562f1a168528ed432f" [label="docker-image://docker.io/chattaway/nslcd:latest" shape="ellipse"];
  "sha256:29154a4acbbc950b31cde5015486ffd956aefda31b31648aa5494411a2735ff3" [label="/bin/sh -c yum -y install samba samba-client && yum clean all" shape="box"];
  "sha256:fafb14faca67db9a9f546ff1a1cc9e03ae3a58b6a9939f7cd62f43ee89953864" [label="/bin/sh -c mkdir --parents /run/samba/ncalrpc" shape="box"];
  "sha256:850de8ca3f5c8f92fff2af42e732cf599b436c23c75f1896ab82a6d3d18626b0" [label="local://context" shape="ellipse"];
  "sha256:b1e6a27601dc8f463fc9e52ac3ee99c928d91d97bcb7087dc2d987ce6d8fa106" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:245cc426973ea9d98ce767e12deaf65310670346baa16468a41566beebdf9957" [label="sha256:245cc426973ea9d98ce767e12deaf65310670346baa16468a41566beebdf9957" shape="plaintext"];
  "sha256:8cdfdf2f535c6ab46657597825d49f2bd25e92497f019f562f1a168528ed432f" -> "sha256:29154a4acbbc950b31cde5015486ffd956aefda31b31648aa5494411a2735ff3" [label=""];
  "sha256:29154a4acbbc950b31cde5015486ffd956aefda31b31648aa5494411a2735ff3" -> "sha256:fafb14faca67db9a9f546ff1a1cc9e03ae3a58b6a9939f7cd62f43ee89953864" [label=""];
  "sha256:fafb14faca67db9a9f546ff1a1cc9e03ae3a58b6a9939f7cd62f43ee89953864" -> "sha256:b1e6a27601dc8f463fc9e52ac3ee99c928d91d97bcb7087dc2d987ce6d8fa106" [label=""];
  "sha256:850de8ca3f5c8f92fff2af42e732cf599b436c23c75f1896ab82a6d3d18626b0" -> "sha256:b1e6a27601dc8f463fc9e52ac3ee99c928d91d97bcb7087dc2d987ce6d8fa106" [label=""];
  "sha256:b1e6a27601dc8f463fc9e52ac3ee99c928d91d97bcb7087dc2d987ce6d8fa106" -> "sha256:245cc426973ea9d98ce767e12deaf65310670346baa16468a41566beebdf9957" [label=""];
}

