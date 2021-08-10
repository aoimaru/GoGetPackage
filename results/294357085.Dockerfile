[app/sources/294357085.Dockerfile]
digraph {
  "sha256:924861369b01a8407718d82b04a1b964eb9e0e8bcc2f69d31fbd8f6eca65deb9" [label="docker-image://docker.io/library/node:8.9-alpine" shape="ellipse"];
  "sha256:8dd5869fbde141e750f92db6b749fd182a2521a0d423f54f2b6400f04642989d" [label="mkdir{path=/taiga_events}" shape="note"];
  "sha256:c8877fe9de20babdd45217d891af2d48ed50c1a010815ae59855ae6390f94dae" [label="local://context" shape="ellipse"];
  "sha256:b96d3571f047c3f9c6d729b4924b4a14db7d8037184256518679a8729886ef66" [label="copy{src=/scripts, dest=/scripts/}" shape="note"];
  "sha256:468ee3a7ad49ff9f7a29b99d7133c7f696075a9bb00ba2d6b5d319396a5d3da2" [label="https://github.com/taigaio/taiga-events/archive/master.tar.gz" shape="ellipse"];
  "sha256:343fff23c102e0fe3b484fc0254d328906dc6c20580aac74e30da0c222fafda5" [label="copy{src=/master.tar.gz, dest=/taiga_events/}" shape="note"];
  "sha256:dcd8ea0b5e731873de42d00976022f7571962e05e1c869110af572a2bb2d9da8" [label="/bin/sh -c tar -xzf ${TAIGA_VERSION}.tar.gz -C ./ taiga-events-master/ --strip-components=1     && rm ${TAIGA_VERSION}.tar.gz     && npm install --production && npm install -g coffee-script     && addgroup -S taiga && adduser -S -G taiga taiga     && chown -R taiga /taiga_events     && chown -R taiga /scripts/     && chmod +x /scripts/entrypoint.sh" shape="box"];
  "sha256:36cf4cb317a5b1e0be8596c4be34b23d38d925229c325a7c45ddd5bfc2c4157c" [label="sha256:36cf4cb317a5b1e0be8596c4be34b23d38d925229c325a7c45ddd5bfc2c4157c" shape="plaintext"];
  "sha256:924861369b01a8407718d82b04a1b964eb9e0e8bcc2f69d31fbd8f6eca65deb9" -> "sha256:8dd5869fbde141e750f92db6b749fd182a2521a0d423f54f2b6400f04642989d" [label=""];
  "sha256:8dd5869fbde141e750f92db6b749fd182a2521a0d423f54f2b6400f04642989d" -> "sha256:b96d3571f047c3f9c6d729b4924b4a14db7d8037184256518679a8729886ef66" [label=""];
  "sha256:c8877fe9de20babdd45217d891af2d48ed50c1a010815ae59855ae6390f94dae" -> "sha256:b96d3571f047c3f9c6d729b4924b4a14db7d8037184256518679a8729886ef66" [label=""];
  "sha256:b96d3571f047c3f9c6d729b4924b4a14db7d8037184256518679a8729886ef66" -> "sha256:343fff23c102e0fe3b484fc0254d328906dc6c20580aac74e30da0c222fafda5" [label=""];
  "sha256:468ee3a7ad49ff9f7a29b99d7133c7f696075a9bb00ba2d6b5d319396a5d3da2" -> "sha256:343fff23c102e0fe3b484fc0254d328906dc6c20580aac74e30da0c222fafda5" [label=""];
  "sha256:343fff23c102e0fe3b484fc0254d328906dc6c20580aac74e30da0c222fafda5" -> "sha256:dcd8ea0b5e731873de42d00976022f7571962e05e1c869110af572a2bb2d9da8" [label=""];
  "sha256:dcd8ea0b5e731873de42d00976022f7571962e05e1c869110af572a2bb2d9da8" -> "sha256:36cf4cb317a5b1e0be8596c4be34b23d38d925229c325a7c45ddd5bfc2c4157c" [label=""];
}

