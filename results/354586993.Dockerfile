[app/sources/354586993.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:faa528430870903af80f51d87a2e75dfcdc5611279e30013fc6fc61bd7ccab09" [label="/bin/sh -c apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449" shape="box"];
  "sha256:ac6d26ae4a86a655abb26eb34f4f75d4c44fefb42c8e5e82107df65664777546" [label="/bin/sh -c apt-get update -y     && apt-get install -y software-properties-common wget     && wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -     && add-apt-repository \"deb http://dl.hhvm.com/ubuntu $(lsb_release -sc) main\"     && apt-get update -y     && apt-get install -y hhvm     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0723d392431abb39efe47f79925e108468d7b73f4393db59a9647fd0a8532947" [label="/bin/sh -c mkdir -p /var/www" shape="box"];
  "sha256:067dee945e453c18f775004b033be412d30f24d2d97ec4e780740adcc4348a2a" [label="local://context" shape="ellipse"];
  "sha256:193e5348450c447fd93edda380b275a378df9e6f9b67e4970c45d642c4f59d38" [label="copy{src=/server.ini, dest=/etc/hhvm/server.ini}" shape="note"];
  "sha256:a408ec43aef42e13d0bf4eb29e426e75b68a9e61b927efed9cdda04d574f2044" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:ced64fd0587cb8663db6e69e172fcb96497bd81b491dfc8f39aeda3589e6bb56" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:df68533c1a469c57fb75c27280bf0eedbfceed116e654c8b071958815a18b203" [label="sha256:df68533c1a469c57fb75c27280bf0eedbfceed116e654c8b071958815a18b203" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:faa528430870903af80f51d87a2e75dfcdc5611279e30013fc6fc61bd7ccab09" [label=""];
  "sha256:faa528430870903af80f51d87a2e75dfcdc5611279e30013fc6fc61bd7ccab09" -> "sha256:ac6d26ae4a86a655abb26eb34f4f75d4c44fefb42c8e5e82107df65664777546" [label=""];
  "sha256:ac6d26ae4a86a655abb26eb34f4f75d4c44fefb42c8e5e82107df65664777546" -> "sha256:0723d392431abb39efe47f79925e108468d7b73f4393db59a9647fd0a8532947" [label=""];
  "sha256:0723d392431abb39efe47f79925e108468d7b73f4393db59a9647fd0a8532947" -> "sha256:193e5348450c447fd93edda380b275a378df9e6f9b67e4970c45d642c4f59d38" [label=""];
  "sha256:067dee945e453c18f775004b033be412d30f24d2d97ec4e780740adcc4348a2a" -> "sha256:193e5348450c447fd93edda380b275a378df9e6f9b67e4970c45d642c4f59d38" [label=""];
  "sha256:193e5348450c447fd93edda380b275a378df9e6f9b67e4970c45d642c4f59d38" -> "sha256:a408ec43aef42e13d0bf4eb29e426e75b68a9e61b927efed9cdda04d574f2044" [label=""];
  "sha256:a408ec43aef42e13d0bf4eb29e426e75b68a9e61b927efed9cdda04d574f2044" -> "sha256:ced64fd0587cb8663db6e69e172fcb96497bd81b491dfc8f39aeda3589e6bb56" [label=""];
  "sha256:ced64fd0587cb8663db6e69e172fcb96497bd81b491dfc8f39aeda3589e6bb56" -> "sha256:df68533c1a469c57fb75c27280bf0eedbfceed116e654c8b071958815a18b203" [label=""];
}

