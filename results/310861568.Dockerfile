[app/sources/310861568.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:2da861b70a2f508ba9899f33f30a84680174a9d504eb561b11f20ba55d675f85" [label="local://context" shape="ellipse"];
  "sha256:952d2439189460eaadaf058c1f6e7b245160016509726501878334dab84ed7f2" [label="copy{src=/dagi, dest=/usr/local/bin/}" shape="note"];
  "sha256:0979945bf2b90f0b1e109b0d6238f2ac62c900bbebaaea5c0eab34d75d01acf3" [label="/bin/sh -c dagi locales gnupg2 dirmngr lsb-release curl git     openjdk-8-jdk-headless maven apt-transport-https make" shape="box"];
  "sha256:2c5b1d794e15bf495954cca39cf75c4baef67ce8c54bcedf298978fc91c82ff1" [label="/bin/sh -c export CLOUD_SDK_REPO=\"cloud-sdk-$(lsb_release -c -s)\" &&     echo \"deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main\" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list &&     curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -" shape="box"];
  "sha256:4bdfeca51474e8f0f86a05f0c28eb1bcd5543a85bad8c924bd5cc41f12af837e" [label="/bin/sh -c echo 'deb https://apt.dockerproject.org/repo debian-stretch main' >> /etc/apt/sources.list &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D" shape="box"];
  "sha256:b9f108895981e45a998c719aee75a6405f94596457c866f476dbf23d381a6fc6" [label="/bin/sh -c dagi google-cloud-sdk docker-engine" shape="box"];
  "sha256:56cc8cbd42a864cc2b409e6cd05435962d7ed923529e81203c1f32f904e636fe" [label="/bin/sh -c dagi kubectl" shape="box"];
  "sha256:ae99bb5848c2dbe08ee83ea8885fdf7956abba694a1da32981cca0ee2bae8aaa" [label="/bin/sh -c curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash" shape="box"];
  "sha256:cff5b177f0e6623ae0eb393816fe8c07b05c2a46c2c69430104e08fbef56598a" [label="/bin/sh -c curl -s https://packagecloud.io/install/repositories/datawireio/telepresence/script.deb.sh | bash" shape="box"];
  "sha256:181af66d07c14422332e8a86bc0d8fd661daf089381ecff1578a3d555fe2614d" [label="/bin/sh -c dagi telepresence sudo" shape="box"];
  "sha256:d36d263fcb87a32521e7e5197324b2cff610f99009f565c8ac44bc118c779d9a" [label="sha256:d36d263fcb87a32521e7e5197324b2cff610f99009f565c8ac44bc118c779d9a" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:952d2439189460eaadaf058c1f6e7b245160016509726501878334dab84ed7f2" [label=""];
  "sha256:2da861b70a2f508ba9899f33f30a84680174a9d504eb561b11f20ba55d675f85" -> "sha256:952d2439189460eaadaf058c1f6e7b245160016509726501878334dab84ed7f2" [label=""];
  "sha256:952d2439189460eaadaf058c1f6e7b245160016509726501878334dab84ed7f2" -> "sha256:0979945bf2b90f0b1e109b0d6238f2ac62c900bbebaaea5c0eab34d75d01acf3" [label=""];
  "sha256:0979945bf2b90f0b1e109b0d6238f2ac62c900bbebaaea5c0eab34d75d01acf3" -> "sha256:2c5b1d794e15bf495954cca39cf75c4baef67ce8c54bcedf298978fc91c82ff1" [label=""];
  "sha256:2c5b1d794e15bf495954cca39cf75c4baef67ce8c54bcedf298978fc91c82ff1" -> "sha256:4bdfeca51474e8f0f86a05f0c28eb1bcd5543a85bad8c924bd5cc41f12af837e" [label=""];
  "sha256:4bdfeca51474e8f0f86a05f0c28eb1bcd5543a85bad8c924bd5cc41f12af837e" -> "sha256:b9f108895981e45a998c719aee75a6405f94596457c866f476dbf23d381a6fc6" [label=""];
  "sha256:b9f108895981e45a998c719aee75a6405f94596457c866f476dbf23d381a6fc6" -> "sha256:56cc8cbd42a864cc2b409e6cd05435962d7ed923529e81203c1f32f904e636fe" [label=""];
  "sha256:56cc8cbd42a864cc2b409e6cd05435962d7ed923529e81203c1f32f904e636fe" -> "sha256:ae99bb5848c2dbe08ee83ea8885fdf7956abba694a1da32981cca0ee2bae8aaa" [label=""];
  "sha256:ae99bb5848c2dbe08ee83ea8885fdf7956abba694a1da32981cca0ee2bae8aaa" -> "sha256:cff5b177f0e6623ae0eb393816fe8c07b05c2a46c2c69430104e08fbef56598a" [label=""];
  "sha256:cff5b177f0e6623ae0eb393816fe8c07b05c2a46c2c69430104e08fbef56598a" -> "sha256:181af66d07c14422332e8a86bc0d8fd661daf089381ecff1578a3d555fe2614d" [label=""];
  "sha256:181af66d07c14422332e8a86bc0d8fd661daf089381ecff1578a3d555fe2614d" -> "sha256:d36d263fcb87a32521e7e5197324b2cff610f99009f565c8ac44bc118c779d9a" [label=""];
}

