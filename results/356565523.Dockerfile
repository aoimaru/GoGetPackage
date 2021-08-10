[app/sources/356565523.Dockerfile]
digraph {
  "sha256:d32092ac2d371292bd3592de6a175385915bcf5e84ef5b32120da4a5e5831a2c" [label="docker-image://docker.io/library/elasticsearch:latest" shape="ellipse"];
  "sha256:e5201bac33f2d5f381632ac26ba68bd1a7df8e205ef0ec22e031e2247c1e6132" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5811220a368e25ecbc17a08a99f72d366142777329d95f87b4e855cf066e51e2" [label="/bin/sh -c apt-get install -y apache2 git lua-cjson lua-sec lua-socket python3 python3-pip" shape="box"];
  "sha256:8e212db0f52f5f1500b69d5076202bf80d59429f033d56219ae8421f16fa5539" [label="/bin/sh -c pip3 install elasticsearch formatflowed netaddr" shape="box"];
  "sha256:a913f888a2daa7d76fb5bd606811e1451a57614a14bcd6d438c8e51d666d3595" [label="/bin/sh -c git clone https://github.com/apache/incubator-ponymail.git /var/www/ponymail" shape="box"];
  "sha256:c5da24d0c64b4942636454d8a508a9e02d0245fc27f03893634c2ead663c5bb9" [label="https://raw.githubusercontent.com/apache/incubator-ponymail/master/dockerfiles/ponymail_httpd_docker.conf" shape="ellipse"];
  "sha256:329eac68a69e1df843cc9e3ddcc82a58edab214748d63b4aa71092a6ce946b58" [label="copy{src=/ponymail_httpd_docker.conf, dest=/etc/apache2/sites-enabled/000-default.conf}" shape="note"];
  "sha256:ff255aa70345d7b75f51d76bd6ee682e4ee92669bbbe418a1713fa630e8d3a84" [label="/bin/sh -c service elasticsearch start && sleep 30 && service elasticsearch status && cd /var/www/ponymail/tools && python3 setup.py --defaults" shape="box"];
  "sha256:3cbab37eec02f75a51cc0d25b49481bd7d338e932b9965d365f1901f97ef920c" [label="/bin/sh -c a2enmod lua" shape="box"];
  "sha256:4194d7fd545847c29685fe6deb0bf649e94e9fb2464e2d861d2e54aec0d2e422" [label="sha256:4194d7fd545847c29685fe6deb0bf649e94e9fb2464e2d861d2e54aec0d2e422" shape="plaintext"];
  "sha256:d32092ac2d371292bd3592de6a175385915bcf5e84ef5b32120da4a5e5831a2c" -> "sha256:e5201bac33f2d5f381632ac26ba68bd1a7df8e205ef0ec22e031e2247c1e6132" [label=""];
  "sha256:e5201bac33f2d5f381632ac26ba68bd1a7df8e205ef0ec22e031e2247c1e6132" -> "sha256:5811220a368e25ecbc17a08a99f72d366142777329d95f87b4e855cf066e51e2" [label=""];
  "sha256:5811220a368e25ecbc17a08a99f72d366142777329d95f87b4e855cf066e51e2" -> "sha256:8e212db0f52f5f1500b69d5076202bf80d59429f033d56219ae8421f16fa5539" [label=""];
  "sha256:8e212db0f52f5f1500b69d5076202bf80d59429f033d56219ae8421f16fa5539" -> "sha256:a913f888a2daa7d76fb5bd606811e1451a57614a14bcd6d438c8e51d666d3595" [label=""];
  "sha256:a913f888a2daa7d76fb5bd606811e1451a57614a14bcd6d438c8e51d666d3595" -> "sha256:329eac68a69e1df843cc9e3ddcc82a58edab214748d63b4aa71092a6ce946b58" [label=""];
  "sha256:c5da24d0c64b4942636454d8a508a9e02d0245fc27f03893634c2ead663c5bb9" -> "sha256:329eac68a69e1df843cc9e3ddcc82a58edab214748d63b4aa71092a6ce946b58" [label=""];
  "sha256:329eac68a69e1df843cc9e3ddcc82a58edab214748d63b4aa71092a6ce946b58" -> "sha256:ff255aa70345d7b75f51d76bd6ee682e4ee92669bbbe418a1713fa630e8d3a84" [label=""];
  "sha256:ff255aa70345d7b75f51d76bd6ee682e4ee92669bbbe418a1713fa630e8d3a84" -> "sha256:3cbab37eec02f75a51cc0d25b49481bd7d338e932b9965d365f1901f97ef920c" [label=""];
  "sha256:3cbab37eec02f75a51cc0d25b49481bd7d338e932b9965d365f1901f97ef920c" -> "sha256:4194d7fd545847c29685fe6deb0bf649e94e9fb2464e2d861d2e54aec0d2e422" [label=""];
}

