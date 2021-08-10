[app/sources/252786979.Dockerfile]
digraph {
  "sha256:de736e5fe2ed72fdf1de47e4e467ed602f0bcb07c6befb768793ece894110776" [label="local://context" shape="ellipse"];
  "sha256:821a1a5ab2629c460561810213e4bad74e45c22f075992b126364420cd54cf12" [label="docker-image://docker.io/library/node:wheezy" shape="ellipse"];
  "sha256:7c20c78b905248816d5e8482b0c92c8068c0c7bdc1eff897ae9762260139f0af" [label="/bin/sh -c apt-get update -q && apt-get upgrade -qy && apt-get install -qy build-essential && apt-get install -qy libpng-dev && apt-get install -qy python-minimal && apt-get install -qy git wget && apt-get clean" shape="box"];
  "sha256:3619ba8e2eff7bf0363230094f11cc7a2d73f70d692cd3fcd5605a2db7c014a9" [label="http://download.redis.io/redis-stable.tar.gz" shape="ellipse"];
  "sha256:295a1f2ea4d47911f60e95f735accb8a6d974da1b43e3932e056b7278f307f1a" [label="copy{src=/redis-stable.tar.gz, dest=/redis-stable.tar.gz}" shape="note"];
  "sha256:750f2d3815e1ebccc2b7ac83a52be7b23f2e56af488a94d72a906f55a790893e" [label="/bin/sh -c tar xvzf redis-stable.tar.gz && cd redis-stable && make && cp src/redis-server /usr/bin/ && cp src/redis-cli /usr/bin/" shape="box"];
  "sha256:d5c564e62bd143c19b183b74014a49fa7dcd0559eab067496d61f015ac7be269" [label="/bin/sh -c cd /var/lib && git clone -b stable http://github.com/vatesfr/xo-server && git clone -b stable http://github.com/vatesfr/xo-web" shape="box"];
  "sha256:3eaeb25fca90b5d6c39bdc1f60af06850fe52200e4d847f1d7542d9c43630b15" [label="/bin/sh -c cd /var/lib/xo-server && npm install && npm run build && cp sample.config.yaml .xo-server.yaml" shape="box"];
  "sha256:6c4ee89c11950a59f510876c213eac70c3140091a4c65ace268e13c60d0fc8b0" [label="copy{src=/xo-server.yaml, dest=/var/lib/xo-server/.xo-server.yaml}" shape="note"];
  "sha256:9872df78e86a65aa0460324e5fcf6811b2c109bfb701aaf5b9afe79f850392fe" [label="/bin/sh -c cd /var/lib/xo-web && npm install && npm run build" shape="box"];
  "sha256:09d450b8d56f922e584cb45f4441104a463337df34dc7f38334433ca3e89b097" [label="/bin/sh -c npm install -g forever" shape="box"];
  "sha256:9dfefd42383fbe2c2a5cadf8c38dd167f23308f55a66859bdec6856d1f7a83cf" [label="/bin/sh -c mkdir /etc/redis && mkdir /var/redis && mkdir /var/redis/6379" shape="box"];
  "sha256:f5b8dd75706a2481fd8033dac10a283c6d8ce74a9ab1ff37f349f171bc1528f1" [label="copy{src=/redis_init_script, dest=/etc/init.d/redis_6379}" shape="note"];
  "sha256:fb752a42fcd89bf992b83a8d22eeae6d544547481e1bbaa861311f109a18fc0c" [label="/bin/sh -c chmod +x /etc/init.d/redis_6379" shape="box"];
  "sha256:02aa094b68f94a8b85e30e8fb823bf982999d94dd5d556b26cae995f28abe3cd" [label="copy{src=/6379.conf, dest=/etc/redis/6379.conf}" shape="note"];
  "sha256:dbc4e83ac36e024cfa8a17653cfb5dc6bf6d2393261b18475eab30f4adbfde59" [label="/bin/sh -c update-rc.d redis_6379 defaults" shape="box"];
  "sha256:d6e794607706f1da24d8a8c997a693b78d100d8b52c8f5b6cfedfd0714c03f69" [label="copy{src=/launch.sh, dest=/launch.sh}" shape="note"];
  "sha256:c28be8ac84ca21c4a3b330efdedd0d2aa560541a4f770ed973e1df092e753354" [label="/bin/sh -c chmod +x \"/launch.sh\"" shape="box"];
  "sha256:1852c5fcaa161f5e09a56e75db6f7a07f16a1b0437d2c6b091eb2497fbe91e23" [label="sha256:1852c5fcaa161f5e09a56e75db6f7a07f16a1b0437d2c6b091eb2497fbe91e23" shape="plaintext"];
  "sha256:821a1a5ab2629c460561810213e4bad74e45c22f075992b126364420cd54cf12" -> "sha256:7c20c78b905248816d5e8482b0c92c8068c0c7bdc1eff897ae9762260139f0af" [label=""];
  "sha256:7c20c78b905248816d5e8482b0c92c8068c0c7bdc1eff897ae9762260139f0af" -> "sha256:295a1f2ea4d47911f60e95f735accb8a6d974da1b43e3932e056b7278f307f1a" [label=""];
  "sha256:3619ba8e2eff7bf0363230094f11cc7a2d73f70d692cd3fcd5605a2db7c014a9" -> "sha256:295a1f2ea4d47911f60e95f735accb8a6d974da1b43e3932e056b7278f307f1a" [label=""];
  "sha256:295a1f2ea4d47911f60e95f735accb8a6d974da1b43e3932e056b7278f307f1a" -> "sha256:750f2d3815e1ebccc2b7ac83a52be7b23f2e56af488a94d72a906f55a790893e" [label=""];
  "sha256:750f2d3815e1ebccc2b7ac83a52be7b23f2e56af488a94d72a906f55a790893e" -> "sha256:d5c564e62bd143c19b183b74014a49fa7dcd0559eab067496d61f015ac7be269" [label=""];
  "sha256:d5c564e62bd143c19b183b74014a49fa7dcd0559eab067496d61f015ac7be269" -> "sha256:3eaeb25fca90b5d6c39bdc1f60af06850fe52200e4d847f1d7542d9c43630b15" [label=""];
  "sha256:3eaeb25fca90b5d6c39bdc1f60af06850fe52200e4d847f1d7542d9c43630b15" -> "sha256:6c4ee89c11950a59f510876c213eac70c3140091a4c65ace268e13c60d0fc8b0" [label=""];
  "sha256:de736e5fe2ed72fdf1de47e4e467ed602f0bcb07c6befb768793ece894110776" -> "sha256:6c4ee89c11950a59f510876c213eac70c3140091a4c65ace268e13c60d0fc8b0" [label=""];
  "sha256:6c4ee89c11950a59f510876c213eac70c3140091a4c65ace268e13c60d0fc8b0" -> "sha256:9872df78e86a65aa0460324e5fcf6811b2c109bfb701aaf5b9afe79f850392fe" [label=""];
  "sha256:9872df78e86a65aa0460324e5fcf6811b2c109bfb701aaf5b9afe79f850392fe" -> "sha256:09d450b8d56f922e584cb45f4441104a463337df34dc7f38334433ca3e89b097" [label=""];
  "sha256:09d450b8d56f922e584cb45f4441104a463337df34dc7f38334433ca3e89b097" -> "sha256:9dfefd42383fbe2c2a5cadf8c38dd167f23308f55a66859bdec6856d1f7a83cf" [label=""];
  "sha256:9dfefd42383fbe2c2a5cadf8c38dd167f23308f55a66859bdec6856d1f7a83cf" -> "sha256:f5b8dd75706a2481fd8033dac10a283c6d8ce74a9ab1ff37f349f171bc1528f1" [label=""];
  "sha256:de736e5fe2ed72fdf1de47e4e467ed602f0bcb07c6befb768793ece894110776" -> "sha256:f5b8dd75706a2481fd8033dac10a283c6d8ce74a9ab1ff37f349f171bc1528f1" [label=""];
  "sha256:f5b8dd75706a2481fd8033dac10a283c6d8ce74a9ab1ff37f349f171bc1528f1" -> "sha256:fb752a42fcd89bf992b83a8d22eeae6d544547481e1bbaa861311f109a18fc0c" [label=""];
  "sha256:fb752a42fcd89bf992b83a8d22eeae6d544547481e1bbaa861311f109a18fc0c" -> "sha256:02aa094b68f94a8b85e30e8fb823bf982999d94dd5d556b26cae995f28abe3cd" [label=""];
  "sha256:de736e5fe2ed72fdf1de47e4e467ed602f0bcb07c6befb768793ece894110776" -> "sha256:02aa094b68f94a8b85e30e8fb823bf982999d94dd5d556b26cae995f28abe3cd" [label=""];
  "sha256:02aa094b68f94a8b85e30e8fb823bf982999d94dd5d556b26cae995f28abe3cd" -> "sha256:dbc4e83ac36e024cfa8a17653cfb5dc6bf6d2393261b18475eab30f4adbfde59" [label=""];
  "sha256:dbc4e83ac36e024cfa8a17653cfb5dc6bf6d2393261b18475eab30f4adbfde59" -> "sha256:d6e794607706f1da24d8a8c997a693b78d100d8b52c8f5b6cfedfd0714c03f69" [label=""];
  "sha256:de736e5fe2ed72fdf1de47e4e467ed602f0bcb07c6befb768793ece894110776" -> "sha256:d6e794607706f1da24d8a8c997a693b78d100d8b52c8f5b6cfedfd0714c03f69" [label=""];
  "sha256:d6e794607706f1da24d8a8c997a693b78d100d8b52c8f5b6cfedfd0714c03f69" -> "sha256:c28be8ac84ca21c4a3b330efdedd0d2aa560541a4f770ed973e1df092e753354" [label=""];
  "sha256:c28be8ac84ca21c4a3b330efdedd0d2aa560541a4f770ed973e1df092e753354" -> "sha256:1852c5fcaa161f5e09a56e75db6f7a07f16a1b0437d2c6b091eb2497fbe91e23" [label=""];
}

