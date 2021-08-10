[app/sources/196279607.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:266b470ef6c68d6e0817a3625bf10907b4d5fe161fca482b3407b899381c680a" [label="/bin/sh -c apt-get update && apt-get install -y \tbuild-essential   libbluetooth-dev   bluez   rfkill   bluetooth   lib32z1   lib32ncurses5   unzip   binutils-avr   git   cmake   minicom screen   vim   wget" shape="box"];
  "sha256:02e4550508fd85aa95995fbf354e7fc79f7a7564aef4e6708671650dc16cf403" [label="/bin/sh -c mkdir -p /opt/downloads" shape="box"];
  "sha256:a7ce2237a54c3f97dac889878462b1ad1b00b419a67eb2239cc51119f9cba4a4" [label="mkdir{path=/opt}" shape="note"];
  "sha256:0bdabfa3ab7ca90330854d9383b69ad01d8ffca66cd32ce52a2289c715ad14be" [label="/bin/sh -c wget https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 -O downloads/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2" shape="box"];
  "sha256:913b19f9a507dc96357b1119c11e98b49986aa2341d1c2fd6ee3a10aa3978b76" [label="/bin/sh -c tar -C /usr/local -xjf downloads/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2" shape="box"];
  "sha256:3bba37256a401c5af94e1c263dec0c6c9ef2200d5631a9e314e046d4b3a43efb" [label="/bin/sh -c mkdir -p $NRF_SDK_PATH" shape="box"];
  "sha256:92a16b626883b98fc6669f441b39d38ce7a3f57c6fd476f027b8691f56899588" [label="/bin/sh -c wget https://developer.nordicsemi.com/nRF51_SDK/nRF51_SDK_v8.x.x/nRF51_SDK_8.1.0_b6ed55f.zip -O downloads/nRF51_SDK_8.1.0_b6ed55f.zip" shape="box"];
  "sha256:43bd9438d145e65785b8ce4c745644c7b8d941c2cadbfbd8336476767a818c55" [label="/bin/sh -c unzip -q downloads/nRF51_SDK_8.1.0_b6ed55f.zip -d $NRF_SDK_PATH" shape="box"];
  "sha256:1df309ee95509cd9310ee6dc0c69ba5c84e932355a624d0c41776821981f1e17" [label="local://context" shape="ellipse"];
  "sha256:62c81dda7262480a45517219c600edabf5c4c53f2064a399a7bffb7c7a67a735" [label="copy{src=/compose/Makefile.posix, dest=/opt/nrf/sdk/nrf_sdk_8_1/components/toolchain/gcc/Makefile.posix}" shape="note"];
  "sha256:e8d1e5de82805f9e9b475181ca03968e498043abe362b773496f8153776a1e72" [label="copy{src=/compose/JLink_Linux_V616i_x86_64.deb, dest=/opt/downloads/JLink_Linux_V616i_x86_64.deb}" shape="note"];
  "sha256:26188c72aea252832263c5e7d7714854c1aed1d4a67517240b628098b92360a5" [label="/bin/sh -c dpkg -i downloads/JLink_Linux_V616i_x86_64.deb" shape="box"];
  "sha256:9d4b157f89abbdb3f644096e83e22b88fcc6c137f7e197adc8ec940306365454" [label="/bin/sh -c apt-get update && apt-get install -y     python     python-dev     python-pip     python-setuptools     gcc     build-essential     libglib2.0-dev     bluez     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3e79a090400167eb6c689ea9ed7936753d9c29dd02d9ad40d8e264dc0b4f6181" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:4edbd79ce7ce6828b3c928d258cbd37da2dc4eeba49ec3c6e94b8579f112f724" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:dd345c4c1ea9889ac2589337cba783a8de3cf4b520136cc66b023b914fe4d2d8" [label="sha256:dd345c4c1ea9889ac2589337cba783a8de3cf4b520136cc66b023b914fe4d2d8" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:266b470ef6c68d6e0817a3625bf10907b4d5fe161fca482b3407b899381c680a" [label=""];
  "sha256:266b470ef6c68d6e0817a3625bf10907b4d5fe161fca482b3407b899381c680a" -> "sha256:02e4550508fd85aa95995fbf354e7fc79f7a7564aef4e6708671650dc16cf403" [label=""];
  "sha256:02e4550508fd85aa95995fbf354e7fc79f7a7564aef4e6708671650dc16cf403" -> "sha256:a7ce2237a54c3f97dac889878462b1ad1b00b419a67eb2239cc51119f9cba4a4" [label=""];
  "sha256:a7ce2237a54c3f97dac889878462b1ad1b00b419a67eb2239cc51119f9cba4a4" -> "sha256:0bdabfa3ab7ca90330854d9383b69ad01d8ffca66cd32ce52a2289c715ad14be" [label=""];
  "sha256:0bdabfa3ab7ca90330854d9383b69ad01d8ffca66cd32ce52a2289c715ad14be" -> "sha256:913b19f9a507dc96357b1119c11e98b49986aa2341d1c2fd6ee3a10aa3978b76" [label=""];
  "sha256:913b19f9a507dc96357b1119c11e98b49986aa2341d1c2fd6ee3a10aa3978b76" -> "sha256:3bba37256a401c5af94e1c263dec0c6c9ef2200d5631a9e314e046d4b3a43efb" [label=""];
  "sha256:3bba37256a401c5af94e1c263dec0c6c9ef2200d5631a9e314e046d4b3a43efb" -> "sha256:92a16b626883b98fc6669f441b39d38ce7a3f57c6fd476f027b8691f56899588" [label=""];
  "sha256:92a16b626883b98fc6669f441b39d38ce7a3f57c6fd476f027b8691f56899588" -> "sha256:43bd9438d145e65785b8ce4c745644c7b8d941c2cadbfbd8336476767a818c55" [label=""];
  "sha256:43bd9438d145e65785b8ce4c745644c7b8d941c2cadbfbd8336476767a818c55" -> "sha256:62c81dda7262480a45517219c600edabf5c4c53f2064a399a7bffb7c7a67a735" [label=""];
  "sha256:1df309ee95509cd9310ee6dc0c69ba5c84e932355a624d0c41776821981f1e17" -> "sha256:62c81dda7262480a45517219c600edabf5c4c53f2064a399a7bffb7c7a67a735" [label=""];
  "sha256:62c81dda7262480a45517219c600edabf5c4c53f2064a399a7bffb7c7a67a735" -> "sha256:e8d1e5de82805f9e9b475181ca03968e498043abe362b773496f8153776a1e72" [label=""];
  "sha256:1df309ee95509cd9310ee6dc0c69ba5c84e932355a624d0c41776821981f1e17" -> "sha256:e8d1e5de82805f9e9b475181ca03968e498043abe362b773496f8153776a1e72" [label=""];
  "sha256:e8d1e5de82805f9e9b475181ca03968e498043abe362b773496f8153776a1e72" -> "sha256:26188c72aea252832263c5e7d7714854c1aed1d4a67517240b628098b92360a5" [label=""];
  "sha256:26188c72aea252832263c5e7d7714854c1aed1d4a67517240b628098b92360a5" -> "sha256:9d4b157f89abbdb3f644096e83e22b88fcc6c137f7e197adc8ec940306365454" [label=""];
  "sha256:9d4b157f89abbdb3f644096e83e22b88fcc6c137f7e197adc8ec940306365454" -> "sha256:3e79a090400167eb6c689ea9ed7936753d9c29dd02d9ad40d8e264dc0b4f6181" [label=""];
  "sha256:1df309ee95509cd9310ee6dc0c69ba5c84e932355a624d0c41776821981f1e17" -> "sha256:3e79a090400167eb6c689ea9ed7936753d9c29dd02d9ad40d8e264dc0b4f6181" [label=""];
  "sha256:3e79a090400167eb6c689ea9ed7936753d9c29dd02d9ad40d8e264dc0b4f6181" -> "sha256:4edbd79ce7ce6828b3c928d258cbd37da2dc4eeba49ec3c6e94b8579f112f724" [label=""];
  "sha256:4edbd79ce7ce6828b3c928d258cbd37da2dc4eeba49ec3c6e94b8579f112f724" -> "sha256:dd345c4c1ea9889ac2589337cba783a8de3cf4b520136cc66b023b914fe4d2d8" [label=""];
}

