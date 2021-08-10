[app/sources/272426934.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0fa6cd858995016e5803093c1547db109503cfd62e17590c3c6e2f85b33eb74a" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:cb7006bcc48a50e88f6bdfcb1640b6301109aeeacb16ac02e7eb80902be9069e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7ecd10a14ab793621a3baed26c8cbd91bfaa642e44794558ec2fc9599041165c" [label="/bin/sh -c apt-get update --fix-missing &&   apt-get install -y   build-essential   gcc-multilib   apt-utils   zlib1g-dev   libxml2-dev   curl   wget   git   perl   perl-base   libbz2-dev   cmake automake   libboost-all-dev   libncurses5-dev   r-base   r-base-core   r-base-dev   bowtie   bowtie2" shape="box"];
  "sha256:d217b0e8bba466ed72433d9027f72bdcbdc51c22b5afe94ebb3fc384791f8cfb" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:95066be7c4e40e808fcabc5ed8d35f26538112a1fd2dac748368df0f673a4a03" [label="/bin/sh -c wget https://github.com/alexdobin/STAR/archive/2.5.3a.tar.gz &&     tar -xf 2.5.3a.tar.gz" shape="box"];
  "sha256:0ad618246ab53b7ddc6dcff8634f6553c79db6096465d564ec0ef8870c5a798b" [label="mkdir{path=/usr/local/STAR-2.5.3a/bin/Linux_x86_64_static}" shape="note"];
  "sha256:9361cb157d4e2eeb1e5c33d17f5bb98576d3c4679fe2d5417183a19e3f8928e5" [label="/bin/sh -c cp STAR /usr/local/bin" shape="box"];
  "sha256:6f2fbcafea2d3ee436eac34ed058f82f62e9aee2ef9e36ccd5f24a1820a4e3cd" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:bc3568d2ccd65b04b6d577afbc89becc3e9086aeab69f1abc3c0a6cae8f65beb" [label="/bin/sh -c git clone https://github.com/deweylab/RSEM.git" shape="box"];
  "sha256:4b4f78adc0b7614bbc3454c03a70ab63ba6f7d51a4efb8881d857e443ebbbcb9" [label="mkdir{path=/usr/local/RSEM}" shape="note"];
  "sha256:8a224f6b690a8ff6ee360f96ab0bd17557f9e82fe16c730143acca2703240168" [label="/bin/sh -c git checkout v1.3.0" shape="box"];
  "sha256:701b7b79206fef5ce5253fffc673774f89125dbb650e14e88c710c22b692750c" [label="/bin/sh -c make" shape="box"];
  "sha256:65ea14cc8da178cb76605c2bcd0cc9d4a6b241ae7d0764ad23cdcd6cfe898c3c" [label="/bin/sh -c make ebseq" shape="box"];
  "sha256:14fe2d54b5b9db3568ef368113f8f6deae003e7f6264b525ef955c8b193b10bc" [label="sha256:14fe2d54b5b9db3568ef368113f8f6deae003e7f6264b525ef955c8b193b10bc" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0fa6cd858995016e5803093c1547db109503cfd62e17590c3c6e2f85b33eb74a" [label=""];
  "sha256:0fa6cd858995016e5803093c1547db109503cfd62e17590c3c6e2f85b33eb74a" -> "sha256:cb7006bcc48a50e88f6bdfcb1640b6301109aeeacb16ac02e7eb80902be9069e" [label=""];
  "sha256:cb7006bcc48a50e88f6bdfcb1640b6301109aeeacb16ac02e7eb80902be9069e" -> "sha256:7ecd10a14ab793621a3baed26c8cbd91bfaa642e44794558ec2fc9599041165c" [label=""];
  "sha256:7ecd10a14ab793621a3baed26c8cbd91bfaa642e44794558ec2fc9599041165c" -> "sha256:d217b0e8bba466ed72433d9027f72bdcbdc51c22b5afe94ebb3fc384791f8cfb" [label=""];
  "sha256:d217b0e8bba466ed72433d9027f72bdcbdc51c22b5afe94ebb3fc384791f8cfb" -> "sha256:95066be7c4e40e808fcabc5ed8d35f26538112a1fd2dac748368df0f673a4a03" [label=""];
  "sha256:95066be7c4e40e808fcabc5ed8d35f26538112a1fd2dac748368df0f673a4a03" -> "sha256:0ad618246ab53b7ddc6dcff8634f6553c79db6096465d564ec0ef8870c5a798b" [label=""];
  "sha256:0ad618246ab53b7ddc6dcff8634f6553c79db6096465d564ec0ef8870c5a798b" -> "sha256:9361cb157d4e2eeb1e5c33d17f5bb98576d3c4679fe2d5417183a19e3f8928e5" [label=""];
  "sha256:9361cb157d4e2eeb1e5c33d17f5bb98576d3c4679fe2d5417183a19e3f8928e5" -> "sha256:6f2fbcafea2d3ee436eac34ed058f82f62e9aee2ef9e36ccd5f24a1820a4e3cd" [label=""];
  "sha256:6f2fbcafea2d3ee436eac34ed058f82f62e9aee2ef9e36ccd5f24a1820a4e3cd" -> "sha256:bc3568d2ccd65b04b6d577afbc89becc3e9086aeab69f1abc3c0a6cae8f65beb" [label=""];
  "sha256:bc3568d2ccd65b04b6d577afbc89becc3e9086aeab69f1abc3c0a6cae8f65beb" -> "sha256:4b4f78adc0b7614bbc3454c03a70ab63ba6f7d51a4efb8881d857e443ebbbcb9" [label=""];
  "sha256:4b4f78adc0b7614bbc3454c03a70ab63ba6f7d51a4efb8881d857e443ebbbcb9" -> "sha256:8a224f6b690a8ff6ee360f96ab0bd17557f9e82fe16c730143acca2703240168" [label=""];
  "sha256:8a224f6b690a8ff6ee360f96ab0bd17557f9e82fe16c730143acca2703240168" -> "sha256:701b7b79206fef5ce5253fffc673774f89125dbb650e14e88c710c22b692750c" [label=""];
  "sha256:701b7b79206fef5ce5253fffc673774f89125dbb650e14e88c710c22b692750c" -> "sha256:65ea14cc8da178cb76605c2bcd0cc9d4a6b241ae7d0764ad23cdcd6cfe898c3c" [label=""];
  "sha256:65ea14cc8da178cb76605c2bcd0cc9d4a6b241ae7d0764ad23cdcd6cfe898c3c" -> "sha256:14fe2d54b5b9db3568ef368113f8f6deae003e7f6264b525ef955c8b193b10bc" [label=""];
}

