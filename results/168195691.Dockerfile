[app/sources/168195691.Dockerfile]
digraph {
  "sha256:fd21d80ffb23fc27209f9ecd0d044548785956e2abffc3d339eca7b9186c3c93" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:614b115dcd09a69ac81fe9c758734f63a1b8349ccd16236caf5440223d5b369b" [label="/bin/sh -c apt-get update && apt-get -y upgrade" shape="box"];
  "sha256:0dc575c143fb3a2b12ac502f30bac18580bdb13fae3bbbcf82123bbe48db8b29" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -y install wget mysql-client mysql-server \t\tapache2 libapache2-mod-php5 pwgen python-setuptools vim-tiny php5-mysql  php5-ldap php5-curl" shape="box"];
  "sha256:d83b63d68595cd3963bf87fb95e93daabe44a2e10defd477c1498e276f9b8310" [label="/bin/sh -c easy_install supervisor" shape="box"];
  "sha256:b20c0f3607f99efa37f51d7b65e6fc16c0352d5e4e7b53277d3056d9e52a0cf1" [label="copy{src=/scripts/foreground.sh, dest=/etc/apache2/foreground.sh}" shape="note"];
  "sha256:0d29edf02a9c3a3b9452e2a9f7695f8abb112de28c7e1a63977db2057301d0fe" [label="copy{src=/configs/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:492ba51b78d411ba2c3cac9778f6b010b3443d583bb8f1a4a117030bdf39b743" [label="copy{src=/configs/000-default.conf, dest=/etc/apache2/sites-available/000-default.conf}" shape="note"];
  "sha256:31a8b109b9b240bbc23156df43538d2a93f2d68ab7c136acc3832b35eb32f31a" [label="/bin/sh -c mkdir /var/log/supervisor/" shape="box"];
  "sha256:ec67338cbcccbdac62b4a7851bbec0af7d861950a360d0b92270bd5ac4404349" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/v0.0.1/dockerize-linux-amd64-v0.0.1.tar.gz" shape="box"];
  "sha256:036d4e681f4d325da0382b503dc21a09410842e7a8c1002c02495cf909eabf9a" [label="/bin/sh -c tar -C /usr/local/bin -xvzf dockerize-linux-amd64-v0.0.1.tar.gz" shape="box"];
  "sha256:453c2e621e298eef86c379957a0b6990019bea2a7541a10845f9852bec27aa8f" [label="copy{src=/scripts/start.sh, dest=/start.sh}" shape="note"];
  "sha256:be92419076524e10e8d5b239a0802dd598d87fc4a33112f6c478f500fee7bb17" [label="/bin/sh -c chmod 755 /start.sh" shape="box"];
  "sha256:fc865c23df588662cef98f19b1ae53b7b12305b1838166a4fd3736cf18fe9215" [label="/bin/sh -c chmod 755 /etc/apache2/foreground.sh" shape="box"];
  "sha256:779734f639efcc56568463adadce8994e9e247aa1bf1b424158c7d515b03ba78" [label="/bin/sh -c rm -rf /var/www/" shape="box"];
  "sha256:5564968e1b00f4ba2f06cd47d1133a3eceb418f661d4e96a2a28af4a1f3f1a4a" [label="http://wordpress.org/latest.tar.gz" shape="ellipse"];
  "sha256:e4acb960778e05bf8305312839db60fdc323ccd959f64ae922aa79aa90bd3607" [label="copy{src=/latest.tar.gz, dest=/wordpress.tar.gz}" shape="note"];
  "sha256:fdc9c458767cf22db5a41a5c3d214ab052508fb482e72431b7c66c5fbfcbdf27" [label="/bin/sh -c tar xvzf /wordpress.tar.gz" shape="box"];
  "sha256:f4680986008935b642ca232ae9f97609f3df18229041527b9b92a25ed6cf986b" [label="/bin/sh -c mv /wordpress /var/www/" shape="box"];
  "sha256:a093646abec227352c5c789e2abe6570993d9880064a027aed1acf16893564f0" [label="/bin/sh -c chown -R www-data:www-data /var/www/" shape="box"];
  "sha256:a4d285c793236863a81781e3233a8ecd04a58cb508838cd44d2bed110d7318ba" [label="sha256:a4d285c793236863a81781e3233a8ecd04a58cb508838cd44d2bed110d7318ba" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:614b115dcd09a69ac81fe9c758734f63a1b8349ccd16236caf5440223d5b369b" [label=""];
  "sha256:614b115dcd09a69ac81fe9c758734f63a1b8349ccd16236caf5440223d5b369b" -> "sha256:0dc575c143fb3a2b12ac502f30bac18580bdb13fae3bbbcf82123bbe48db8b29" [label=""];
  "sha256:0dc575c143fb3a2b12ac502f30bac18580bdb13fae3bbbcf82123bbe48db8b29" -> "sha256:d83b63d68595cd3963bf87fb95e93daabe44a2e10defd477c1498e276f9b8310" [label=""];
  "sha256:d83b63d68595cd3963bf87fb95e93daabe44a2e10defd477c1498e276f9b8310" -> "sha256:b20c0f3607f99efa37f51d7b65e6fc16c0352d5e4e7b53277d3056d9e52a0cf1" [label=""];
  "sha256:fd21d80ffb23fc27209f9ecd0d044548785956e2abffc3d339eca7b9186c3c93" -> "sha256:b20c0f3607f99efa37f51d7b65e6fc16c0352d5e4e7b53277d3056d9e52a0cf1" [label=""];
  "sha256:b20c0f3607f99efa37f51d7b65e6fc16c0352d5e4e7b53277d3056d9e52a0cf1" -> "sha256:0d29edf02a9c3a3b9452e2a9f7695f8abb112de28c7e1a63977db2057301d0fe" [label=""];
  "sha256:fd21d80ffb23fc27209f9ecd0d044548785956e2abffc3d339eca7b9186c3c93" -> "sha256:0d29edf02a9c3a3b9452e2a9f7695f8abb112de28c7e1a63977db2057301d0fe" [label=""];
  "sha256:0d29edf02a9c3a3b9452e2a9f7695f8abb112de28c7e1a63977db2057301d0fe" -> "sha256:492ba51b78d411ba2c3cac9778f6b010b3443d583bb8f1a4a117030bdf39b743" [label=""];
  "sha256:fd21d80ffb23fc27209f9ecd0d044548785956e2abffc3d339eca7b9186c3c93" -> "sha256:492ba51b78d411ba2c3cac9778f6b010b3443d583bb8f1a4a117030bdf39b743" [label=""];
  "sha256:492ba51b78d411ba2c3cac9778f6b010b3443d583bb8f1a4a117030bdf39b743" -> "sha256:31a8b109b9b240bbc23156df43538d2a93f2d68ab7c136acc3832b35eb32f31a" [label=""];
  "sha256:31a8b109b9b240bbc23156df43538d2a93f2d68ab7c136acc3832b35eb32f31a" -> "sha256:ec67338cbcccbdac62b4a7851bbec0af7d861950a360d0b92270bd5ac4404349" [label=""];
  "sha256:ec67338cbcccbdac62b4a7851bbec0af7d861950a360d0b92270bd5ac4404349" -> "sha256:036d4e681f4d325da0382b503dc21a09410842e7a8c1002c02495cf909eabf9a" [label=""];
  "sha256:036d4e681f4d325da0382b503dc21a09410842e7a8c1002c02495cf909eabf9a" -> "sha256:453c2e621e298eef86c379957a0b6990019bea2a7541a10845f9852bec27aa8f" [label=""];
  "sha256:fd21d80ffb23fc27209f9ecd0d044548785956e2abffc3d339eca7b9186c3c93" -> "sha256:453c2e621e298eef86c379957a0b6990019bea2a7541a10845f9852bec27aa8f" [label=""];
  "sha256:453c2e621e298eef86c379957a0b6990019bea2a7541a10845f9852bec27aa8f" -> "sha256:be92419076524e10e8d5b239a0802dd598d87fc4a33112f6c478f500fee7bb17" [label=""];
  "sha256:be92419076524e10e8d5b239a0802dd598d87fc4a33112f6c478f500fee7bb17" -> "sha256:fc865c23df588662cef98f19b1ae53b7b12305b1838166a4fd3736cf18fe9215" [label=""];
  "sha256:fc865c23df588662cef98f19b1ae53b7b12305b1838166a4fd3736cf18fe9215" -> "sha256:779734f639efcc56568463adadce8994e9e247aa1bf1b424158c7d515b03ba78" [label=""];
  "sha256:779734f639efcc56568463adadce8994e9e247aa1bf1b424158c7d515b03ba78" -> "sha256:e4acb960778e05bf8305312839db60fdc323ccd959f64ae922aa79aa90bd3607" [label=""];
  "sha256:5564968e1b00f4ba2f06cd47d1133a3eceb418f661d4e96a2a28af4a1f3f1a4a" -> "sha256:e4acb960778e05bf8305312839db60fdc323ccd959f64ae922aa79aa90bd3607" [label=""];
  "sha256:e4acb960778e05bf8305312839db60fdc323ccd959f64ae922aa79aa90bd3607" -> "sha256:fdc9c458767cf22db5a41a5c3d214ab052508fb482e72431b7c66c5fbfcbdf27" [label=""];
  "sha256:fdc9c458767cf22db5a41a5c3d214ab052508fb482e72431b7c66c5fbfcbdf27" -> "sha256:f4680986008935b642ca232ae9f97609f3df18229041527b9b92a25ed6cf986b" [label=""];
  "sha256:f4680986008935b642ca232ae9f97609f3df18229041527b9b92a25ed6cf986b" -> "sha256:a093646abec227352c5c789e2abe6570993d9880064a027aed1acf16893564f0" [label=""];
  "sha256:a093646abec227352c5c789e2abe6570993d9880064a027aed1acf16893564f0" -> "sha256:a4d285c793236863a81781e3233a8ecd04a58cb508838cd44d2bed110d7318ba" [label=""];
}

