[app/sources/335635780.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:5e105125bd42df57ae2bc0d6c1e2badc5e3e95a01e78033d6b0f0c7015f9c9ed" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:9582bc5b8478c1f2f1c346279976a6ca03a2538b4dae21af1abec78e12e88741" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ebeddecaf2fcd435e962e681cc4ea76eb5ccbd320b516fd034b83ff9d96ceee6" [label="/bin/sh -c apt-get install -y unzip hercules curl ranger vim links" shape="box"];
  "sha256:9bd05695f01451896f4985b0e4cbf229f2db70140ee9e84d1fefed5867fecf83" [label="/bin/sh -c curl -o 3270.tgz https://netcologne.dl.sourceforge.net/project/x3270/x3270/3.6ga4/suite3270-3.6ga4-src.tgz" shape="box"];
  "sha256:96246e2418998f253aa34b59740f2327ff533f594b4f28f80429e4ff48ff39e2" [label="/bin/sh -c curl -o turnkey.zip http://wotho.ethz.ch/tk4-/tk4-_v1.00_current.zip" shape="box"];
  "sha256:c55e70cf4c2540b34c17412e3b4116701cb8113fae866a27e605106f36352c01" [label="/bin/sh -c tar -xvf 3270.tgz" shape="box"];
  "sha256:aea880b38c5ae7428fdb5956bad77e449c2879a63f836e6e7e42bc001f0b4dad" [label="/bin/sh -c unzip turnkey.zip" shape="box"];
  "sha256:adde49f91d92bb88c605571551ec5a26f23676a1779fc40d4120f0ced56cffaf" [label="/bin/sh -c apt-get install -y tmux" shape="box"];
  "sha256:60fbcc1674258291782a45dcd7daf286b620b002089f6a403d3db4fac2fe7d74" [label="/bin/sh -c echo 'alias bye=\"tmux kill-server\"' >> ~/.bashrc" shape="box"];
  "sha256:c9fe601466fc232e12501d91c85783b3e0244a4844d4f4de52a092e3751b43de" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales" shape="box"];
  "sha256:6c3b74dc40517c1bfb53a80a78bf3e9121cbc44d7265aa4a942e13b2a0e1cacf" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     dpkg-reconfigure --frontend=noninteractive locales && \tupdate-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:ee828d9f3bb9534b92133f629fc2abf7a199281c49aca6f356c978ea8d326e58" [label="/bin/sh -c apt-get install -y gcc libssl-dev m4 libncursesw5-dev make netcat" shape="box"];
  "sha256:51d0c828661881ecdbd2c63d9d14d16a1905d5ebc552c217997323e1c0bdecb8" [label="/bin/sh -c cd suite3270-3.6 && ./configure --enable-c3270 && make" shape="box"];
  "sha256:d7dbbd7347b772d11cc0eae21d9c15b735144700fc42ba59450d84840111d991" [label="local://context" shape="ellipse"];
  "sha256:11294f0f9a1221decad2a95556587431fb78eb2da16aa07bb64442dd9e673711" [label="copy{src=/mainframe-startup.sh, dest=/tmp}" shape="note"];
  "sha256:83d123399b926dc51bbaed97814a2bf0aee5a44f12654a2920689e4f62885142" [label="/bin/sh -c chmod +x /tmp/mainframe-startup.sh" shape="box"];
  "sha256:128e281f2a4c90bbff7d21a603a86787ef6f37d6741f5103fbcb8cac37e94ce6" [label="sha256:128e281f2a4c90bbff7d21a603a86787ef6f37d6741f5103fbcb8cac37e94ce6" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:5e105125bd42df57ae2bc0d6c1e2badc5e3e95a01e78033d6b0f0c7015f9c9ed" [label=""];
  "sha256:5e105125bd42df57ae2bc0d6c1e2badc5e3e95a01e78033d6b0f0c7015f9c9ed" -> "sha256:9582bc5b8478c1f2f1c346279976a6ca03a2538b4dae21af1abec78e12e88741" [label=""];
  "sha256:9582bc5b8478c1f2f1c346279976a6ca03a2538b4dae21af1abec78e12e88741" -> "sha256:ebeddecaf2fcd435e962e681cc4ea76eb5ccbd320b516fd034b83ff9d96ceee6" [label=""];
  "sha256:ebeddecaf2fcd435e962e681cc4ea76eb5ccbd320b516fd034b83ff9d96ceee6" -> "sha256:9bd05695f01451896f4985b0e4cbf229f2db70140ee9e84d1fefed5867fecf83" [label=""];
  "sha256:9bd05695f01451896f4985b0e4cbf229f2db70140ee9e84d1fefed5867fecf83" -> "sha256:96246e2418998f253aa34b59740f2327ff533f594b4f28f80429e4ff48ff39e2" [label=""];
  "sha256:96246e2418998f253aa34b59740f2327ff533f594b4f28f80429e4ff48ff39e2" -> "sha256:c55e70cf4c2540b34c17412e3b4116701cb8113fae866a27e605106f36352c01" [label=""];
  "sha256:c55e70cf4c2540b34c17412e3b4116701cb8113fae866a27e605106f36352c01" -> "sha256:aea880b38c5ae7428fdb5956bad77e449c2879a63f836e6e7e42bc001f0b4dad" [label=""];
  "sha256:aea880b38c5ae7428fdb5956bad77e449c2879a63f836e6e7e42bc001f0b4dad" -> "sha256:adde49f91d92bb88c605571551ec5a26f23676a1779fc40d4120f0ced56cffaf" [label=""];
  "sha256:adde49f91d92bb88c605571551ec5a26f23676a1779fc40d4120f0ced56cffaf" -> "sha256:60fbcc1674258291782a45dcd7daf286b620b002089f6a403d3db4fac2fe7d74" [label=""];
  "sha256:60fbcc1674258291782a45dcd7daf286b620b002089f6a403d3db4fac2fe7d74" -> "sha256:c9fe601466fc232e12501d91c85783b3e0244a4844d4f4de52a092e3751b43de" [label=""];
  "sha256:c9fe601466fc232e12501d91c85783b3e0244a4844d4f4de52a092e3751b43de" -> "sha256:6c3b74dc40517c1bfb53a80a78bf3e9121cbc44d7265aa4a942e13b2a0e1cacf" [label=""];
  "sha256:6c3b74dc40517c1bfb53a80a78bf3e9121cbc44d7265aa4a942e13b2a0e1cacf" -> "sha256:ee828d9f3bb9534b92133f629fc2abf7a199281c49aca6f356c978ea8d326e58" [label=""];
  "sha256:ee828d9f3bb9534b92133f629fc2abf7a199281c49aca6f356c978ea8d326e58" -> "sha256:51d0c828661881ecdbd2c63d9d14d16a1905d5ebc552c217997323e1c0bdecb8" [label=""];
  "sha256:51d0c828661881ecdbd2c63d9d14d16a1905d5ebc552c217997323e1c0bdecb8" -> "sha256:11294f0f9a1221decad2a95556587431fb78eb2da16aa07bb64442dd9e673711" [label=""];
  "sha256:d7dbbd7347b772d11cc0eae21d9c15b735144700fc42ba59450d84840111d991" -> "sha256:11294f0f9a1221decad2a95556587431fb78eb2da16aa07bb64442dd9e673711" [label=""];
  "sha256:11294f0f9a1221decad2a95556587431fb78eb2da16aa07bb64442dd9e673711" -> "sha256:83d123399b926dc51bbaed97814a2bf0aee5a44f12654a2920689e4f62885142" [label=""];
  "sha256:83d123399b926dc51bbaed97814a2bf0aee5a44f12654a2920689e4f62885142" -> "sha256:128e281f2a4c90bbff7d21a603a86787ef6f37d6741f5103fbcb8cac37e94ce6" [label=""];
}

