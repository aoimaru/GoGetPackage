[app/sources/388254398.Dockerfile]
digraph {
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" [label="docker-image://docker.io/library/php:5.6-cli" shape="ellipse"];
  "sha256:b6b97b9f122852d579dd6a8b47a76003e895aef209166acad668303f7302d137" [label="/bin/sh -c apt-get update &&     apt-get install -y git zip unzip &&     apt-get -y autoremove &&     apt-get clean &&     curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:104eff2354b6cf9b12173c91ed6a8eb612982f287f1a7f5d9f9aeae49028451d" [label="mkdir{path=/opt/mockery}" shape="note"];
  "sha256:35789bbd71b9d2471886d7bacc20e08c8c8a7062f07da9044f1f020b95318f6c" [label="local://context" shape="ellipse"];
  "sha256:dca1d2c47b28582e1b887b87140cc4627ebb5a4db99837a91f2ece8744f71a32" [label="copy{src=/composer.json, dest=/opt/mockery/}" shape="note"];
  "sha256:9aa30dc01222a872025d533e2db8e4c280a54d7f695ddd1e186070622ed55dc2" [label="/bin/sh -c composer install" shape="box"];
  "sha256:17d567ee3dfc314040364332d25415540bf8a94f3036192fa8b029cebd1cc261" [label="sha256:17d567ee3dfc314040364332d25415540bf8a94f3036192fa8b029cebd1cc261" shape="plaintext"];
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" -> "sha256:b6b97b9f122852d579dd6a8b47a76003e895aef209166acad668303f7302d137" [label=""];
  "sha256:b6b97b9f122852d579dd6a8b47a76003e895aef209166acad668303f7302d137" -> "sha256:104eff2354b6cf9b12173c91ed6a8eb612982f287f1a7f5d9f9aeae49028451d" [label=""];
  "sha256:104eff2354b6cf9b12173c91ed6a8eb612982f287f1a7f5d9f9aeae49028451d" -> "sha256:dca1d2c47b28582e1b887b87140cc4627ebb5a4db99837a91f2ece8744f71a32" [label=""];
  "sha256:35789bbd71b9d2471886d7bacc20e08c8c8a7062f07da9044f1f020b95318f6c" -> "sha256:dca1d2c47b28582e1b887b87140cc4627ebb5a4db99837a91f2ece8744f71a32" [label=""];
  "sha256:dca1d2c47b28582e1b887b87140cc4627ebb5a4db99837a91f2ece8744f71a32" -> "sha256:9aa30dc01222a872025d533e2db8e4c280a54d7f695ddd1e186070622ed55dc2" [label=""];
  "sha256:9aa30dc01222a872025d533e2db8e4c280a54d7f695ddd1e186070622ed55dc2" -> "sha256:17d567ee3dfc314040364332d25415540bf8a94f3036192fa8b029cebd1cc261" [label=""];
}

