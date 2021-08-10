[app/sources/289139172.Dockerfile]
digraph {
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" [label="docker-image://docker.io/library/php:5-apache" shape="ellipse"];
  "sha256:98fb590f45c4750065063411be780e1046aebe9cbfae6f65c095717593dc52e3" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:896b33cd328c7f092c1b1650a857eb0d3eeaf43e8a621cc2753694362426b753" [label="/bin/sh -c apt-get install -y php-pear" shape="box"];
  "sha256:353c2afe7a10449b4e85b19e6e328ede4de1920e86633792b8be64d1d7171fb7" [label="/bin/sh -c pear channel-discover pear.nrk.io" shape="box"];
  "sha256:a5216d1986b63d958dc3751c33a2df61a0d34c30ae7d5083eeec7ecfd5b82c59" [label="/bin/sh -c pear install nrk/Predis" shape="box"];
  "sha256:dc7b905dd10cafba2dea0f801d8f1d1a12fbd7f6222aa1d8f520b132e339e55a" [label="/bin/sh -c sed -i 's#ErrorLog /proc/self/fd/2#ErrorLog \"|$/bin/cat 1>\\&2\"#' /etc/apache2/apache2.conf" shape="box"];
  "sha256:eaf1286d6b9abf7691852f60941cff18435bd0e5a347f07dc5878f50f2d942e7" [label="/bin/sh -c sed -i 's#CustomLog /proc/self/fd/1 combined#CustomLog \"|/bin/cat\" combined#' /etc/apache2/apache2.conf" shape="box"];
  "sha256:21a9417040a03ecd6f6a858c4e104b76a342829d40ad5efbfb14cb974f43a173" [label="local://context" shape="ellipse"];
  "sha256:e04305a7c8d7d84e6f6927da03512d22a62034ce8b868d21ea202dcb82975d2c" [label="copy{src=/guestbook.php, dest=/var/www/html/guestbook.php}" shape="note"];
  "sha256:c8fc2a8936373a67a6c5ddf0a3a1bc56b06f28ac1dbb203db6483ef862544149" [label="copy{src=/controllers.js, dest=/var/www/html/controllers.js}" shape="note"];
  "sha256:67a0d7528d92602d2e618f136523e004980a099d33ced80fa74baa05b627c9d2" [label="copy{src=/index.html, dest=/var/www/html/index.html}" shape="note"];
  "sha256:b8334a3d34dfc70fa912e960e39b7e9489cc26b5572d6eb5f219309e97707ad7" [label="sha256:b8334a3d34dfc70fa912e960e39b7e9489cc26b5572d6eb5f219309e97707ad7" shape="plaintext"];
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" -> "sha256:98fb590f45c4750065063411be780e1046aebe9cbfae6f65c095717593dc52e3" [label=""];
  "sha256:98fb590f45c4750065063411be780e1046aebe9cbfae6f65c095717593dc52e3" -> "sha256:896b33cd328c7f092c1b1650a857eb0d3eeaf43e8a621cc2753694362426b753" [label=""];
  "sha256:896b33cd328c7f092c1b1650a857eb0d3eeaf43e8a621cc2753694362426b753" -> "sha256:353c2afe7a10449b4e85b19e6e328ede4de1920e86633792b8be64d1d7171fb7" [label=""];
  "sha256:353c2afe7a10449b4e85b19e6e328ede4de1920e86633792b8be64d1d7171fb7" -> "sha256:a5216d1986b63d958dc3751c33a2df61a0d34c30ae7d5083eeec7ecfd5b82c59" [label=""];
  "sha256:a5216d1986b63d958dc3751c33a2df61a0d34c30ae7d5083eeec7ecfd5b82c59" -> "sha256:dc7b905dd10cafba2dea0f801d8f1d1a12fbd7f6222aa1d8f520b132e339e55a" [label=""];
  "sha256:dc7b905dd10cafba2dea0f801d8f1d1a12fbd7f6222aa1d8f520b132e339e55a" -> "sha256:eaf1286d6b9abf7691852f60941cff18435bd0e5a347f07dc5878f50f2d942e7" [label=""];
  "sha256:eaf1286d6b9abf7691852f60941cff18435bd0e5a347f07dc5878f50f2d942e7" -> "sha256:e04305a7c8d7d84e6f6927da03512d22a62034ce8b868d21ea202dcb82975d2c" [label=""];
  "sha256:21a9417040a03ecd6f6a858c4e104b76a342829d40ad5efbfb14cb974f43a173" -> "sha256:e04305a7c8d7d84e6f6927da03512d22a62034ce8b868d21ea202dcb82975d2c" [label=""];
  "sha256:e04305a7c8d7d84e6f6927da03512d22a62034ce8b868d21ea202dcb82975d2c" -> "sha256:c8fc2a8936373a67a6c5ddf0a3a1bc56b06f28ac1dbb203db6483ef862544149" [label=""];
  "sha256:21a9417040a03ecd6f6a858c4e104b76a342829d40ad5efbfb14cb974f43a173" -> "sha256:c8fc2a8936373a67a6c5ddf0a3a1bc56b06f28ac1dbb203db6483ef862544149" [label=""];
  "sha256:c8fc2a8936373a67a6c5ddf0a3a1bc56b06f28ac1dbb203db6483ef862544149" -> "sha256:67a0d7528d92602d2e618f136523e004980a099d33ced80fa74baa05b627c9d2" [label=""];
  "sha256:21a9417040a03ecd6f6a858c4e104b76a342829d40ad5efbfb14cb974f43a173" -> "sha256:67a0d7528d92602d2e618f136523e004980a099d33ced80fa74baa05b627c9d2" [label=""];
  "sha256:67a0d7528d92602d2e618f136523e004980a099d33ced80fa74baa05b627c9d2" -> "sha256:b8334a3d34dfc70fa912e960e39b7e9489cc26b5572d6eb5f219309e97707ad7" [label=""];
}

