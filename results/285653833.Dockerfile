[app/sources/285653833.Dockerfile]
digraph {
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" [label="docker-image://docker.io/library/php:5-apache" shape="ellipse"];
  "sha256:98fb590f45c4750065063411be780e1046aebe9cbfae6f65c095717593dc52e3" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:896b33cd328c7f092c1b1650a857eb0d3eeaf43e8a621cc2753694362426b753" [label="/bin/sh -c apt-get install -y php-pear" shape="box"];
  "sha256:353c2afe7a10449b4e85b19e6e328ede4de1920e86633792b8be64d1d7171fb7" [label="/bin/sh -c pear channel-discover pear.nrk.io" shape="box"];
  "sha256:a5216d1986b63d958dc3751c33a2df61a0d34c30ae7d5083eeec7ecfd5b82c59" [label="/bin/sh -c pear install nrk/Predis" shape="box"];
  "sha256:dc7b905dd10cafba2dea0f801d8f1d1a12fbd7f6222aa1d8f520b132e339e55a" [label="/bin/sh -c sed -i 's#ErrorLog /proc/self/fd/2#ErrorLog \"|$/bin/cat 1>\\&2\"#' /etc/apache2/apache2.conf" shape="box"];
  "sha256:eaf1286d6b9abf7691852f60941cff18435bd0e5a347f07dc5878f50f2d942e7" [label="/bin/sh -c sed -i 's#CustomLog /proc/self/fd/1 combined#CustomLog \"|/bin/cat\" combined#' /etc/apache2/apache2.conf" shape="box"];
  "sha256:7e5947da848b7510735f2d2cedca226c2ee4ac95286238af990edbae4926a4e6" [label="local://context" shape="ellipse"];
  "sha256:7802d7c985d0ca94472bb17405098a79c1871592d8ed5df40e4aff254e001ada" [label="copy{src=/guestbook.php, dest=/var/www/html/guestbook.php}" shape="note"];
  "sha256:d378ef82ed2040e07f0be76e84f6b6a6cad006d4ad5c54055cb1fbcb52409685" [label="copy{src=/controllers.js, dest=/var/www/html/controllers.js}" shape="note"];
  "sha256:0ecc4269d02af97739f490d96f2494da0482a27d1af6d50896fe1e2eecdd0267" [label="copy{src=/index.html, dest=/var/www/html/index.html}" shape="note"];
  "sha256:fd4be208ada3b44039ee39ddf51df56519ddedaee88173dc75b8229a7e9f88ab" [label="sha256:fd4be208ada3b44039ee39ddf51df56519ddedaee88173dc75b8229a7e9f88ab" shape="plaintext"];
  "sha256:ed8db306833bb5e2f06c75c848a950fe89a853f37a6a46ab84256de6ff52ff31" -> "sha256:98fb590f45c4750065063411be780e1046aebe9cbfae6f65c095717593dc52e3" [label=""];
  "sha256:98fb590f45c4750065063411be780e1046aebe9cbfae6f65c095717593dc52e3" -> "sha256:896b33cd328c7f092c1b1650a857eb0d3eeaf43e8a621cc2753694362426b753" [label=""];
  "sha256:896b33cd328c7f092c1b1650a857eb0d3eeaf43e8a621cc2753694362426b753" -> "sha256:353c2afe7a10449b4e85b19e6e328ede4de1920e86633792b8be64d1d7171fb7" [label=""];
  "sha256:353c2afe7a10449b4e85b19e6e328ede4de1920e86633792b8be64d1d7171fb7" -> "sha256:a5216d1986b63d958dc3751c33a2df61a0d34c30ae7d5083eeec7ecfd5b82c59" [label=""];
  "sha256:a5216d1986b63d958dc3751c33a2df61a0d34c30ae7d5083eeec7ecfd5b82c59" -> "sha256:dc7b905dd10cafba2dea0f801d8f1d1a12fbd7f6222aa1d8f520b132e339e55a" [label=""];
  "sha256:dc7b905dd10cafba2dea0f801d8f1d1a12fbd7f6222aa1d8f520b132e339e55a" -> "sha256:eaf1286d6b9abf7691852f60941cff18435bd0e5a347f07dc5878f50f2d942e7" [label=""];
  "sha256:eaf1286d6b9abf7691852f60941cff18435bd0e5a347f07dc5878f50f2d942e7" -> "sha256:7802d7c985d0ca94472bb17405098a79c1871592d8ed5df40e4aff254e001ada" [label=""];
  "sha256:7e5947da848b7510735f2d2cedca226c2ee4ac95286238af990edbae4926a4e6" -> "sha256:7802d7c985d0ca94472bb17405098a79c1871592d8ed5df40e4aff254e001ada" [label=""];
  "sha256:7802d7c985d0ca94472bb17405098a79c1871592d8ed5df40e4aff254e001ada" -> "sha256:d378ef82ed2040e07f0be76e84f6b6a6cad006d4ad5c54055cb1fbcb52409685" [label=""];
  "sha256:7e5947da848b7510735f2d2cedca226c2ee4ac95286238af990edbae4926a4e6" -> "sha256:d378ef82ed2040e07f0be76e84f6b6a6cad006d4ad5c54055cb1fbcb52409685" [label=""];
  "sha256:d378ef82ed2040e07f0be76e84f6b6a6cad006d4ad5c54055cb1fbcb52409685" -> "sha256:0ecc4269d02af97739f490d96f2494da0482a27d1af6d50896fe1e2eecdd0267" [label=""];
  "sha256:7e5947da848b7510735f2d2cedca226c2ee4ac95286238af990edbae4926a4e6" -> "sha256:0ecc4269d02af97739f490d96f2494da0482a27d1af6d50896fe1e2eecdd0267" [label=""];
  "sha256:0ecc4269d02af97739f490d96f2494da0482a27d1af6d50896fe1e2eecdd0267" -> "sha256:fd4be208ada3b44039ee39ddf51df56519ddedaee88173dc75b8229a7e9f88ab" [label=""];
}

