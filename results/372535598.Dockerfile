[app/sources/372535598.Dockerfile]
digraph {
  "sha256:70620e4c0bc1e9f6514c107973a72f279f4d8fcce5b37dc152b5c48ae6bcc5de" [label="local://context" shape="ellipse"];
  "sha256:5225dd4d4af32f7a8e57c336d6015bc564bdbc9f791fa08e10664b9dfdcec14a" [label="docker-image://docker.io/richarvey/nginx-php-fpm:latest" shape="ellipse"];
  "sha256:9f5e9c26c09c4633efa3d5562866b5fe188767f3237ea4ab9fda9baf9ccd4eae" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:70d3eddcfaa62ee275653a5df97bbc65190ec38d27c7c197c5c88087b9f86aef" [label="/bin/sh -c apt-get install -y php5-mongo php5-curl" shape="box"];
  "sha256:ecc93fce20ead1a3d6213c599779b83f333bf56331e3f9fd02752415b9edf7fa" [label="copy{src=/, dest=/var/www/}" shape="note"];
  "sha256:cbf5ee8e358bf22e2f5e8ee0cea2e4137eabe80191fcf89436bf6acbfdbff207" [label="/bin/sh -c chown www-data:www-data -R /var/www/" shape="box"];
  "sha256:56335200e4bdc9ac67b7e96dca4fa259062e64e5df3d5a2ddd64d7ce2f7da91c" [label="copy{src=/Docker/nginx-ct.conf, dest=/etc/nginx/conf.d/nginx-ct.conf}" shape="note"];
  "sha256:2229f30ca8855ec97eaa9564bbc4888c0285e52b09783b0b47c96115905b820a" [label="copy{src=/Docker/database.php, dest=/var/www/app/config/database.php}" shape="note"];
  "sha256:fe03d2395b8bef96611adeff94bb227e3ebd15eac356bb74578cbf0cf81a7b0c" [label="/bin/sh -c chmod +x /var/www/Docker/installComposer.sh" shape="box"];
  "sha256:def1735ad88c62788ad1b969411f7066678511bed5a88b08ec9946ad2e18a714" [label="/bin/sh -c chmod +x /var/www/Docker/initContainer.sh" shape="box"];
  "sha256:01928ed6f805cb71572d87bf6a3fd668dcc3db1922f376c1132d6a7d2ba43d8a" [label="/bin/sh -c /var/www/Docker/installComposer.sh" shape="box"];
  "sha256:82e504bda3b4a4cb3d6e5e8270f2716f62acfe99ada820a9e0abff1757f898a0" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:1a0523900a36cdca1b796383dc95785842b7f1176d96df00c9e7c7c54216f73f" [label="/bin/sh -c composer update" shape="box"];
  "sha256:e0b3245010dcf8947315198f5945002ab272c5910728f8c8baf63dfc0da8c27c" [label="sha256:e0b3245010dcf8947315198f5945002ab272c5910728f8c8baf63dfc0da8c27c" shape="plaintext"];
  "sha256:5225dd4d4af32f7a8e57c336d6015bc564bdbc9f791fa08e10664b9dfdcec14a" -> "sha256:9f5e9c26c09c4633efa3d5562866b5fe188767f3237ea4ab9fda9baf9ccd4eae" [label=""];
  "sha256:9f5e9c26c09c4633efa3d5562866b5fe188767f3237ea4ab9fda9baf9ccd4eae" -> "sha256:70d3eddcfaa62ee275653a5df97bbc65190ec38d27c7c197c5c88087b9f86aef" [label=""];
  "sha256:70d3eddcfaa62ee275653a5df97bbc65190ec38d27c7c197c5c88087b9f86aef" -> "sha256:ecc93fce20ead1a3d6213c599779b83f333bf56331e3f9fd02752415b9edf7fa" [label=""];
  "sha256:70620e4c0bc1e9f6514c107973a72f279f4d8fcce5b37dc152b5c48ae6bcc5de" -> "sha256:ecc93fce20ead1a3d6213c599779b83f333bf56331e3f9fd02752415b9edf7fa" [label=""];
  "sha256:ecc93fce20ead1a3d6213c599779b83f333bf56331e3f9fd02752415b9edf7fa" -> "sha256:cbf5ee8e358bf22e2f5e8ee0cea2e4137eabe80191fcf89436bf6acbfdbff207" [label=""];
  "sha256:cbf5ee8e358bf22e2f5e8ee0cea2e4137eabe80191fcf89436bf6acbfdbff207" -> "sha256:56335200e4bdc9ac67b7e96dca4fa259062e64e5df3d5a2ddd64d7ce2f7da91c" [label=""];
  "sha256:70620e4c0bc1e9f6514c107973a72f279f4d8fcce5b37dc152b5c48ae6bcc5de" -> "sha256:56335200e4bdc9ac67b7e96dca4fa259062e64e5df3d5a2ddd64d7ce2f7da91c" [label=""];
  "sha256:56335200e4bdc9ac67b7e96dca4fa259062e64e5df3d5a2ddd64d7ce2f7da91c" -> "sha256:2229f30ca8855ec97eaa9564bbc4888c0285e52b09783b0b47c96115905b820a" [label=""];
  "sha256:70620e4c0bc1e9f6514c107973a72f279f4d8fcce5b37dc152b5c48ae6bcc5de" -> "sha256:2229f30ca8855ec97eaa9564bbc4888c0285e52b09783b0b47c96115905b820a" [label=""];
  "sha256:2229f30ca8855ec97eaa9564bbc4888c0285e52b09783b0b47c96115905b820a" -> "sha256:fe03d2395b8bef96611adeff94bb227e3ebd15eac356bb74578cbf0cf81a7b0c" [label=""];
  "sha256:fe03d2395b8bef96611adeff94bb227e3ebd15eac356bb74578cbf0cf81a7b0c" -> "sha256:def1735ad88c62788ad1b969411f7066678511bed5a88b08ec9946ad2e18a714" [label=""];
  "sha256:def1735ad88c62788ad1b969411f7066678511bed5a88b08ec9946ad2e18a714" -> "sha256:01928ed6f805cb71572d87bf6a3fd668dcc3db1922f376c1132d6a7d2ba43d8a" [label=""];
  "sha256:01928ed6f805cb71572d87bf6a3fd668dcc3db1922f376c1132d6a7d2ba43d8a" -> "sha256:82e504bda3b4a4cb3d6e5e8270f2716f62acfe99ada820a9e0abff1757f898a0" [label=""];
  "sha256:82e504bda3b4a4cb3d6e5e8270f2716f62acfe99ada820a9e0abff1757f898a0" -> "sha256:1a0523900a36cdca1b796383dc95785842b7f1176d96df00c9e7c7c54216f73f" [label=""];
  "sha256:1a0523900a36cdca1b796383dc95785842b7f1176d96df00c9e7c7c54216f73f" -> "sha256:e0b3245010dcf8947315198f5945002ab272c5910728f8c8baf63dfc0da8c27c" [label=""];
}

