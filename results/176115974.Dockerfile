[app/sources/176115974.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:dd2d82208ed67e2e402362c93354b1dc64be59f5f47478bd7efb41bc605004d5" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu trusty main universe\" > /etc/apt/sources.list" shape="box"];
  "sha256:9f1e5befd79e0e83b2037ed9da92b1b777727271fef0a807ea425cf20da942e8" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:0434c78bcc2988141018c3543a13291a05393e2b3194154209cb30a51380c18f" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-software-properties software-properties-common" shape="box"];
  "sha256:537f4f22bd21945b9fc6eb08a4a34bfb9f0685f018005931867a09397a5b0445" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java -y" shape="box"];
  "sha256:fc3832e5f7e26f880737c919389241342a87c5397e4f1f1bf374f114f7a09145" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:8a8912de3355dc317eafda7450cc3480ffc7903f2a74d31cf7b6705fffdf0faa" [label="/bin/sh -c apt-get update && apt-get install -y     sudo     git     maven     oracle-java8-installer &&     apt-get clean" shape="box"];
  "sha256:57d7839c0ff2f929ee14ce01f57eb6917f253a92397a6f79041a40b7f7af9285" [label="/bin/sh -c update-java-alternatives -s java-8-oracle" shape="box"];
  "sha256:1a714b586e24f72a5042c6309e89a92f065ce8e13e9025e2f29af64682cb8d37" [label="/bin/sh -c echo \"export JAVA_HOME=/usr/lib/jvm/java-8-oracle\" >> ~/.bashrc" shape="box"];
  "sha256:fc0a32075b80dec8a320c8b79a77cb132ceb126f14e83b9466500bf567f70ccf" [label="/bin/sh -c git clone https://github.com/ahars/metrics-spark.git" shape="box"];
  "sha256:bf8296208eca608f03d9973ecc29ddd356f38e316c36ca6366111a3e471cbe97" [label="/bin/sh -c cd metrics-spark/ &&     mvn package" shape="box"];
  "sha256:a367ff2605fbee505504804df6b447ac478c5b4a0d4723c86b5e523bc1daddaf" [label="sha256:a367ff2605fbee505504804df6b447ac478c5b4a0d4723c86b5e523bc1daddaf" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:dd2d82208ed67e2e402362c93354b1dc64be59f5f47478bd7efb41bc605004d5" [label=""];
  "sha256:dd2d82208ed67e2e402362c93354b1dc64be59f5f47478bd7efb41bc605004d5" -> "sha256:9f1e5befd79e0e83b2037ed9da92b1b777727271fef0a807ea425cf20da942e8" [label=""];
  "sha256:9f1e5befd79e0e83b2037ed9da92b1b777727271fef0a807ea425cf20da942e8" -> "sha256:0434c78bcc2988141018c3543a13291a05393e2b3194154209cb30a51380c18f" [label=""];
  "sha256:0434c78bcc2988141018c3543a13291a05393e2b3194154209cb30a51380c18f" -> "sha256:537f4f22bd21945b9fc6eb08a4a34bfb9f0685f018005931867a09397a5b0445" [label=""];
  "sha256:537f4f22bd21945b9fc6eb08a4a34bfb9f0685f018005931867a09397a5b0445" -> "sha256:fc3832e5f7e26f880737c919389241342a87c5397e4f1f1bf374f114f7a09145" [label=""];
  "sha256:fc3832e5f7e26f880737c919389241342a87c5397e4f1f1bf374f114f7a09145" -> "sha256:8a8912de3355dc317eafda7450cc3480ffc7903f2a74d31cf7b6705fffdf0faa" [label=""];
  "sha256:8a8912de3355dc317eafda7450cc3480ffc7903f2a74d31cf7b6705fffdf0faa" -> "sha256:57d7839c0ff2f929ee14ce01f57eb6917f253a92397a6f79041a40b7f7af9285" [label=""];
  "sha256:57d7839c0ff2f929ee14ce01f57eb6917f253a92397a6f79041a40b7f7af9285" -> "sha256:1a714b586e24f72a5042c6309e89a92f065ce8e13e9025e2f29af64682cb8d37" [label=""];
  "sha256:1a714b586e24f72a5042c6309e89a92f065ce8e13e9025e2f29af64682cb8d37" -> "sha256:fc0a32075b80dec8a320c8b79a77cb132ceb126f14e83b9466500bf567f70ccf" [label=""];
  "sha256:fc0a32075b80dec8a320c8b79a77cb132ceb126f14e83b9466500bf567f70ccf" -> "sha256:bf8296208eca608f03d9973ecc29ddd356f38e316c36ca6366111a3e471cbe97" [label=""];
  "sha256:bf8296208eca608f03d9973ecc29ddd356f38e316c36ca6366111a3e471cbe97" -> "sha256:a367ff2605fbee505504804df6b447ac478c5b4a0d4723c86b5e523bc1daddaf" [label=""];
}

