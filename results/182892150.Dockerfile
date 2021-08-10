[app/sources/182892150.Dockerfile]
digraph {
  "sha256:8a6a398586ecbd47aeb7baeaeade85bf8430548af644d5622689b30f55d55f89" [label="docker-image://docker.io/continuumio/anaconda:latest" shape="ellipse"];
  "sha256:b0e7e95215fecd8a20e8209e8ef4b477aafcac2c7f4416495aa4335cd078e8fe" [label="/bin/sh -c apt-get update  && apt-get install -y     build-essential     gfortran" shape="box"];
  "sha256:57671975f42d729ee653a4fd49e67f7cd60518c1148677b6a0dd85f20ba00bef" [label="/bin/sh -c conda install jupyter -y --quiet" shape="box"];
  "sha256:1fb4ebeb04a78cf10e155f5109c8fe154216b8882d35b6c4eaa5cc2bd92f3043" [label="/bin/sh -c mkdir $NOTEBOOKS" shape="box"];
  "sha256:ab97197c7202150eb0bbd6ea1014e4635f3f5b1a06dc6ce47344979e33e9c3ba" [label="/bin/sh -c mkdir $NOTEBOOKS/FUSED-Wake" shape="box"];
  "sha256:36ae1139b87c1007b02cf91fe66e8b7b3d90a48a439a0264e6168694b8209350" [label="/bin/sh -c mkdir $HOME" shape="box"];
  "sha256:bb3e17b1b53764bdf0ecc04fe25b961b8993acc24bdf304be43301721b2b44a0" [label="/bin/sh -c mkdir $INSTALL" shape="box"];
  "sha256:49f313a65fb5d1d40a01c62fcaee13e40f7ee06cc77db0659338fbe99be78e7d" [label="mkdir{path=/opt/install}" shape="note"];
  "sha256:40a015734fa1bab065b64482db5c0b54bb0f63f8e645ee0d59bb48d2caad9eae" [label="local://context" shape="ellipse"];
  "sha256:798a6f9235dbeb91476e46f7192c0dd5b8f3d1e80d5e385f08bc200226f292d4" [label="copy{src=/requirements_dev.txt, dest=/opt/install}" shape="note"];
  "sha256:46c3430ff722ac90dae9065e860d1b63bd51f81d43bc9f17c245362e9da8ec54" [label="/bin/sh -c pip install --upgrade pip &&     pip install -r requirements_dev.txt" shape="box"];
  "sha256:2fef274bfeb643ec1f6eb33222c922cd5e5b29ee35cf006c94a02ea523260788" [label="copy{src=/, dest=/opt/notebooks/FUSED-Wake}" shape="note"];
  "sha256:dd6bbe2a1ddca1b75cd053b5b4b4374f70db93f85aeb706148db1f9e0251b13b" [label="mkdir{path=/opt/notebooks/FUSED-Wake}" shape="note"];
  "sha256:612db273739dcd409d454b4663c54872861f9b9868b8a7adcc009452bf8ce254" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:36fc7854a64bd242a8f0d1fafa06244859e75569a44e1d6616dc09588d5009c8" [label="mkdir{path=/opt/notebooks}" shape="note"];
  "sha256:708d0740495852b4154329f68af0f6be07bcd1c9d0f6c9286947305437868253" [label="sha256:708d0740495852b4154329f68af0f6be07bcd1c9d0f6c9286947305437868253" shape="plaintext"];
  "sha256:8a6a398586ecbd47aeb7baeaeade85bf8430548af644d5622689b30f55d55f89" -> "sha256:b0e7e95215fecd8a20e8209e8ef4b477aafcac2c7f4416495aa4335cd078e8fe" [label=""];
  "sha256:b0e7e95215fecd8a20e8209e8ef4b477aafcac2c7f4416495aa4335cd078e8fe" -> "sha256:57671975f42d729ee653a4fd49e67f7cd60518c1148677b6a0dd85f20ba00bef" [label=""];
  "sha256:57671975f42d729ee653a4fd49e67f7cd60518c1148677b6a0dd85f20ba00bef" -> "sha256:1fb4ebeb04a78cf10e155f5109c8fe154216b8882d35b6c4eaa5cc2bd92f3043" [label=""];
  "sha256:1fb4ebeb04a78cf10e155f5109c8fe154216b8882d35b6c4eaa5cc2bd92f3043" -> "sha256:ab97197c7202150eb0bbd6ea1014e4635f3f5b1a06dc6ce47344979e33e9c3ba" [label=""];
  "sha256:ab97197c7202150eb0bbd6ea1014e4635f3f5b1a06dc6ce47344979e33e9c3ba" -> "sha256:36ae1139b87c1007b02cf91fe66e8b7b3d90a48a439a0264e6168694b8209350" [label=""];
  "sha256:36ae1139b87c1007b02cf91fe66e8b7b3d90a48a439a0264e6168694b8209350" -> "sha256:bb3e17b1b53764bdf0ecc04fe25b961b8993acc24bdf304be43301721b2b44a0" [label=""];
  "sha256:bb3e17b1b53764bdf0ecc04fe25b961b8993acc24bdf304be43301721b2b44a0" -> "sha256:49f313a65fb5d1d40a01c62fcaee13e40f7ee06cc77db0659338fbe99be78e7d" [label=""];
  "sha256:49f313a65fb5d1d40a01c62fcaee13e40f7ee06cc77db0659338fbe99be78e7d" -> "sha256:798a6f9235dbeb91476e46f7192c0dd5b8f3d1e80d5e385f08bc200226f292d4" [label=""];
  "sha256:40a015734fa1bab065b64482db5c0b54bb0f63f8e645ee0d59bb48d2caad9eae" -> "sha256:798a6f9235dbeb91476e46f7192c0dd5b8f3d1e80d5e385f08bc200226f292d4" [label=""];
  "sha256:798a6f9235dbeb91476e46f7192c0dd5b8f3d1e80d5e385f08bc200226f292d4" -> "sha256:46c3430ff722ac90dae9065e860d1b63bd51f81d43bc9f17c245362e9da8ec54" [label=""];
  "sha256:46c3430ff722ac90dae9065e860d1b63bd51f81d43bc9f17c245362e9da8ec54" -> "sha256:2fef274bfeb643ec1f6eb33222c922cd5e5b29ee35cf006c94a02ea523260788" [label=""];
  "sha256:40a015734fa1bab065b64482db5c0b54bb0f63f8e645ee0d59bb48d2caad9eae" -> "sha256:2fef274bfeb643ec1f6eb33222c922cd5e5b29ee35cf006c94a02ea523260788" [label=""];
  "sha256:2fef274bfeb643ec1f6eb33222c922cd5e5b29ee35cf006c94a02ea523260788" -> "sha256:dd6bbe2a1ddca1b75cd053b5b4b4374f70db93f85aeb706148db1f9e0251b13b" [label=""];
  "sha256:dd6bbe2a1ddca1b75cd053b5b4b4374f70db93f85aeb706148db1f9e0251b13b" -> "sha256:612db273739dcd409d454b4663c54872861f9b9868b8a7adcc009452bf8ce254" [label=""];
  "sha256:612db273739dcd409d454b4663c54872861f9b9868b8a7adcc009452bf8ce254" -> "sha256:36fc7854a64bd242a8f0d1fafa06244859e75569a44e1d6616dc09588d5009c8" [label=""];
  "sha256:36fc7854a64bd242a8f0d1fafa06244859e75569a44e1d6616dc09588d5009c8" -> "sha256:708d0740495852b4154329f68af0f6be07bcd1c9d0f6c9286947305437868253" [label=""];
}

