[app/sources/301596387.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c777eb2fa056c457dc3be8ae57ca252eeaf08fa2c808f0217ff929675e584c69" [label="mkdir{path=/dee2}" shape="note"];
  "sha256:51239f492a8dc27c4ced11eb5e00379b53aa8992398a7809fb8841d8a93e9987" [label="/bin/sh -c chmod -R 777 /dee2" shape="box"];
  "sha256:1f7a64c9f23eaeefba5f43e19aab71703bfa10768416230c163976c2f47acab0" [label="/bin/sh -c rm /bin/sh &&   ln /bin/bash /bin/sh" shape="box"];
  "sha256:ace8cacbbf451bec2847741dc9b79eb955918b97c18550b7e0249544107aa530" [label="/bin/sh -c apt-get clean all &&   apt-get update &&   apt-get upgrade -y &&   apt-get install -y     curl     num-utils     wget     git     perl     zip     pigz     pbzip2     unzip     python3     python3-pip     libtbb2     default-jdk     unsort     fastx-toolkit     nano" shape="box"];
  "sha256:7277ca67b17a9a5b2231667cd7c94bcd037f4294661f15b1032920bb40b4febc" [label="/bin/sh -c mkdir sw mnt" shape="box"];
  "sha256:c5aa934d839852193e0d75e7fdc4721a58f371cd44b0628ab8546a9d815566c2" [label="/bin/sh -c cd sw &&   wget -O bowtie2-2.3.2-linux-x86_64.zip \"https://downloads.sourceforge.net/project/bowtie-bio/bowtie2/2.3.2/bowtie2-2.3.2-linux-x86_64.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fbowtie-bio%2Ffiles%2Fbowtie2%2F2.3.2&ts=1504676040&use_mirror=nchc\" &&   unzip bowtie2-2.3.2-linux-x86_64.zip &&   cd bowtie2-2.3.2/ &&   cp bow* /usr/local/bin" shape="box"];
  "sha256:a6e8b111457f2b847e17ded08a121208e15db36f9f8b5a01c30d9465aeccd1a6" [label="/bin/sh -c ln /usr/bin/python3 /usr/bin/python" shape="box"];
  "sha256:1284c6b39f3476522fdbf49c15bd8fd4e29cbf71af07d70a304cad294d8eff84" [label="/bin/sh -c cd sw &&   wget -c -O sratoolkit.2.8.2-1-ubuntu64.tar.gz \"http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.8.2-1/sratoolkit.2.8.2-1-ubuntu64.tar.gz\"  &&   tar zxfv sratoolkit.2.8.2-1-ubuntu64.tar.gz &&   cp -r sratoolkit.2.8.2-1-ubuntu64/bin/* /usr/local/bin" shape="box"];
  "sha256:2c5be8279ba8f8e1fee4a13a410bda7926da6a71fcefd632d86130a661d44695" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:97e69200c060268cc5c0a4b04791b731dfed039b2614e424b5c035365fdd857e" [label="/bin/sh -c pip3 install parallel-fastq-dump" shape="box"];
  "sha256:1ab4d5a94f29ecc1239d83779510bd2401d895d700eb7b6e800cd38ec883a7ef" [label="/bin/sh -c cd sw &&   wget -O skewer-0.2.2-linux-x86_64 \"https://downloads.sourceforge.net/project/skewer/Binaries/skewer-0.2.2-linux-x86_64?r=&ts=1504573715&use_mirror=nchc\" &&   mv skewer-0.2.2-linux-x86_64 skewer &&   chmod +x skewer &&   cp skewer /usr/local/bin/" shape="box"];
  "sha256:0ff799f5008468b39693b0e0c6e7d958f6695d5a2b66cf5377e142a164aec5ad" [label="/bin/sh -c cd sw &&   wget -c \"http://wwwdev.ebi.ac.uk/enright-dev/kraken/reaper/binaries/reaper-13-100/linux/minion\" &&   chmod +x  minion &&   cp minion /usr/local/bin/minion" shape="box"];
  "sha256:480907ad72a7fbb02fbe90a8e8844302867469b65489842800c24041c2d9b983" [label="/bin/sh -c cd sw &&   wget -c \"https://github.com/alexdobin/STAR/raw/master/bin/Linux_x86_64_static/STAR\" &&   chmod +x STAR &&   cp STAR /usr/local/bin/STAR" shape="box"];
  "sha256:86c84cd30fb17b75a1702f17f5716d67a8bc1b349f559c99eb2af3bf465fc7a5" [label="/bin/sh -c cd sw &&   wget -O fastqc_v0.11.5.zip \"https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip\" &&   unzip fastqc_v0.11.5.zip &&   cd FastQC &&   chmod +x fastqc &&   mv * /usr/local/bin/" shape="box"];
  "sha256:28dded54c3066794676c5652bfcd65ba87cac39f72b16f4d6b5ba103e5cf6b93" [label="/bin/sh -c cd sw &&   wget -c \"https://github.com/pachterlab/kallisto/releases/download/v0.43.1/kallisto_linux-v0.43.1.tar.gz\" &&   tar xf kallisto_linux-v0.43.1.tar.gz &&   cd kallisto_linux-v0.43.1 &&   chmod +x kallisto &&   cp kallisto /usr/local/bin/kallisto" shape="box"];
  "sha256:04ae08d97f67efcf0595debe0e34957653e8105e365db73770188d2b2878c3ba" [label="/bin/sh -c cd sw &&   wget -c \"http://download.asperasoft.com/download/sw/ascp-client/3.5.4/ascp-install-3.5.4.102989-linux-64.sh\" &&   test $(sha1sum ascp-install-3.5.4.102989-linux-64.sh |cut -f1 -d\\ ) = a99a63a85fee418d16000a1a51cc70b489755957 &&   ( sh ascp-install-3.5.4.102989-linux-64.sh )" shape="box"];
  "sha256:eb6c7fa7e35e34701e46323f491e4e2a0651dea7e30b044fa2892df3c037160a" [label="mkdir{path=/dee2}" shape="note"];
  "sha256:78234e71260f738f9ff9e64e4233300553e1b8de6f12ec0e4be36368a10b77fe" [label="/bin/sh -c pwd" shape="box"];
  "sha256:e813c5e10dee804f9f1a10dac196d976d20d2c270eab14dd3cfe4ced4c8a5be9" [label="/bin/sh -c mkdir  code  &&   cd code &&   wget  \"https://raw.githubusercontent.com/markziemann/dee2/master/volunteer_pipeline.sh\" &&   chmod  +x  volunteer_pipeline.sh &&   bash volunteer_pipeline.sh" shape="box"];
  "sha256:cafd0546c175517d1e01509746d0e5b911686c7b27cd64655d6dc2e78668bd1a" [label="/bin/sh -c chmod -R 777 /dee2 &&   chmod -R 700 /dee2/.ssh" shape="box"];
  "sha256:c4167d48d5c0eb2681734ef0cc05e71f64b2955f8d224b531586357356eb9917" [label="sha256:c4167d48d5c0eb2681734ef0cc05e71f64b2955f8d224b531586357356eb9917" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c777eb2fa056c457dc3be8ae57ca252eeaf08fa2c808f0217ff929675e584c69" [label=""];
  "sha256:c777eb2fa056c457dc3be8ae57ca252eeaf08fa2c808f0217ff929675e584c69" -> "sha256:51239f492a8dc27c4ced11eb5e00379b53aa8992398a7809fb8841d8a93e9987" [label=""];
  "sha256:51239f492a8dc27c4ced11eb5e00379b53aa8992398a7809fb8841d8a93e9987" -> "sha256:1f7a64c9f23eaeefba5f43e19aab71703bfa10768416230c163976c2f47acab0" [label=""];
  "sha256:1f7a64c9f23eaeefba5f43e19aab71703bfa10768416230c163976c2f47acab0" -> "sha256:ace8cacbbf451bec2847741dc9b79eb955918b97c18550b7e0249544107aa530" [label=""];
  "sha256:ace8cacbbf451bec2847741dc9b79eb955918b97c18550b7e0249544107aa530" -> "sha256:7277ca67b17a9a5b2231667cd7c94bcd037f4294661f15b1032920bb40b4febc" [label=""];
  "sha256:7277ca67b17a9a5b2231667cd7c94bcd037f4294661f15b1032920bb40b4febc" -> "sha256:c5aa934d839852193e0d75e7fdc4721a58f371cd44b0628ab8546a9d815566c2" [label=""];
  "sha256:c5aa934d839852193e0d75e7fdc4721a58f371cd44b0628ab8546a9d815566c2" -> "sha256:a6e8b111457f2b847e17ded08a121208e15db36f9f8b5a01c30d9465aeccd1a6" [label=""];
  "sha256:a6e8b111457f2b847e17ded08a121208e15db36f9f8b5a01c30d9465aeccd1a6" -> "sha256:1284c6b39f3476522fdbf49c15bd8fd4e29cbf71af07d70a304cad294d8eff84" [label=""];
  "sha256:1284c6b39f3476522fdbf49c15bd8fd4e29cbf71af07d70a304cad294d8eff84" -> "sha256:2c5be8279ba8f8e1fee4a13a410bda7926da6a71fcefd632d86130a661d44695" [label=""];
  "sha256:2c5be8279ba8f8e1fee4a13a410bda7926da6a71fcefd632d86130a661d44695" -> "sha256:97e69200c060268cc5c0a4b04791b731dfed039b2614e424b5c035365fdd857e" [label=""];
  "sha256:97e69200c060268cc5c0a4b04791b731dfed039b2614e424b5c035365fdd857e" -> "sha256:1ab4d5a94f29ecc1239d83779510bd2401d895d700eb7b6e800cd38ec883a7ef" [label=""];
  "sha256:1ab4d5a94f29ecc1239d83779510bd2401d895d700eb7b6e800cd38ec883a7ef" -> "sha256:0ff799f5008468b39693b0e0c6e7d958f6695d5a2b66cf5377e142a164aec5ad" [label=""];
  "sha256:0ff799f5008468b39693b0e0c6e7d958f6695d5a2b66cf5377e142a164aec5ad" -> "sha256:480907ad72a7fbb02fbe90a8e8844302867469b65489842800c24041c2d9b983" [label=""];
  "sha256:480907ad72a7fbb02fbe90a8e8844302867469b65489842800c24041c2d9b983" -> "sha256:86c84cd30fb17b75a1702f17f5716d67a8bc1b349f559c99eb2af3bf465fc7a5" [label=""];
  "sha256:86c84cd30fb17b75a1702f17f5716d67a8bc1b349f559c99eb2af3bf465fc7a5" -> "sha256:28dded54c3066794676c5652bfcd65ba87cac39f72b16f4d6b5ba103e5cf6b93" [label=""];
  "sha256:28dded54c3066794676c5652bfcd65ba87cac39f72b16f4d6b5ba103e5cf6b93" -> "sha256:04ae08d97f67efcf0595debe0e34957653e8105e365db73770188d2b2878c3ba" [label=""];
  "sha256:04ae08d97f67efcf0595debe0e34957653e8105e365db73770188d2b2878c3ba" -> "sha256:eb6c7fa7e35e34701e46323f491e4e2a0651dea7e30b044fa2892df3c037160a" [label=""];
  "sha256:eb6c7fa7e35e34701e46323f491e4e2a0651dea7e30b044fa2892df3c037160a" -> "sha256:78234e71260f738f9ff9e64e4233300553e1b8de6f12ec0e4be36368a10b77fe" [label=""];
  "sha256:78234e71260f738f9ff9e64e4233300553e1b8de6f12ec0e4be36368a10b77fe" -> "sha256:e813c5e10dee804f9f1a10dac196d976d20d2c270eab14dd3cfe4ced4c8a5be9" [label=""];
  "sha256:e813c5e10dee804f9f1a10dac196d976d20d2c270eab14dd3cfe4ced4c8a5be9" -> "sha256:cafd0546c175517d1e01509746d0e5b911686c7b27cd64655d6dc2e78668bd1a" [label=""];
  "sha256:cafd0546c175517d1e01509746d0e5b911686c7b27cd64655d6dc2e78668bd1a" -> "sha256:c4167d48d5c0eb2681734ef0cc05e71f64b2955f8d224b531586357356eb9917" [label=""];
}

