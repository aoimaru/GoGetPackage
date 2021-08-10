[app/sources/476428448.Dockerfile]
digraph {
  "sha256:ee618b50f98e9d70d37af656abcc56c89cf7ac1f4e2dcd726a253facc1af074f" [label="docker-image://registry.local.com:5000/oracle/database-instantclient/32bit:12.2.0.1" shape="ellipse"];
  "sha256:9f6af2fe8d5a35fd488f7bc030082aa1ddb4932f40715a97303ed42d3fd5f35d" [label="local://context" shape="ellipse"];
  "sha256:78fcf3f38e1a0c539f5c0afaf3266e8387ced9c396d6d69c946aea9c72397ad2" [label="copy{src=/ses/oraInst.loc, dest=/config/},copy{src=/ses/ses.rsp, dest=/config/},copy{src=/ses/setup.sh, dest=/config/},copy{src=/siebelkeystore.jks, dest=/config/}" shape="note"];
  "sha256:202699c07ba04ae63cffd5ec167578081a68ea69195cc2f87fd692355c3332b4" [label="copy{src=/Siebel_Enterprise_Server, dest=/mnt/Siebel_Enterprise_Server/}" shape="note"];
  "sha256:a2ce0d50479de5bd4e975dcac425483b228786e8a2604d19f6125b3575942c62" [label="/bin/sh -c mkdir -p -ma+rwx /siebel/ses /siebel/oraInventory  /stage && groupadd -g  487 siebel && useradd -m -g siebel -G siebel -u 9999  siebel && yum -y install  libgcc.i686  libxcb.i686  libX11.i686  libXext.i686  libXau.i686  libcurl.i686 && yum clean all && rm -rf /var/cache/yum/x86_64  && rm -rf /var/cache/yum/i686 && echo Installing Siebel ... && bash /config/setup.sh && rm -rf /mnt/Siebel_Enterprise_Server/ && echo Waiting for deployment of web archive ... && sleep 30 && chmod -R 755 /siebel/ses" shape="box"];
  "sha256:716f090629ecc90035be64f24154c40914c46f90ce8149f2a9a0d100c2af44cd" [label="sha256:716f090629ecc90035be64f24154c40914c46f90ce8149f2a9a0d100c2af44cd" shape="plaintext"];
  "sha256:ee618b50f98e9d70d37af656abcc56c89cf7ac1f4e2dcd726a253facc1af074f" -> "sha256:78fcf3f38e1a0c539f5c0afaf3266e8387ced9c396d6d69c946aea9c72397ad2" [label=""];
  "sha256:9f6af2fe8d5a35fd488f7bc030082aa1ddb4932f40715a97303ed42d3fd5f35d" -> "sha256:78fcf3f38e1a0c539f5c0afaf3266e8387ced9c396d6d69c946aea9c72397ad2" [label=""];
  "sha256:78fcf3f38e1a0c539f5c0afaf3266e8387ced9c396d6d69c946aea9c72397ad2" -> "sha256:202699c07ba04ae63cffd5ec167578081a68ea69195cc2f87fd692355c3332b4" [label=""];
  "sha256:9f6af2fe8d5a35fd488f7bc030082aa1ddb4932f40715a97303ed42d3fd5f35d" -> "sha256:202699c07ba04ae63cffd5ec167578081a68ea69195cc2f87fd692355c3332b4" [label=""];
  "sha256:202699c07ba04ae63cffd5ec167578081a68ea69195cc2f87fd692355c3332b4" -> "sha256:a2ce0d50479de5bd4e975dcac425483b228786e8a2604d19f6125b3575942c62" [label=""];
  "sha256:a2ce0d50479de5bd4e975dcac425483b228786e8a2604d19f6125b3575942c62" -> "sha256:716f090629ecc90035be64f24154c40914c46f90ce8149f2a9a0d100c2af44cd" [label=""];
}

