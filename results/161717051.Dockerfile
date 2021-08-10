[app/sources/161717051.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:df37c9960d9337a690e47ad0af24f209a65adc569f30ad906ac00ff0974240dc" [label="/bin/sh -c apt-get update && apt-get install -y iptables curl unzip" shape="box"];
  "sha256:d5c4783aaabbd678995cb5004a055a352cd6be7016fdeeaaf8f8b014836ed133" [label="https://dl.bintray.com/mitchellh/consul/0.3.0_linux_amd64.zip" shape="ellipse"];
  "sha256:798648278ca0d6a42abdc745cde2e783498704dd3d0a3f2f86c87f510f794a5a" [label="copy{src=/0.3.0_linux_amd64.zip, dest=/tmp/consul.zip}" shape="note"];
  "sha256:e08013774f1dd3dbd76541219db90c257627d374a236d2c0d9333fe3b26595d1" [label="/bin/sh -c cd /bin && unzip /tmp/consul.zip && chmod +x /bin/consul && rm /tmp/consul.zip" shape="box"];
  "sha256:c28e1d96f50657031310cb88fb3fccaacb6dd5b9ee7f64d73ee3818357568c77" [label="https://dl.bintray.com/mitchellh/consul/0.3.0_web_ui.zip" shape="ellipse"];
  "sha256:5dfcbbbb55a03c0fd5a26e8791aa723d1593cc8ad501819232e3b3cf1fde51ed" [label="copy{src=/0.3.0_web_ui.zip, dest=/tmp/webui.zip}" shape="note"];
  "sha256:c196205c394b3903933797e7ec2c446704d71cd85a91c0862d80bb3ddcb084d5" [label="/bin/sh -c cd /tmp && unzip /tmp/webui.zip && mv dist /ui && rm /tmp/webui.zip" shape="box"];
  "sha256:094ce68626280b2783464cf750280f157188f85eb88bfa596f5faf316644356f" [label="https://github.com/progrium/ambassadord/releases/download/v0.0.1/ambassadord_0.0.1_linux_x86_64.tgz" shape="ellipse"];
  "sha256:665a39d57f13959c88aace1e6574b0f3a4e9e6a895e65677beda19e3813bec9f" [label="copy{src=/ambassadord_0.0.1_linux_x86_64.tgz, dest=/tmp/ambassadord.tgz}" shape="note"];
  "sha256:40bd436879977cc440156f03d926bfbb2aa2c1ca813e56441873b8f06190404c" [label="/bin/sh -c cd /bin && tar -zxf /tmp/ambassadord.tgz && rm /tmp/ambassadord.tgz" shape="box"];
  "sha256:10a59684069c59eb737ce261925e1c466b64fd7fce2793b1662a53e803ee88c2" [label="https://github.com/progrium/docksul/releases/download/v0.1.0/docksul_0.1.0_linux_x86_64.tgz" shape="ellipse"];
  "sha256:141e8010f26be1c22bace4fddede08d95bc24f25efc1791f5ac33ab210f1a601" [label="copy{src=/docksul_0.1.0_linux_x86_64.tgz, dest=/tmp/docksul.tgz}" shape="note"];
  "sha256:7242be83b862453ecaedd9176dfeb4ecfc73facf27308e2ca25be57e12f384e2" [label="/bin/sh -c cd /bin && tar -zxf /tmp/docksul.tgz && rm /tmp/docksul.tgz" shape="box"];
  "sha256:7505ebc5eeb489f9451b792e7cb7671c5fa8742c762cfaa6c9ad9a7551b20b67" [label="local://context" shape="ellipse"];
  "sha256:f5a855a5c9508687f8b9bd08e85001143b4912be63c7ac441e6918a44c07ce9b" [label="copy{src=/config, dest=/config/}" shape="note"];
  "sha256:aabec8c385f5ea522f359ddedbd776e74731180c70bb4df82d11e2b2d837fd98" [label="copy{src=/start, dest=/bin/start}" shape="note"];
  "sha256:8df88ffb0860d9dbc7d17e15bf3305ecfefced5b879cc039889c1c1c65637b8e" [label="sha256:8df88ffb0860d9dbc7d17e15bf3305ecfefced5b879cc039889c1c1c65637b8e" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:df37c9960d9337a690e47ad0af24f209a65adc569f30ad906ac00ff0974240dc" [label=""];
  "sha256:df37c9960d9337a690e47ad0af24f209a65adc569f30ad906ac00ff0974240dc" -> "sha256:798648278ca0d6a42abdc745cde2e783498704dd3d0a3f2f86c87f510f794a5a" [label=""];
  "sha256:d5c4783aaabbd678995cb5004a055a352cd6be7016fdeeaaf8f8b014836ed133" -> "sha256:798648278ca0d6a42abdc745cde2e783498704dd3d0a3f2f86c87f510f794a5a" [label=""];
  "sha256:798648278ca0d6a42abdc745cde2e783498704dd3d0a3f2f86c87f510f794a5a" -> "sha256:e08013774f1dd3dbd76541219db90c257627d374a236d2c0d9333fe3b26595d1" [label=""];
  "sha256:e08013774f1dd3dbd76541219db90c257627d374a236d2c0d9333fe3b26595d1" -> "sha256:5dfcbbbb55a03c0fd5a26e8791aa723d1593cc8ad501819232e3b3cf1fde51ed" [label=""];
  "sha256:c28e1d96f50657031310cb88fb3fccaacb6dd5b9ee7f64d73ee3818357568c77" -> "sha256:5dfcbbbb55a03c0fd5a26e8791aa723d1593cc8ad501819232e3b3cf1fde51ed" [label=""];
  "sha256:5dfcbbbb55a03c0fd5a26e8791aa723d1593cc8ad501819232e3b3cf1fde51ed" -> "sha256:c196205c394b3903933797e7ec2c446704d71cd85a91c0862d80bb3ddcb084d5" [label=""];
  "sha256:c196205c394b3903933797e7ec2c446704d71cd85a91c0862d80bb3ddcb084d5" -> "sha256:665a39d57f13959c88aace1e6574b0f3a4e9e6a895e65677beda19e3813bec9f" [label=""];
  "sha256:094ce68626280b2783464cf750280f157188f85eb88bfa596f5faf316644356f" -> "sha256:665a39d57f13959c88aace1e6574b0f3a4e9e6a895e65677beda19e3813bec9f" [label=""];
  "sha256:665a39d57f13959c88aace1e6574b0f3a4e9e6a895e65677beda19e3813bec9f" -> "sha256:40bd436879977cc440156f03d926bfbb2aa2c1ca813e56441873b8f06190404c" [label=""];
  "sha256:40bd436879977cc440156f03d926bfbb2aa2c1ca813e56441873b8f06190404c" -> "sha256:141e8010f26be1c22bace4fddede08d95bc24f25efc1791f5ac33ab210f1a601" [label=""];
  "sha256:10a59684069c59eb737ce261925e1c466b64fd7fce2793b1662a53e803ee88c2" -> "sha256:141e8010f26be1c22bace4fddede08d95bc24f25efc1791f5ac33ab210f1a601" [label=""];
  "sha256:141e8010f26be1c22bace4fddede08d95bc24f25efc1791f5ac33ab210f1a601" -> "sha256:7242be83b862453ecaedd9176dfeb4ecfc73facf27308e2ca25be57e12f384e2" [label=""];
  "sha256:7242be83b862453ecaedd9176dfeb4ecfc73facf27308e2ca25be57e12f384e2" -> "sha256:f5a855a5c9508687f8b9bd08e85001143b4912be63c7ac441e6918a44c07ce9b" [label=""];
  "sha256:7505ebc5eeb489f9451b792e7cb7671c5fa8742c762cfaa6c9ad9a7551b20b67" -> "sha256:f5a855a5c9508687f8b9bd08e85001143b4912be63c7ac441e6918a44c07ce9b" [label=""];
  "sha256:f5a855a5c9508687f8b9bd08e85001143b4912be63c7ac441e6918a44c07ce9b" -> "sha256:aabec8c385f5ea522f359ddedbd776e74731180c70bb4df82d11e2b2d837fd98" [label=""];
  "sha256:7505ebc5eeb489f9451b792e7cb7671c5fa8742c762cfaa6c9ad9a7551b20b67" -> "sha256:aabec8c385f5ea522f359ddedbd776e74731180c70bb4df82d11e2b2d837fd98" [label=""];
  "sha256:aabec8c385f5ea522f359ddedbd776e74731180c70bb4df82d11e2b2d837fd98" -> "sha256:8df88ffb0860d9dbc7d17e15bf3305ecfefced5b879cc039889c1c1c65637b8e" [label=""];
}

