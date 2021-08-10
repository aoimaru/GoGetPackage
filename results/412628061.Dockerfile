[app/sources/412628061.Dockerfile]
digraph {
  "sha256:c334080c03f396bab8c51818fc9126012ab4101d36bda2bccfa59e2a321b397b" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:f8c80b339c5b39f83799950d46008583895d5344562b72da9379ce78ddfd3e07" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y -q       apt-utils autoconf bison build-essential flex gawk gdb-multiarch git gperf help2man       libexpat-dev libncurses5-dev libtool-bin       python python-dev python-git python-pyelftools python-serial python-six python-yaml       python3 python3-dev python3-git python3-pyelftools python3-serial python3-six python3-yaml       software-properties-common texinfo unzip wget zip &&     apt-get clean" shape="box"];
  "sha256:555f5aa13dabd145e24fb9a5d4e58a10fa0f8195f37094ad5774a16a1305d6ef" [label="/bin/sh -c cd /tmp &&     git clone https://github.com/rojer/fsync-stub &&     cd /tmp/fsync-stub && ./install.sh &&     rm -rf /tmp/fsync-stub" shape="box"];
  "sha256:198d35e08e90e60636122ada69640a0bda905145b52a7be250a9b368c8b1d020" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q       gcc-arm-none-eabi gdb-arm-none-eabi libnewlib-arm-none-eabi libnewlib-dev &&     apt-get clean" shape="box"];
  "sha256:331107a0fedf71214c1e347b48fe9c68095dc3659cc923910add4e909616ef14" [label="copy{src=/tmp, dest=/opt/}" shape="note"];
  "sha256:719deb63b71f47a09f38b6d45c3e3f7be069b62071bbd9fb4749a55fdc376505" [label="/bin/sh -c cd /opt/$TI_COMPILER_DIR/lib && rm *.lib &&     ./mklib --index=libc.a --pattern=rtsv7M4_T_le_eabi.lib             --extra_options='-O4 --opt_for_speed=0'             --compiler_bin_dir=../bin             --name=rtsv7M4_T_le_eabi_cesanta.lib --install_to=.             --parallel=4" shape="box"];
  "sha256:dbdc6b7df350019ecae5e8d31eced119e79cc3863a836214ea7b2b96c78bbaab" [label="copy{src=/tmp, dest=/opt/}" shape="note"];
  "sha256:8f1457f91cb6c7c1a8d57dc439cd0e07fb269a5ac784727dd255ade1b3546b19" [label="copy{src=/tmp, dest=/opt/},copy{src=/tmp/.sign, dest=/opt/}" shape="note"];
  "sha256:23f30828d8c7764554283ce24f9f55104563ead316a867beb3007baf0313697a" [label="copy{src=/mgos_fw_meta.py, dest=/usr/local/bin/},copy{src=/mklfs, dest=/usr/local/bin/},copy{src=/mkspiffs, dest=/usr/local/bin/},copy{src=/mkspiffs8, dest=/usr/local/bin/}" shape="note"];
  "sha256:1d6cec0774f2595f0314ffeb5e2d3e56f3adc8bf627892bd2b5fb35bb1f2dc87" [label="copy{src=/serve_core, dest=/opt/serve_core/}" shape="note"];
  "sha256:b52f84fc4307c43210540954f54025782be860ec5183d104677f0aac715e5285" [label="/bin/sh -c ln -s /opt/serve_core/serve_core.py /usr/local/bin/serve_core.py" shape="box"];
  "sha256:d2ecf198ce6d85e8b0c18d420bbd109703fa1e5a497eff9de7de49a8b5c9e905" [label="sha256:d2ecf198ce6d85e8b0c18d420bbd109703fa1e5a497eff9de7de49a8b5c9e905" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:f8c80b339c5b39f83799950d46008583895d5344562b72da9379ce78ddfd3e07" [label=""];
  "sha256:f8c80b339c5b39f83799950d46008583895d5344562b72da9379ce78ddfd3e07" -> "sha256:555f5aa13dabd145e24fb9a5d4e58a10fa0f8195f37094ad5774a16a1305d6ef" [label=""];
  "sha256:555f5aa13dabd145e24fb9a5d4e58a10fa0f8195f37094ad5774a16a1305d6ef" -> "sha256:198d35e08e90e60636122ada69640a0bda905145b52a7be250a9b368c8b1d020" [label=""];
  "sha256:198d35e08e90e60636122ada69640a0bda905145b52a7be250a9b368c8b1d020" -> "sha256:331107a0fedf71214c1e347b48fe9c68095dc3659cc923910add4e909616ef14" [label=""];
  "sha256:c334080c03f396bab8c51818fc9126012ab4101d36bda2bccfa59e2a321b397b" -> "sha256:331107a0fedf71214c1e347b48fe9c68095dc3659cc923910add4e909616ef14" [label=""];
  "sha256:331107a0fedf71214c1e347b48fe9c68095dc3659cc923910add4e909616ef14" -> "sha256:719deb63b71f47a09f38b6d45c3e3f7be069b62071bbd9fb4749a55fdc376505" [label=""];
  "sha256:719deb63b71f47a09f38b6d45c3e3f7be069b62071bbd9fb4749a55fdc376505" -> "sha256:dbdc6b7df350019ecae5e8d31eced119e79cc3863a836214ea7b2b96c78bbaab" [label=""];
  "sha256:c334080c03f396bab8c51818fc9126012ab4101d36bda2bccfa59e2a321b397b" -> "sha256:dbdc6b7df350019ecae5e8d31eced119e79cc3863a836214ea7b2b96c78bbaab" [label=""];
  "sha256:dbdc6b7df350019ecae5e8d31eced119e79cc3863a836214ea7b2b96c78bbaab" -> "sha256:8f1457f91cb6c7c1a8d57dc439cd0e07fb269a5ac784727dd255ade1b3546b19" [label=""];
  "sha256:c334080c03f396bab8c51818fc9126012ab4101d36bda2bccfa59e2a321b397b" -> "sha256:8f1457f91cb6c7c1a8d57dc439cd0e07fb269a5ac784727dd255ade1b3546b19" [label=""];
  "sha256:8f1457f91cb6c7c1a8d57dc439cd0e07fb269a5ac784727dd255ade1b3546b19" -> "sha256:23f30828d8c7764554283ce24f9f55104563ead316a867beb3007baf0313697a" [label=""];
  "sha256:c334080c03f396bab8c51818fc9126012ab4101d36bda2bccfa59e2a321b397b" -> "sha256:23f30828d8c7764554283ce24f9f55104563ead316a867beb3007baf0313697a" [label=""];
  "sha256:23f30828d8c7764554283ce24f9f55104563ead316a867beb3007baf0313697a" -> "sha256:1d6cec0774f2595f0314ffeb5e2d3e56f3adc8bf627892bd2b5fb35bb1f2dc87" [label=""];
  "sha256:c334080c03f396bab8c51818fc9126012ab4101d36bda2bccfa59e2a321b397b" -> "sha256:1d6cec0774f2595f0314ffeb5e2d3e56f3adc8bf627892bd2b5fb35bb1f2dc87" [label=""];
  "sha256:1d6cec0774f2595f0314ffeb5e2d3e56f3adc8bf627892bd2b5fb35bb1f2dc87" -> "sha256:b52f84fc4307c43210540954f54025782be860ec5183d104677f0aac715e5285" [label=""];
  "sha256:b52f84fc4307c43210540954f54025782be860ec5183d104677f0aac715e5285" -> "sha256:d2ecf198ce6d85e8b0c18d420bbd109703fa1e5a497eff9de7de49a8b5c9e905" [label=""];
}

