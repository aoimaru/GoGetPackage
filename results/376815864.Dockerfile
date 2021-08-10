[app/sources/376815864.Dockerfile]
digraph {
  "sha256:79c18ebeaa443b086e07e856b813665e42c3b9cead949f888dbf995172c4bc5c" [label="docker-image://docker.io/elbeproject/debian-stretch:latest" shape="ellipse"];
  "sha256:ae2a564cc96cfb679bb267b0345e3fe8bab8c3d9fbb45838ffbaf04f1149c313" [label="/bin/sh -c echo \"deb http://ftp.de.debian.org/debian stretch main\" > /etc/apt/sources.list;     echo \"deb http://security.debian.org/debian-security stretch/updates main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:e2fe4ff2e2e40b05c1242b6b48dc8509d02a483e094384b91ce3ced339276b5e" [label="/bin/sh -c apt-get update -y ;    apt-get install -y --no-install-recommends                     -o Dpkg::Options::=\"--force-confnew\"         systemd         ca-certificates         sudo         vim-nox         wget         software-properties-common         gnupg         python3-setuptools         python3-yaml         python3-jsonschema         locales         gcc         g++         diffstat         texinfo         gawk         chrpath         python3-mako         fuseiso9660         aptly         qemu-system-x86" shape="box"];
  "sha256:1dc268613f108e96a1f757c60a58da248ad6703f5c78f87688365d021b4a7318" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" > /etc/locale.gen && locale-gen" shape="box"];
  "sha256:7e5e911e628456a49a0e03e9becbc858ae2346ac0488dc90a7f367174d7a5317" [label="/bin/sh -c apt-add-repository 'deb http://debian.linutronix.de/elbe stretch main'" shape="box"];
  "sha256:13a9cb95d32c6f2f838eb9916ddee085b8396557db38e9968ae4e21c6d0c0edc" [label="/bin/sh -c wget http://debian.linutronix.de/elbe/elbe-repo.pub" shape="box"];
  "sha256:ff8469326db3b603b8ded577753124ddd8e1e68d2649ec6df1a8eef2ffbb0692" [label="/bin/sh -c apt-key add elbe-repo.pub" shape="box"];
  "sha256:f6a16cf6251b7a81190665b8c585bb07ec6d008426971d6d8ec3acce929652e1" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:7e397719e6bb55c414286dfda8b180f6743cf2d5acc54f76de5da55cb20a469c" [label="/bin/sh -c apt-get install -y --no-install-recommends         elbe         elbe-doc" shape="box"];
  "sha256:99e45cf7ffb9f07d95b7059a047110896c7ec5726ece73f0e3f80b60cf8106d9" [label="/bin/sh -c apt-get clean -y" shape="box"];
  "sha256:9999765328d9bf585c8e921c7c54648dd30e79986db6dab495f38040fdc8a3b4" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b97b0c9e7b66da94627655d90104cbcf89f3e91fa9dffb6ae06720c2f325a0f8" [label="/bin/sh -c groupadd -g @KVMGID@ -o -r kvm-elbe" shape="box"];
  "sha256:71603510efbe8b222468ad94252d8d599098d81231b54c3f483b8664c0e878a5" [label="/bin/sh -c useradd -d /home/elbe -U -G kvm-elbe,libvirt -m -s /bin/bash -u @USERID@ elbe" shape="box"];
  "sha256:a44cd5f8c3cdce716e5a82f878b471133e750f6f9b9d61ef99dda7ffbad2d9c5" [label="/bin/sh -c echo \"root:elbe\" | chpasswd" shape="box"];
  "sha256:0189cf7a7a4fc18e8e02b0e0e4fc5e49e1a7b4e9be23e7bcff7f817eb7f221aa" [label="/bin/sh -c echo \"elbe:elbe\" | chpasswd" shape="box"];
  "sha256:93baee4b84fcc839f501e82bad6277a33e32d46fae12134ba90f5a862f7e5a71" [label="/bin/sh -c rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:e200c5663ab8c69dcb38cb6d9a1470fecc4f242a0e7648e0eb2e088bfdf3d797" [label="/bin/sh -c echo \"%elbe  ALL=(ALL:ALL) NOPASSWD: ALL\" > /etc/sudoers.d/elbegrp" shape="box"];
  "sha256:222cbaecea716a5a357c86701c02ac0a28c3050b57b126631b245a25831d6f3d" [label="/bin/sh -c chmod 0440 /etc/sudoers.d/elbegrp" shape="box"];
  "sha256:161b4b8ec04a827a6234ca60bcbec362d935c35308b3f6180e07e143f3d9ce1b" [label="/bin/sh -c echo 'user = \"root\"' >> /etc/libvirt/qemu.conf" shape="box"];
  "sha256:ab013f921e3c6928da45996e0cdd78dc96ba4400d8327e1a7ca184758921c421" [label="/bin/sh -c echo 'group = \"root\"' >> /etc/libvirt/qemu.conf" shape="box"];
  "sha256:985e7b16b584ba95eb60bd031e8c05bd52e99b8889a923def2bf55e64d0d486d" [label="/bin/sh -c systemctl enable libvirtd" shape="box"];
  "sha256:4f355bbc638ba3fa53249abdc1bd0fa9063bdc30b0f4144941fe65c6ec2c1648" [label="sha256:4f355bbc638ba3fa53249abdc1bd0fa9063bdc30b0f4144941fe65c6ec2c1648" shape="plaintext"];
  "sha256:79c18ebeaa443b086e07e856b813665e42c3b9cead949f888dbf995172c4bc5c" -> "sha256:ae2a564cc96cfb679bb267b0345e3fe8bab8c3d9fbb45838ffbaf04f1149c313" [label=""];
  "sha256:ae2a564cc96cfb679bb267b0345e3fe8bab8c3d9fbb45838ffbaf04f1149c313" -> "sha256:e2fe4ff2e2e40b05c1242b6b48dc8509d02a483e094384b91ce3ced339276b5e" [label=""];
  "sha256:e2fe4ff2e2e40b05c1242b6b48dc8509d02a483e094384b91ce3ced339276b5e" -> "sha256:1dc268613f108e96a1f757c60a58da248ad6703f5c78f87688365d021b4a7318" [label=""];
  "sha256:1dc268613f108e96a1f757c60a58da248ad6703f5c78f87688365d021b4a7318" -> "sha256:7e5e911e628456a49a0e03e9becbc858ae2346ac0488dc90a7f367174d7a5317" [label=""];
  "sha256:7e5e911e628456a49a0e03e9becbc858ae2346ac0488dc90a7f367174d7a5317" -> "sha256:13a9cb95d32c6f2f838eb9916ddee085b8396557db38e9968ae4e21c6d0c0edc" [label=""];
  "sha256:13a9cb95d32c6f2f838eb9916ddee085b8396557db38e9968ae4e21c6d0c0edc" -> "sha256:ff8469326db3b603b8ded577753124ddd8e1e68d2649ec6df1a8eef2ffbb0692" [label=""];
  "sha256:ff8469326db3b603b8ded577753124ddd8e1e68d2649ec6df1a8eef2ffbb0692" -> "sha256:f6a16cf6251b7a81190665b8c585bb07ec6d008426971d6d8ec3acce929652e1" [label=""];
  "sha256:f6a16cf6251b7a81190665b8c585bb07ec6d008426971d6d8ec3acce929652e1" -> "sha256:7e397719e6bb55c414286dfda8b180f6743cf2d5acc54f76de5da55cb20a469c" [label=""];
  "sha256:7e397719e6bb55c414286dfda8b180f6743cf2d5acc54f76de5da55cb20a469c" -> "sha256:99e45cf7ffb9f07d95b7059a047110896c7ec5726ece73f0e3f80b60cf8106d9" [label=""];
  "sha256:99e45cf7ffb9f07d95b7059a047110896c7ec5726ece73f0e3f80b60cf8106d9" -> "sha256:9999765328d9bf585c8e921c7c54648dd30e79986db6dab495f38040fdc8a3b4" [label=""];
  "sha256:9999765328d9bf585c8e921c7c54648dd30e79986db6dab495f38040fdc8a3b4" -> "sha256:b97b0c9e7b66da94627655d90104cbcf89f3e91fa9dffb6ae06720c2f325a0f8" [label=""];
  "sha256:b97b0c9e7b66da94627655d90104cbcf89f3e91fa9dffb6ae06720c2f325a0f8" -> "sha256:71603510efbe8b222468ad94252d8d599098d81231b54c3f483b8664c0e878a5" [label=""];
  "sha256:71603510efbe8b222468ad94252d8d599098d81231b54c3f483b8664c0e878a5" -> "sha256:a44cd5f8c3cdce716e5a82f878b471133e750f6f9b9d61ef99dda7ffbad2d9c5" [label=""];
  "sha256:a44cd5f8c3cdce716e5a82f878b471133e750f6f9b9d61ef99dda7ffbad2d9c5" -> "sha256:0189cf7a7a4fc18e8e02b0e0e4fc5e49e1a7b4e9be23e7bcff7f817eb7f221aa" [label=""];
  "sha256:0189cf7a7a4fc18e8e02b0e0e4fc5e49e1a7b4e9be23e7bcff7f817eb7f221aa" -> "sha256:93baee4b84fcc839f501e82bad6277a33e32d46fae12134ba90f5a862f7e5a71" [label=""];
  "sha256:93baee4b84fcc839f501e82bad6277a33e32d46fae12134ba90f5a862f7e5a71" -> "sha256:e200c5663ab8c69dcb38cb6d9a1470fecc4f242a0e7648e0eb2e088bfdf3d797" [label=""];
  "sha256:e200c5663ab8c69dcb38cb6d9a1470fecc4f242a0e7648e0eb2e088bfdf3d797" -> "sha256:222cbaecea716a5a357c86701c02ac0a28c3050b57b126631b245a25831d6f3d" [label=""];
  "sha256:222cbaecea716a5a357c86701c02ac0a28c3050b57b126631b245a25831d6f3d" -> "sha256:161b4b8ec04a827a6234ca60bcbec362d935c35308b3f6180e07e143f3d9ce1b" [label=""];
  "sha256:161b4b8ec04a827a6234ca60bcbec362d935c35308b3f6180e07e143f3d9ce1b" -> "sha256:ab013f921e3c6928da45996e0cdd78dc96ba4400d8327e1a7ca184758921c421" [label=""];
  "sha256:ab013f921e3c6928da45996e0cdd78dc96ba4400d8327e1a7ca184758921c421" -> "sha256:985e7b16b584ba95eb60bd031e8c05bd52e99b8889a923def2bf55e64d0d486d" [label=""];
  "sha256:985e7b16b584ba95eb60bd031e8c05bd52e99b8889a923def2bf55e64d0d486d" -> "sha256:4f355bbc638ba3fa53249abdc1bd0fa9063bdc30b0f4144941fe65c6ec2c1648" [label=""];
}

