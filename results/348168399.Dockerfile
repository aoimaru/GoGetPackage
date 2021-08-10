[app/sources/348168399.Dockerfile]
digraph {
  "sha256:cd822ccce5e60d6acb970ee4b1fd45c0b6a6580e9b9e00efb587f8a0f53cec84" [label="docker-image://docker.io/library/microservice:latest" shape="ellipse"];
  "sha256:dc6d5553819f71c16da31169ae92144e706141502ddec4761e49f03bad6f9b1d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5e6b6441a040b2463a1072d078dc42fea9e46b009c8762fef986a9b9735381ea" [label="/bin/sh -c apt-get install -y python3 python3-dev python3-pip build-essential apache2 libapache2-mod-wsgi-py3" shape="box"];
  "sha256:d377f5d34c10ff1bef34e2561e0a5776baccd25f0a6339c034bc56f0faa5af7e" [label="/bin/sh -c pip3 install -U pip" shape="box"];
  "sha256:8d389f711082bf2efe456db1a0c566308394898f435e5c6048ddf3ada09054c7" [label="/bin/sh -c pip3 install -U requests armada Flask" shape="box"];
  "sha256:049518a77338601d61e17382452366b12824a5610a66e4590dcec1b60a250a1a" [label="local://context" shape="ellipse"];
  "sha256:311db7d351f3760f69268fbc12d4199a45dd27e875118eb570aa3fe2d9328d33" [label="copy{src=/apache2_vhost.conf, dest=/etc/apache2/sites-available/apache2_vhost.conf}" shape="note"];
  "sha256:b0da888db2dfb885cb232aa0249250955d01c329332d10f5691565e46d07d170" [label="/bin/sh -c ln -s /etc/apache2/sites-available/apache2_vhost.conf /etc/apache2/sites-enabled/apache2_vhost.conf" shape="box"];
  "sha256:88c4d55a9579d78b3b69160cb5672aa3128d315a4826725ed8c4fb6ecc3994a4" [label="/bin/sh -c rm -f /etc/apache2/sites-enabled/000-default.conf" shape="box"];
  "sha256:7a3ff30b3e37335cb20f72de940c40639da53a0609bd1af10965510beb60ab8b" [label="copy{src=/supervisor/*, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:99317609f2581b2a2780a118319d38477955fbb1a92132e4772b85fc071cd5ed" [label="copy{src=/, dest=/opt/microservice_flask}" shape="note"];
  "sha256:2204c7770df3f1d0fe070a13f3ead144d70eee2e6538918add1a813ccec16bb2" [label="sha256:2204c7770df3f1d0fe070a13f3ead144d70eee2e6538918add1a813ccec16bb2" shape="plaintext"];
  "sha256:cd822ccce5e60d6acb970ee4b1fd45c0b6a6580e9b9e00efb587f8a0f53cec84" -> "sha256:dc6d5553819f71c16da31169ae92144e706141502ddec4761e49f03bad6f9b1d" [label=""];
  "sha256:dc6d5553819f71c16da31169ae92144e706141502ddec4761e49f03bad6f9b1d" -> "sha256:5e6b6441a040b2463a1072d078dc42fea9e46b009c8762fef986a9b9735381ea" [label=""];
  "sha256:5e6b6441a040b2463a1072d078dc42fea9e46b009c8762fef986a9b9735381ea" -> "sha256:d377f5d34c10ff1bef34e2561e0a5776baccd25f0a6339c034bc56f0faa5af7e" [label=""];
  "sha256:d377f5d34c10ff1bef34e2561e0a5776baccd25f0a6339c034bc56f0faa5af7e" -> "sha256:8d389f711082bf2efe456db1a0c566308394898f435e5c6048ddf3ada09054c7" [label=""];
  "sha256:8d389f711082bf2efe456db1a0c566308394898f435e5c6048ddf3ada09054c7" -> "sha256:311db7d351f3760f69268fbc12d4199a45dd27e875118eb570aa3fe2d9328d33" [label=""];
  "sha256:049518a77338601d61e17382452366b12824a5610a66e4590dcec1b60a250a1a" -> "sha256:311db7d351f3760f69268fbc12d4199a45dd27e875118eb570aa3fe2d9328d33" [label=""];
  "sha256:311db7d351f3760f69268fbc12d4199a45dd27e875118eb570aa3fe2d9328d33" -> "sha256:b0da888db2dfb885cb232aa0249250955d01c329332d10f5691565e46d07d170" [label=""];
  "sha256:b0da888db2dfb885cb232aa0249250955d01c329332d10f5691565e46d07d170" -> "sha256:88c4d55a9579d78b3b69160cb5672aa3128d315a4826725ed8c4fb6ecc3994a4" [label=""];
  "sha256:88c4d55a9579d78b3b69160cb5672aa3128d315a4826725ed8c4fb6ecc3994a4" -> "sha256:7a3ff30b3e37335cb20f72de940c40639da53a0609bd1af10965510beb60ab8b" [label=""];
  "sha256:049518a77338601d61e17382452366b12824a5610a66e4590dcec1b60a250a1a" -> "sha256:7a3ff30b3e37335cb20f72de940c40639da53a0609bd1af10965510beb60ab8b" [label=""];
  "sha256:7a3ff30b3e37335cb20f72de940c40639da53a0609bd1af10965510beb60ab8b" -> "sha256:99317609f2581b2a2780a118319d38477955fbb1a92132e4772b85fc071cd5ed" [label=""];
  "sha256:049518a77338601d61e17382452366b12824a5610a66e4590dcec1b60a250a1a" -> "sha256:99317609f2581b2a2780a118319d38477955fbb1a92132e4772b85fc071cd5ed" [label=""];
  "sha256:99317609f2581b2a2780a118319d38477955fbb1a92132e4772b85fc071cd5ed" -> "sha256:2204c7770df3f1d0fe070a13f3ead144d70eee2e6538918add1a813ccec16bb2" [label=""];
}

