[app/sources/423605631.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:c836aa3c2dc3ed1780b381f2974cc83724a382c7dde8566e562f75b29f641617" [label="local://context" shape="ellipse"];
  "sha256:4da483c2aee72c3bfc019c58f70619e0c7d701986d44a1ea6b218896922254ab" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:bdd02e78a9f7b42091258b143b0e31cd4d2512e3e11f2ca01ddef4b3ecbc657d" [label="/bin/sh -c sed -i \"s/http:\\/\\/archive.ubuntu.com/http:\\/\\/mirrors.ustc.edu.cn/g\" /etc/apt/sources.list &&     sed -i '/security.ubuntu.com/d' /etc/apt/sources.list &&     apt-get update &&     apt-get -y install software-properties-common" shape="box"];
  "sha256:d40697948297acb6f8b75c1c42422d7f0441a051e2aae086b1eb43255b5b3ec3" [label="/bin/sh -c add-apt-repository -y ppa:ondrej/php &&     apt-get update &&     apt-get -y upgrade &&     apt-get -y install tzdata &&     apt-get -y install vim &&     apt-get -y install apache2" shape="box"];
  "sha256:34f8063f6c40ac801058afb76bbe4f827958fd5a4d2713cb3b4a8f80475dd68f" [label="/bin/sh -c apt-cache search \"php\" | grep \"php7.3\"| awk '{print $1}'| xargs apt-get -y install &&     rm /var/www/html/index.html &&     chmod 755 -R /var/www/html/ &&     chmod 700 /run.sh" shape="box"];
  "sha256:2685a6bd2b4b5a1cc450cc7635e473b2ffc1c008f466948110f959c3b047784b" [label="sha256:2685a6bd2b4b5a1cc450cc7635e473b2ffc1c008f466948110f959c3b047784b" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:4da483c2aee72c3bfc019c58f70619e0c7d701986d44a1ea6b218896922254ab" [label=""];
  "sha256:c836aa3c2dc3ed1780b381f2974cc83724a382c7dde8566e562f75b29f641617" -> "sha256:4da483c2aee72c3bfc019c58f70619e0c7d701986d44a1ea6b218896922254ab" [label=""];
  "sha256:4da483c2aee72c3bfc019c58f70619e0c7d701986d44a1ea6b218896922254ab" -> "sha256:bdd02e78a9f7b42091258b143b0e31cd4d2512e3e11f2ca01ddef4b3ecbc657d" [label=""];
  "sha256:bdd02e78a9f7b42091258b143b0e31cd4d2512e3e11f2ca01ddef4b3ecbc657d" -> "sha256:d40697948297acb6f8b75c1c42422d7f0441a051e2aae086b1eb43255b5b3ec3" [label=""];
  "sha256:d40697948297acb6f8b75c1c42422d7f0441a051e2aae086b1eb43255b5b3ec3" -> "sha256:34f8063f6c40ac801058afb76bbe4f827958fd5a4d2713cb3b4a8f80475dd68f" [label=""];
  "sha256:34f8063f6c40ac801058afb76bbe4f827958fd5a4d2713cb3b4a8f80475dd68f" -> "sha256:2685a6bd2b4b5a1cc450cc7635e473b2ffc1c008f466948110f959c3b047784b" [label=""];
}

