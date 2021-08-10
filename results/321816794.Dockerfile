[app/sources/321816794.Dockerfile]
digraph {
  "sha256:849cf514990794e0894e85bc866f5f97becb1e9bf71ef3e9ffec47f9613fd7d7" [label="docker-image://docker.io/library/ruby:2.3.7" shape="ellipse"];
  "sha256:f7667b127aa6831b6c988fad11d079f52cf473d3ad2bb9e828f79bd50f457fb7" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev libsystemd-dev libvirt-dev" shape="box"];
  "sha256:731c5e8880b2e1d012a07b478849705f8da5b6a5bbb2b16f317b705fc1e73011" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:b4b846b6e2fd2e5fcd859bab5ab560cd948217882438125974111455bf185118" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:7f62134cfd1e8f90b769c719a5359c6062bc50ff8c54ca8bb2aafb759ea1f185" [label="/bin/sh -c mkdir /usr/local/foreman_fog_proxmox" shape="box"];
  "sha256:e4ca326c05431fce20e13545e41e3c5b853652bb3d105ce515eb31fd41598956" [label="mkdir{path=/usr/local/foreman_fog_proxmox}" shape="note"];
  "sha256:f700ac410cb0e05b37bf2ee8372e3e1b808afa19671c307c8ca87da68bb37df5" [label="local://context" shape="ellipse"];
  "sha256:b49525e151132845d4a4ec6da33a90c077b9271ca396462f0566b980821ac6cf" [label="copy{src=/, dest=/usr/local/foreman_fog_proxmox}" shape="note"];
  "sha256:af78831bb51de124aeb41f83040bfeb83dd26c9cb3701a518b0a3067e5036fd0" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:9a5cf9910545d6af5b197ca882d1af93d496b409eec3eacc388cdb27cb6778d7" [label="/bin/sh -c git clone https://github.com/fog/fog-proxmox.git" shape="box"];
  "sha256:48d6c6fd5f14a6fa280103d7862ecadbba188e9e2cdc5c9745f2619b184cc56a" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:14319f9c831ee84eb5ecb187a62ad2c780d7bb5dbd76836073375ac755ad0143" [label="/bin/sh -c git clone https://github.com/theforeman/foreman.git -b develop" shape="box"];
  "sha256:7602a62f30a359f997a9904c731c916af1cd88b5d71313ef8ab03310d890f267" [label="mkdir{path=/usr/local/foreman}" shape="note"];
  "sha256:bc214c7ac877521c8a3e42d0d630f94b87bb3579c9a7ea1f95feb9d9cd2d3017" [label="/bin/sh -c echo \"gem 'foreman_fog_proxmox', :path => '/usr/local/foreman_fog_proxmox'\\n\" > /usr/local/foreman/bundler.d/Gemfile.local.rb" shape="box"];
  "sha256:02f2f257730968133ba4f23dfc861379190c38b7686dc26e703ff4d978b717f0" [label="/bin/sh -c echo \"gem 'fog-proxmox', :path => '/usr/local/fog-proxmox'\\n\" > /usr/local/foreman/bundler.d/Gemfile.local.rb" shape="box"];
  "sha256:e21794ad2cf171258aac55c258007dbcff72abaa0bb9b96f19e494b80396bfea" [label="/bin/sh -c echo \"gem 'simplecov'\" >> /usr/local/foreman/bundler.d/Gemfile.local.rb" shape="box"];
  "sha256:da2d67a505549c11bbaec2c7e0b1aae73aa3e5a2d8ae1198c8b7537c3c821002" [label="/bin/sh -c cp /usr/local/foreman/config/settings.yaml.example /usr/local/foreman/config/settings.yaml" shape="box"];
  "sha256:77df62205d40ccb20fc973e2c60306fb83d3ddfe9c996d5dd49536b4f11b6758" [label="/bin/sh -c cp /usr/local/foreman/config/database.yml.example /usr/local/foreman/config/database.yml" shape="box"];
  "sha256:4cd9e9e9ef825169d1563350c25294b0c75187393a730f6ea0f581d0f0970df3" [label="/bin/sh -c cp /usr/local/foreman/config/model.mappings.example /usr/local/foreman/config/model.mappings" shape="box"];
  "sha256:755cbcf4f34dd0c3c664b0872ed78982893ef5cd0ada52f12b933e774a25e01e" [label="/bin/sh -c bundle install --jobs 20" shape="box"];
  "sha256:1cb9d7bda2a472de7ccc76be6e091cae2378cccd312ea184a3d9318b827bc507" [label="/bin/sh -c bundle exec bin/rake db:migrate" shape="box"];
  "sha256:b0bdbd17fd26bcf3e167e1e24de33645e4a5f1c5605f299618751237b03c5c30" [label="sha256:b0bdbd17fd26bcf3e167e1e24de33645e4a5f1c5605f299618751237b03c5c30" shape="plaintext"];
  "sha256:849cf514990794e0894e85bc866f5f97becb1e9bf71ef3e9ffec47f9613fd7d7" -> "sha256:f7667b127aa6831b6c988fad11d079f52cf473d3ad2bb9e828f79bd50f457fb7" [label=""];
  "sha256:f7667b127aa6831b6c988fad11d079f52cf473d3ad2bb9e828f79bd50f457fb7" -> "sha256:731c5e8880b2e1d012a07b478849705f8da5b6a5bbb2b16f317b705fc1e73011" [label=""];
  "sha256:731c5e8880b2e1d012a07b478849705f8da5b6a5bbb2b16f317b705fc1e73011" -> "sha256:b4b846b6e2fd2e5fcd859bab5ab560cd948217882438125974111455bf185118" [label=""];
  "sha256:b4b846b6e2fd2e5fcd859bab5ab560cd948217882438125974111455bf185118" -> "sha256:7f62134cfd1e8f90b769c719a5359c6062bc50ff8c54ca8bb2aafb759ea1f185" [label=""];
  "sha256:7f62134cfd1e8f90b769c719a5359c6062bc50ff8c54ca8bb2aafb759ea1f185" -> "sha256:e4ca326c05431fce20e13545e41e3c5b853652bb3d105ce515eb31fd41598956" [label=""];
  "sha256:e4ca326c05431fce20e13545e41e3c5b853652bb3d105ce515eb31fd41598956" -> "sha256:b49525e151132845d4a4ec6da33a90c077b9271ca396462f0566b980821ac6cf" [label=""];
  "sha256:f700ac410cb0e05b37bf2ee8372e3e1b808afa19671c307c8ca87da68bb37df5" -> "sha256:b49525e151132845d4a4ec6da33a90c077b9271ca396462f0566b980821ac6cf" [label=""];
  "sha256:b49525e151132845d4a4ec6da33a90c077b9271ca396462f0566b980821ac6cf" -> "sha256:af78831bb51de124aeb41f83040bfeb83dd26c9cb3701a518b0a3067e5036fd0" [label=""];
  "sha256:af78831bb51de124aeb41f83040bfeb83dd26c9cb3701a518b0a3067e5036fd0" -> "sha256:9a5cf9910545d6af5b197ca882d1af93d496b409eec3eacc388cdb27cb6778d7" [label=""];
  "sha256:9a5cf9910545d6af5b197ca882d1af93d496b409eec3eacc388cdb27cb6778d7" -> "sha256:48d6c6fd5f14a6fa280103d7862ecadbba188e9e2cdc5c9745f2619b184cc56a" [label=""];
  "sha256:48d6c6fd5f14a6fa280103d7862ecadbba188e9e2cdc5c9745f2619b184cc56a" -> "sha256:14319f9c831ee84eb5ecb187a62ad2c780d7bb5dbd76836073375ac755ad0143" [label=""];
  "sha256:14319f9c831ee84eb5ecb187a62ad2c780d7bb5dbd76836073375ac755ad0143" -> "sha256:7602a62f30a359f997a9904c731c916af1cd88b5d71313ef8ab03310d890f267" [label=""];
  "sha256:7602a62f30a359f997a9904c731c916af1cd88b5d71313ef8ab03310d890f267" -> "sha256:bc214c7ac877521c8a3e42d0d630f94b87bb3579c9a7ea1f95feb9d9cd2d3017" [label=""];
  "sha256:bc214c7ac877521c8a3e42d0d630f94b87bb3579c9a7ea1f95feb9d9cd2d3017" -> "sha256:02f2f257730968133ba4f23dfc861379190c38b7686dc26e703ff4d978b717f0" [label=""];
  "sha256:02f2f257730968133ba4f23dfc861379190c38b7686dc26e703ff4d978b717f0" -> "sha256:e21794ad2cf171258aac55c258007dbcff72abaa0bb9b96f19e494b80396bfea" [label=""];
  "sha256:e21794ad2cf171258aac55c258007dbcff72abaa0bb9b96f19e494b80396bfea" -> "sha256:da2d67a505549c11bbaec2c7e0b1aae73aa3e5a2d8ae1198c8b7537c3c821002" [label=""];
  "sha256:da2d67a505549c11bbaec2c7e0b1aae73aa3e5a2d8ae1198c8b7537c3c821002" -> "sha256:77df62205d40ccb20fc973e2c60306fb83d3ddfe9c996d5dd49536b4f11b6758" [label=""];
  "sha256:77df62205d40ccb20fc973e2c60306fb83d3ddfe9c996d5dd49536b4f11b6758" -> "sha256:4cd9e9e9ef825169d1563350c25294b0c75187393a730f6ea0f581d0f0970df3" [label=""];
  "sha256:4cd9e9e9ef825169d1563350c25294b0c75187393a730f6ea0f581d0f0970df3" -> "sha256:755cbcf4f34dd0c3c664b0872ed78982893ef5cd0ada52f12b933e774a25e01e" [label=""];
  "sha256:755cbcf4f34dd0c3c664b0872ed78982893ef5cd0ada52f12b933e774a25e01e" -> "sha256:1cb9d7bda2a472de7ccc76be6e091cae2378cccd312ea184a3d9318b827bc507" [label=""];
  "sha256:1cb9d7bda2a472de7ccc76be6e091cae2378cccd312ea184a3d9318b827bc507" -> "sha256:b0bdbd17fd26bcf3e167e1e24de33645e4a5f1c5605f299618751237b03c5c30" [label=""];
}

