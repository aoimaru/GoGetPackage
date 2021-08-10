[app/sources/153129755.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:b7c7cf873366785b835e08d208cb11f746f6a38dd9f035ba8ac339ce2286b574" [label="/bin/sh -c apt-get update &&      apt-get install -y git wget curl unzip build-essential ruby ruby-dev ruby-ffi gcc make &&     curl --retry 3 -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz\" &&     tar -xzf \"node-v$NODE_VERSION-linux-x64.tar.gz\" -C /usr/local --strip-components=1 &&     rm \"node-v$NODE_VERSION-linux-x64.tar.gz\" &&     npm install -g npm@\"$NPM_VERSION\" &&     npm install -g cordova@\"$CORDOVA_VERSION\" ionic@\"$IONIC_VERSION\" &&     npm cache clear --force &&     gem install sass &&     git config --global user.email \"you@example.com\" &&     git config --global user.name \"Your Name\" &&     ionic start myApp sidemenu --no-interactive" shape="box"];
  "sha256:346724e00b572858344fab328c1a3152c3f30b0d89581db632fe638a3b07c62e" [label="/bin/sh -c apt-get update && apt-get install -y -q python-software-properties software-properties-common  &&     add-apt-repository ppa:webupd8team/java -y &&     echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections &&     apt-get update && apt-get -y install oracle-java8-installer" shape="box"];
  "sha256:064c93d79523faa8db284b4ed4cc61fd90738b8cbcbd78c218ef8284171526fd" [label="/bin/sh -c echo ANDROID_HOME=\"${ANDROID_HOME}\" >> /etc/environment &&     dpkg --add-architecture i386 &&     apt-get update &&     apt-get install -y --force-yes expect ant wget zipalign libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 qemu-kvm kmod &&     apt-get clean &&     apt-get autoclean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:23e5eb29a5a11b9ecd9fdcfa6b4f4794de68278f528745ecceb1dc6030307573" [label="/bin/sh -c cd /opt &&     wget --output-document=android-sdk.tgz --quiet http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz &&     tar xzf android-sdk.tgz &&     rm -f android-sdk.tgz &&     chown -R root. /opt" shape="box"];
  "sha256:d426b2be308c9ee82b9c183c071c7d4bceb6fe32dc8dc182b7df04c14a8c5694" [label="/bin/sh -c wget https://services.gradle.org/distributions/gradle-\"$GRADLE_VERSION\"-bin.zip &&     mkdir /opt/gradle &&     unzip -d /opt/gradle gradle-\"$GRADLE_VERSION\"-bin.zip &&     rm -rf gradle-\"$GRADLE_VERSION\"-bin.zip" shape="box"];
  "sha256:a8e82dd1dde97ff316151ae178be36c7cadddd6d8b9683242b61abc12e47e579" [label="local://context" shape="ellipse"];
  "sha256:a3edba7ea7fe06530968fb9b4a36edc2fda5a0b1c98b334c92ea37c888383a56" [label="copy{src=/tools, dest=/opt/tools}" shape="note"];
  "sha256:8434cd66979ff61077687af4eb547884bdfbcb4395732a7b66787b1320c6de9e" [label="/opt/tools/android-accept-licenses.sh android update sdk --all --no-ui --filter platform-tools,tools,build-tools-26.0.2,android-27,android-26,build-tools-25.0.0,android-25,extra-android-support,extra-android-m2repository,extra-google-m2repository" shape="box"];
  "sha256:3331cba916f6a66b076b1141cfe58038c1f261e6e704e4a1ebd8fd4e7c448510" [label="/bin/sh -c unzip ${ANDROID_HOME}/temp/*.zip -d ${ANDROID_HOME}" shape="box"];
  "sha256:fe53ab0267bcb24bad052014a5a1dba35a261bb68efca732966e92cfe1c24cbb" [label="/bin/sh -c cd myApp &&     ionic cordova build android --prod --no-interactive --release" shape="box"];
  "sha256:5f89daab1c44c9581658e2c1cb20612e515650cfe97819c23a6392d164b410b9" [label="mkdir{path=/myApp}" shape="note"];
  "sha256:ecdd42ba6189e6627b2e2e0a2d8904102fa548d5a633be3bda35b98deee72cc6" [label="sha256:ecdd42ba6189e6627b2e2e0a2d8904102fa548d5a633be3bda35b98deee72cc6" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:b7c7cf873366785b835e08d208cb11f746f6a38dd9f035ba8ac339ce2286b574" [label=""];
  "sha256:b7c7cf873366785b835e08d208cb11f746f6a38dd9f035ba8ac339ce2286b574" -> "sha256:346724e00b572858344fab328c1a3152c3f30b0d89581db632fe638a3b07c62e" [label=""];
  "sha256:346724e00b572858344fab328c1a3152c3f30b0d89581db632fe638a3b07c62e" -> "sha256:064c93d79523faa8db284b4ed4cc61fd90738b8cbcbd78c218ef8284171526fd" [label=""];
  "sha256:064c93d79523faa8db284b4ed4cc61fd90738b8cbcbd78c218ef8284171526fd" -> "sha256:23e5eb29a5a11b9ecd9fdcfa6b4f4794de68278f528745ecceb1dc6030307573" [label=""];
  "sha256:23e5eb29a5a11b9ecd9fdcfa6b4f4794de68278f528745ecceb1dc6030307573" -> "sha256:d426b2be308c9ee82b9c183c071c7d4bceb6fe32dc8dc182b7df04c14a8c5694" [label=""];
  "sha256:d426b2be308c9ee82b9c183c071c7d4bceb6fe32dc8dc182b7df04c14a8c5694" -> "sha256:a3edba7ea7fe06530968fb9b4a36edc2fda5a0b1c98b334c92ea37c888383a56" [label=""];
  "sha256:a8e82dd1dde97ff316151ae178be36c7cadddd6d8b9683242b61abc12e47e579" -> "sha256:a3edba7ea7fe06530968fb9b4a36edc2fda5a0b1c98b334c92ea37c888383a56" [label=""];
  "sha256:a3edba7ea7fe06530968fb9b4a36edc2fda5a0b1c98b334c92ea37c888383a56" -> "sha256:8434cd66979ff61077687af4eb547884bdfbcb4395732a7b66787b1320c6de9e" [label=""];
  "sha256:8434cd66979ff61077687af4eb547884bdfbcb4395732a7b66787b1320c6de9e" -> "sha256:3331cba916f6a66b076b1141cfe58038c1f261e6e704e4a1ebd8fd4e7c448510" [label=""];
  "sha256:3331cba916f6a66b076b1141cfe58038c1f261e6e704e4a1ebd8fd4e7c448510" -> "sha256:fe53ab0267bcb24bad052014a5a1dba35a261bb68efca732966e92cfe1c24cbb" [label=""];
  "sha256:fe53ab0267bcb24bad052014a5a1dba35a261bb68efca732966e92cfe1c24cbb" -> "sha256:5f89daab1c44c9581658e2c1cb20612e515650cfe97819c23a6392d164b410b9" [label=""];
  "sha256:5f89daab1c44c9581658e2c1cb20612e515650cfe97819c23a6392d164b410b9" -> "sha256:ecdd42ba6189e6627b2e2e0a2d8904102fa548d5a633be3bda35b98deee72cc6" [label=""];
}

