[app/sources/284619588.Dockerfile]
digraph {
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" [label="docker-image://docker.io/library/python:3.7" shape="ellipse"];
  "sha256:1c42dab3dbdb27bda7fd98c8433a3ef3fa74cae2f1ee73243a7f6eaa5ac166f0" [label="/bin/sh -c mkdir -p /usr/local /data" shape="box"];
  "sha256:ed2a0585e4d887b3a1bd61823e77afabe28f9e5fcfd582442d094e28d1311c1f" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:23f8b8ed395dff59c701c04de87209dc8e4846c72c2b59403600f6fc511bd440" [label="local://context" shape="ellipse"];
  "sha256:985e0678f995fa1c9acf313efce5f78038f7e8136907ca9f98c221f5f22ab724" [label="copy{src=/, dest=/usr/local/lakesuperior}" shape="note"];
  "sha256:845729ea9034478c7e3bff799050f3398f08a38555ab2b571c226984e1f4f27a" [label="mkdir{path=/usr/local/lakesuperior}" shape="note"];
  "sha256:98ced6b255b41dc2d4869f3b54a84dc032d693645476ff6a2e293d35367e4c72" [label="/bin/sh -c git submodule update --init" shape="box"];
  "sha256:66a7f748ef385b464146c10a1d0fd3b15f5f097a394329f0d46cf9380f9350c6" [label="/bin/sh -c [[ -f lakesuperior/model/base.c ]] ||                 pip install -r requirements_dev.txt" shape="box"];
  "sha256:8bc4e70fe0e26a672e54e499ca4d3d62239476f597346bf47b3062bceb556d97" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:b91e608f8ba0a03e14f474d7847b4ae369e300275b0620ef2e34a671ffd5e5c2" [label="/bin/sh -c cp ./docker/etc/* ./lakesuperior/etc.defaults/" shape="box"];
  "sha256:2cf4ff6d9715c71df9e72d46d830995f61886ceef331f7d7b5a4c778bc115b04" [label="sha256:2cf4ff6d9715c71df9e72d46d830995f61886ceef331f7d7b5a4c778bc115b04" shape="plaintext"];
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" -> "sha256:1c42dab3dbdb27bda7fd98c8433a3ef3fa74cae2f1ee73243a7f6eaa5ac166f0" [label=""];
  "sha256:1c42dab3dbdb27bda7fd98c8433a3ef3fa74cae2f1ee73243a7f6eaa5ac166f0" -> "sha256:ed2a0585e4d887b3a1bd61823e77afabe28f9e5fcfd582442d094e28d1311c1f" [label=""];
  "sha256:ed2a0585e4d887b3a1bd61823e77afabe28f9e5fcfd582442d094e28d1311c1f" -> "sha256:985e0678f995fa1c9acf313efce5f78038f7e8136907ca9f98c221f5f22ab724" [label=""];
  "sha256:23f8b8ed395dff59c701c04de87209dc8e4846c72c2b59403600f6fc511bd440" -> "sha256:985e0678f995fa1c9acf313efce5f78038f7e8136907ca9f98c221f5f22ab724" [label=""];
  "sha256:985e0678f995fa1c9acf313efce5f78038f7e8136907ca9f98c221f5f22ab724" -> "sha256:845729ea9034478c7e3bff799050f3398f08a38555ab2b571c226984e1f4f27a" [label=""];
  "sha256:845729ea9034478c7e3bff799050f3398f08a38555ab2b571c226984e1f4f27a" -> "sha256:98ced6b255b41dc2d4869f3b54a84dc032d693645476ff6a2e293d35367e4c72" [label=""];
  "sha256:98ced6b255b41dc2d4869f3b54a84dc032d693645476ff6a2e293d35367e4c72" -> "sha256:66a7f748ef385b464146c10a1d0fd3b15f5f097a394329f0d46cf9380f9350c6" [label=""];
  "sha256:66a7f748ef385b464146c10a1d0fd3b15f5f097a394329f0d46cf9380f9350c6" -> "sha256:8bc4e70fe0e26a672e54e499ca4d3d62239476f597346bf47b3062bceb556d97" [label=""];
  "sha256:8bc4e70fe0e26a672e54e499ca4d3d62239476f597346bf47b3062bceb556d97" -> "sha256:b91e608f8ba0a03e14f474d7847b4ae369e300275b0620ef2e34a671ffd5e5c2" [label=""];
  "sha256:b91e608f8ba0a03e14f474d7847b4ae369e300275b0620ef2e34a671ffd5e5c2" -> "sha256:2cf4ff6d9715c71df9e72d46d830995f61886ceef331f7d7b5a4c778bc115b04" [label=""];
}

