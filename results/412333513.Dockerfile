[app/sources/412333513.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:53f86a6d003b133539c471068027e3b57f6d2a583897d471308c96c976905aa1" [label="/bin/sh -c apt-get update ; apt-get -y upgrade ; apt-get -y autoclean" shape="box"];
  "sha256:98976e711b0bd0060d7410e6d405608e3169cb4a59502c8c90cc77fef12b3a8c" [label="/bin/sh -c apt-get -y install maven screen telnet netcat-openbsd byobu                        wget vim git unzip sudo apt-utils" shape="box"];
  "sha256:ef01fdd6fe1b63b73406d1f68a99a6bffa16811cf867ad6fbe0707906676b86b" [label="/bin/sh -c apt-get -o Dpkg::Options::=\"--force-overwrite\" -y install openjdk-9-jdk" shape="box"];
  "sha256:22bb5ad1c1b3281b030cb0b5e8ee9f1ef0c3dfa3c66f58b0a5872033c0cc69a0" [label="/bin/sh -c apt-get -y install gcc g++ make" shape="box"];
  "sha256:49d197720cd7dda7ed7b9b14614a06616ceb58b24a11891ab0fbc4008da17811" [label="/bin/sh -c apt-get -y install wordnet wordnet-dev wordnet-sense-index" shape="box"];
  "sha256:7f41955d06aeb99f06afe094d928b8164b6784ceb85e49660a0e0d9f4d1d965a" [label="/bin/sh -c apt-get -y install locales && locale-gen en_US.UTF-8" shape="box"];
  "sha256:2962b450b9042d6a5d4f9e4a770c8ee88c088e18591f7ad77cbe1b76eee4710e" [label="/bin/sh -c mkdir /usr/local/share/java" shape="box"];
  "sha256:b5733db18cca16614c2498916918d7e28028a90ca7e786acd7bc4553430bed4b" [label="mkdir{path=/home/Downloads}" shape="note"];
  "sha256:4140e53eb2a823c7aa8c33626af3aea684c6b93d2f8658621bb2079d374fa18d" [label="/bin/sh -c wget https://downloads.sourceforge.net/project/jwordnet/jwnl/JWNL%201.4/jwnl14-rc2.zip     && unzip jwnl14-rc2.zip; cd jwnl14-rc2;     cp jwnl.jar /usr/local/share/java/;     chmod 755 /usr/local/share/java/jwnl.jar;     cd ..; rm -rf jwnl*" shape="box"];
  "sha256:cf905ebd16e6306f8cd2ee87420116d00fcf8f945e112466b75289a781a2b1e1" [label="/bin/sh -c wget https://archive.apache.org/dist/opennlp/opennlp-1.5.3/apache-opennlp-1.5.3-bin.tar.gz     && tar -zxf apache-opennlp-1.5.3-bin.tar.gz ;    cd apache-opennlp-1.5.3;     cp lib/*.jar /usr/local/share/java/;     cp lib/*.jar /usr/share/java/;     cp lib/opennlp-tools-1.5.3.jar /usr/local/share/java/opennlp-tools-1.5.0.jar;     cd .. ; rm -rf apache-opennlp*" shape="box"];
  "sha256:24ef801555d7e569de64bcda7dd0d2243852c64aa8e717d0d0becd099c5ff762" [label="/bin/sh -c wget -r --no-parent -nH --cut-dirs=2 https://www.abisource.com/downloads/link-grammar/current/" shape="box"];
  "sha256:32523cb80550b76c28f28c160bdf9d666860703bbbf2bb2f63d5c50c7d7cb48d" [label="/bin/sh -c tar -zxf current/link-grammar-5*.tar.gz" shape="box"];
  "sha256:75eb79dd057f936dd3a44cc762d2ccdf7af4c5f8e769f341a3d2a653ab5369bf" [label="/bin/sh -c bash -l -c 'echo `ls|grep link|sed 's/link-grammar-//g'` >> LINKGRAMMAR_VERSION'" shape="box"];
  "sha256:a45b2217800ddbd2433a9046e9e3c940c50677b0840b1e103c7c7560ec151953" [label="/bin/sh -c cd link-grammar-5.*/; ./configure; make -j6; sudo make install;     ldconfig;" shape="box"];
  "sha256:53a30ebaf082bc2a762d57554caa5c6f3492f5d4f8fd0f4c3979195bfec17a1e" [label="/bin/sh -c cd link-grammar-5.*/; mvn install:install-file     -Dfile=./bindings/java/linkgrammar-`cat ../LINKGRAMMAR_VERSION`.jar     -DgroupId=org.opencog     -DartifactId=linkgrammar     -Dversion=`cat ../LINKGRAMMAR_VERSION`     -Dpackaging=jar" shape="box"];
  "sha256:798979370437d6a4f1a733755b4046433998a4662dc8a48f40cfacbf4e65822a" [label="/bin/sh -c rm -rf * link-grammar*" shape="box"];
  "sha256:70ad03e3f1f48a9f4d4b2139e162c4a665982365f64f0dc3f52e5ce870767617" [label="https://github.com/opencog/relex/archive/master.tar.gz" shape="ellipse"];
  "sha256:d7edb63f84cdbe62c4cecec44da9643e758c6bfff62418cfb2739fb25adb62e4" [label="copy{src=/master.tar.gz, dest=/home/Downloads/master.tar.gz}" shape="note"];
  "sha256:f5d6bebe06fa01800a2bb0b0a09ef10037fbcd516c60a30198a3464c28ce5247" [label="/bin/sh -c tar -xvf master.tar.gz; cd relex-master; mvn install" shape="box"];
  "sha256:a493ea97288e1e79f5fa5867ad807a33891562feaa07a0ec0642339d987bd898" [label="/bin/sh -c adduser --disabled-password --gecos \"ReLex USER\" relex" shape="box"];
  "sha256:38a42f64017afbc1901bf33b350b64a305ee17510f92310a61c0939489d3e547" [label="/bin/sh -c adduser relex sudo" shape="box"];
  "sha256:dc5d9b66a07894389ac5989a282754be76e7a49dcce875f55da369a4d6b7e5ca" [label="/bin/sh -c echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:945573b10a393332e199026327efdb45f3aa52fc5ae59440153d917bb6320744" [label="/bin/sh -c sudo chown -R relex:relex ." shape="box"];
  "sha256:25e67e8e52790dccbdab54a2a39f6f6c77b39ef8c79eff0eb1caafb1a8ad78d0" [label="mkdir{path=/home/Downloads/relex-master}" shape="note"];
  "sha256:b1ae7983b58db4db4f056cb840f9d69ffc9b5868c1052bfc091992a6c098f27f" [label="sha256:b1ae7983b58db4db4f056cb840f9d69ffc9b5868c1052bfc091992a6c098f27f" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:53f86a6d003b133539c471068027e3b57f6d2a583897d471308c96c976905aa1" [label=""];
  "sha256:53f86a6d003b133539c471068027e3b57f6d2a583897d471308c96c976905aa1" -> "sha256:98976e711b0bd0060d7410e6d405608e3169cb4a59502c8c90cc77fef12b3a8c" [label=""];
  "sha256:98976e711b0bd0060d7410e6d405608e3169cb4a59502c8c90cc77fef12b3a8c" -> "sha256:ef01fdd6fe1b63b73406d1f68a99a6bffa16811cf867ad6fbe0707906676b86b" [label=""];
  "sha256:ef01fdd6fe1b63b73406d1f68a99a6bffa16811cf867ad6fbe0707906676b86b" -> "sha256:22bb5ad1c1b3281b030cb0b5e8ee9f1ef0c3dfa3c66f58b0a5872033c0cc69a0" [label=""];
  "sha256:22bb5ad1c1b3281b030cb0b5e8ee9f1ef0c3dfa3c66f58b0a5872033c0cc69a0" -> "sha256:49d197720cd7dda7ed7b9b14614a06616ceb58b24a11891ab0fbc4008da17811" [label=""];
  "sha256:49d197720cd7dda7ed7b9b14614a06616ceb58b24a11891ab0fbc4008da17811" -> "sha256:7f41955d06aeb99f06afe094d928b8164b6784ceb85e49660a0e0d9f4d1d965a" [label=""];
  "sha256:7f41955d06aeb99f06afe094d928b8164b6784ceb85e49660a0e0d9f4d1d965a" -> "sha256:2962b450b9042d6a5d4f9e4a770c8ee88c088e18591f7ad77cbe1b76eee4710e" [label=""];
  "sha256:2962b450b9042d6a5d4f9e4a770c8ee88c088e18591f7ad77cbe1b76eee4710e" -> "sha256:b5733db18cca16614c2498916918d7e28028a90ca7e786acd7bc4553430bed4b" [label=""];
  "sha256:b5733db18cca16614c2498916918d7e28028a90ca7e786acd7bc4553430bed4b" -> "sha256:4140e53eb2a823c7aa8c33626af3aea684c6b93d2f8658621bb2079d374fa18d" [label=""];
  "sha256:4140e53eb2a823c7aa8c33626af3aea684c6b93d2f8658621bb2079d374fa18d" -> "sha256:cf905ebd16e6306f8cd2ee87420116d00fcf8f945e112466b75289a781a2b1e1" [label=""];
  "sha256:cf905ebd16e6306f8cd2ee87420116d00fcf8f945e112466b75289a781a2b1e1" -> "sha256:24ef801555d7e569de64bcda7dd0d2243852c64aa8e717d0d0becd099c5ff762" [label=""];
  "sha256:24ef801555d7e569de64bcda7dd0d2243852c64aa8e717d0d0becd099c5ff762" -> "sha256:32523cb80550b76c28f28c160bdf9d666860703bbbf2bb2f63d5c50c7d7cb48d" [label=""];
  "sha256:32523cb80550b76c28f28c160bdf9d666860703bbbf2bb2f63d5c50c7d7cb48d" -> "sha256:75eb79dd057f936dd3a44cc762d2ccdf7af4c5f8e769f341a3d2a653ab5369bf" [label=""];
  "sha256:75eb79dd057f936dd3a44cc762d2ccdf7af4c5f8e769f341a3d2a653ab5369bf" -> "sha256:a45b2217800ddbd2433a9046e9e3c940c50677b0840b1e103c7c7560ec151953" [label=""];
  "sha256:a45b2217800ddbd2433a9046e9e3c940c50677b0840b1e103c7c7560ec151953" -> "sha256:53a30ebaf082bc2a762d57554caa5c6f3492f5d4f8fd0f4c3979195bfec17a1e" [label=""];
  "sha256:53a30ebaf082bc2a762d57554caa5c6f3492f5d4f8fd0f4c3979195bfec17a1e" -> "sha256:798979370437d6a4f1a733755b4046433998a4662dc8a48f40cfacbf4e65822a" [label=""];
  "sha256:798979370437d6a4f1a733755b4046433998a4662dc8a48f40cfacbf4e65822a" -> "sha256:d7edb63f84cdbe62c4cecec44da9643e758c6bfff62418cfb2739fb25adb62e4" [label=""];
  "sha256:70ad03e3f1f48a9f4d4b2139e162c4a665982365f64f0dc3f52e5ce870767617" -> "sha256:d7edb63f84cdbe62c4cecec44da9643e758c6bfff62418cfb2739fb25adb62e4" [label=""];
  "sha256:d7edb63f84cdbe62c4cecec44da9643e758c6bfff62418cfb2739fb25adb62e4" -> "sha256:f5d6bebe06fa01800a2bb0b0a09ef10037fbcd516c60a30198a3464c28ce5247" [label=""];
  "sha256:f5d6bebe06fa01800a2bb0b0a09ef10037fbcd516c60a30198a3464c28ce5247" -> "sha256:a493ea97288e1e79f5fa5867ad807a33891562feaa07a0ec0642339d987bd898" [label=""];
  "sha256:a493ea97288e1e79f5fa5867ad807a33891562feaa07a0ec0642339d987bd898" -> "sha256:38a42f64017afbc1901bf33b350b64a305ee17510f92310a61c0939489d3e547" [label=""];
  "sha256:38a42f64017afbc1901bf33b350b64a305ee17510f92310a61c0939489d3e547" -> "sha256:dc5d9b66a07894389ac5989a282754be76e7a49dcce875f55da369a4d6b7e5ca" [label=""];
  "sha256:dc5d9b66a07894389ac5989a282754be76e7a49dcce875f55da369a4d6b7e5ca" -> "sha256:945573b10a393332e199026327efdb45f3aa52fc5ae59440153d917bb6320744" [label=""];
  "sha256:945573b10a393332e199026327efdb45f3aa52fc5ae59440153d917bb6320744" -> "sha256:25e67e8e52790dccbdab54a2a39f6f6c77b39ef8c79eff0eb1caafb1a8ad78d0" [label=""];
  "sha256:25e67e8e52790dccbdab54a2a39f6f6c77b39ef8c79eff0eb1caafb1a8ad78d0" -> "sha256:b1ae7983b58db4db4f056cb840f9d69ffc9b5868c1052bfc091992a6c098f27f" [label=""];
}

