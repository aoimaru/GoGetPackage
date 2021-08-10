[app/sources/464035977.Dockerfile]
digraph {
  "sha256:ec08e39234da70c712a1ca9392f73fe0f7c22681376cd2a966ddf387108ec155" [label="docker-image://docker.io/nickistre/ubuntu-lamp:latest" shape="ellipse"];
  "sha256:9ac452a5386293058aba6e6116c937f747997e0edb7b39118dd28c78463565ed" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:727f08b93d33e3bd9a806e5380bc885377b8afc058f769a20f0012cae29e13c5" [label="/bin/sh -c rm /var/www/html/index.html" shape="box"];
  "sha256:b878dbe21c4d3fb05e0d4088c74fea6fa8035c9129e5b800220fae57569074a2" [label="local://context" shape="ellipse"];
  "sha256:26d24be82034ad02bf0896bb3c7f075d20d0228c593bb67bfaf807e212c0a621" [label="copy{src=/index.html, dest=/var/www/html/}" shape="note"];
  "sha256:6f698ca42832209cf762a5debf77c34164349dc960e436103f1b7691052643c7" [label="copy{src=/challenge20.php, dest=/var/www/html/}" shape="note"];
  "sha256:2cbd7608588f0dd953b553da8617c8488f16c9ea5bd52d1d4ede04f71d8da612" [label="copy{src=/flag.php, dest=/var/www/html/}" shape="note"];
  "sha256:c0e1b292905b274bba1fad949445bb6ba181c435d625384ee68dda5ff43d4c8c" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:0c3dfcd9033ab308ce47ffca52a4a7391efd18f4a14436043d8e8fad4215f955" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:b57294b173c409c4562ca01e7d313fb08430892755c5c9d03a21a98bd4279c2a" [label="/bin/sh -c chown www-data:www-data /var/www/html/* -R" shape="box"];
  "sha256:961999fa22cf9653654276c805cf8e0e511a8a3b5f3262a45cab945d4caaeb84" [label="/bin/sh -c chmod -R 755 /var/www/html/" shape="box"];
  "sha256:e72bcf948a68b657939739ae3b7b89d39c0cbaeb03eb462250e6cb0563444f1d" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:903a70e32299aebf03c649e06578d318481e3eba48b1b19633eb8ee776defce7" [label="/bin/sh -c service apache2 restart" shape="box"];
  "sha256:303de3524d7bd336a9009b49dac100b2bef28cdd4d0fafaed620a3b2b942cb5c" [label="sha256:303de3524d7bd336a9009b49dac100b2bef28cdd4d0fafaed620a3b2b942cb5c" shape="plaintext"];
  "sha256:ec08e39234da70c712a1ca9392f73fe0f7c22681376cd2a966ddf387108ec155" -> "sha256:9ac452a5386293058aba6e6116c937f747997e0edb7b39118dd28c78463565ed" [label=""];
  "sha256:9ac452a5386293058aba6e6116c937f747997e0edb7b39118dd28c78463565ed" -> "sha256:727f08b93d33e3bd9a806e5380bc885377b8afc058f769a20f0012cae29e13c5" [label=""];
  "sha256:727f08b93d33e3bd9a806e5380bc885377b8afc058f769a20f0012cae29e13c5" -> "sha256:26d24be82034ad02bf0896bb3c7f075d20d0228c593bb67bfaf807e212c0a621" [label=""];
  "sha256:b878dbe21c4d3fb05e0d4088c74fea6fa8035c9129e5b800220fae57569074a2" -> "sha256:26d24be82034ad02bf0896bb3c7f075d20d0228c593bb67bfaf807e212c0a621" [label=""];
  "sha256:26d24be82034ad02bf0896bb3c7f075d20d0228c593bb67bfaf807e212c0a621" -> "sha256:6f698ca42832209cf762a5debf77c34164349dc960e436103f1b7691052643c7" [label=""];
  "sha256:b878dbe21c4d3fb05e0d4088c74fea6fa8035c9129e5b800220fae57569074a2" -> "sha256:6f698ca42832209cf762a5debf77c34164349dc960e436103f1b7691052643c7" [label=""];
  "sha256:6f698ca42832209cf762a5debf77c34164349dc960e436103f1b7691052643c7" -> "sha256:2cbd7608588f0dd953b553da8617c8488f16c9ea5bd52d1d4ede04f71d8da612" [label=""];
  "sha256:b878dbe21c4d3fb05e0d4088c74fea6fa8035c9129e5b800220fae57569074a2" -> "sha256:2cbd7608588f0dd953b553da8617c8488f16c9ea5bd52d1d4ede04f71d8da612" [label=""];
  "sha256:2cbd7608588f0dd953b553da8617c8488f16c9ea5bd52d1d4ede04f71d8da612" -> "sha256:c0e1b292905b274bba1fad949445bb6ba181c435d625384ee68dda5ff43d4c8c" [label=""];
  "sha256:b878dbe21c4d3fb05e0d4088c74fea6fa8035c9129e5b800220fae57569074a2" -> "sha256:c0e1b292905b274bba1fad949445bb6ba181c435d625384ee68dda5ff43d4c8c" [label=""];
  "sha256:c0e1b292905b274bba1fad949445bb6ba181c435d625384ee68dda5ff43d4c8c" -> "sha256:0c3dfcd9033ab308ce47ffca52a4a7391efd18f4a14436043d8e8fad4215f955" [label=""];
  "sha256:0c3dfcd9033ab308ce47ffca52a4a7391efd18f4a14436043d8e8fad4215f955" -> "sha256:b57294b173c409c4562ca01e7d313fb08430892755c5c9d03a21a98bd4279c2a" [label=""];
  "sha256:b57294b173c409c4562ca01e7d313fb08430892755c5c9d03a21a98bd4279c2a" -> "sha256:961999fa22cf9653654276c805cf8e0e511a8a3b5f3262a45cab945d4caaeb84" [label=""];
  "sha256:961999fa22cf9653654276c805cf8e0e511a8a3b5f3262a45cab945d4caaeb84" -> "sha256:e72bcf948a68b657939739ae3b7b89d39c0cbaeb03eb462250e6cb0563444f1d" [label=""];
  "sha256:e72bcf948a68b657939739ae3b7b89d39c0cbaeb03eb462250e6cb0563444f1d" -> "sha256:903a70e32299aebf03c649e06578d318481e3eba48b1b19633eb8ee776defce7" [label=""];
  "sha256:903a70e32299aebf03c649e06578d318481e3eba48b1b19633eb8ee776defce7" -> "sha256:303de3524d7bd336a9009b49dac100b2bef28cdd4d0fafaed620a3b2b942cb5c" [label=""];
}

