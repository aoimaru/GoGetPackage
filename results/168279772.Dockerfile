[app/sources/168279772.Dockerfile]
digraph {
  "sha256:4696760d590b25da411ffe962b0b06ad4d415eea0e6ca763077fcca33e405f0c" [label="docker-image://docker.io/phusion/baseimage:0.9.15" shape="ellipse"];
  "sha256:4497f249b8843ee2435d533cfde529ccc7a36d51048f70c4ae1fd621c534042a" [label="/bin/sh -c rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh" shape="box"];
  "sha256:48e379ee669aa08e644cb1bd8fcc3b27ae6baed7e8aba5b8fb71db68cdd722ba" [label="/bin/sh -c sed -i 's/# \\(.*multiverse$\\)/\\1/g' /etc/apt/sources.list &&   apt-get update &&   apt-get install -y build-essential &&   apt-get install -y software-properties-common" shape="box"];
  "sha256:848a8129edfb3b03093d4eff5efca5c8910444b6d32a12472a7f4e408ee9c180" [label="/bin/sh -c cd /tmp &&   curl -LO http://download.redis.io/redis-stable.tar.gz &&   tar xvzf redis-stable.tar.gz &&   cd redis-stable &&   make &&   make install &&   cp -f src/redis-sentinel /usr/local/bin &&   mkdir -p /etc/redis &&   rm -rf /tmp/redis-stable*" shape="box"];
  "sha256:01433d00c47287e8604132a423817fdaee25005971dd157530902d29e0eedd6c" [label="local://context" shape="ellipse"];
  "sha256:070eb6ceea83a96ea31556aa1fe594b2c35285d246c79a48e539707dd6acce0c" [label="copy{src=/redis-base.conf, dest=/etc/redis/}" shape="note"];
  "sha256:8e3e34ef84f34f52da7967f8f2ada19e1e028438823618a7cd596a969301134f" [label="copy{src=/redis-obj.conf, dest=/etc/redis/}" shape="note"];
  "sha256:2d2aab8a1d58daf70094defe4d5c2f0fc22c13a0c8f3eef12a9ba8cea67d05db" [label="/bin/sh -c mkdir /etc/service/redis" shape="box"];
  "sha256:607d9b0ece9f972d70727bb74cc8d6bac36b60c40f616bff7b890d00009e944c" [label="copy{src=/redis.sh, dest=/etc/service/redis/run}" shape="note"];
  "sha256:5473d0e107d97630335db45807f34e200007387ea800ac594729d8931cdc68d3" [label="/bin/sh -c chmod 700 /etc/service/redis/run" shape="box"];
  "sha256:6bdd8ac7667a8a80ec05423e510b29d046bda5b57e942a3dfd6163d76195bae0" [label="/bin/sh -c useradd -s /usr/sbin/nologin -r -M -d /nonexistent -g users redis" shape="box"];
  "sha256:c3c03541fa6f0fb31aae0c7ce41eb964643fa0ddca150ec07b3ec6562969d66e" [label="mkdir{path=/data}" shape="note"];
  "sha256:a2c207b66837e02b3e6ccf89c67bdaa03a9d12174c314a4d60f820dfb95ff8a0" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:12b133d660a34d36d83345e2014a7d6ee39831d3498327d4ffd441c557348a6a" [label="sha256:12b133d660a34d36d83345e2014a7d6ee39831d3498327d4ffd441c557348a6a" shape="plaintext"];
  "sha256:4696760d590b25da411ffe962b0b06ad4d415eea0e6ca763077fcca33e405f0c" -> "sha256:4497f249b8843ee2435d533cfde529ccc7a36d51048f70c4ae1fd621c534042a" [label=""];
  "sha256:4497f249b8843ee2435d533cfde529ccc7a36d51048f70c4ae1fd621c534042a" -> "sha256:48e379ee669aa08e644cb1bd8fcc3b27ae6baed7e8aba5b8fb71db68cdd722ba" [label=""];
  "sha256:48e379ee669aa08e644cb1bd8fcc3b27ae6baed7e8aba5b8fb71db68cdd722ba" -> "sha256:848a8129edfb3b03093d4eff5efca5c8910444b6d32a12472a7f4e408ee9c180" [label=""];
  "sha256:848a8129edfb3b03093d4eff5efca5c8910444b6d32a12472a7f4e408ee9c180" -> "sha256:070eb6ceea83a96ea31556aa1fe594b2c35285d246c79a48e539707dd6acce0c" [label=""];
  "sha256:01433d00c47287e8604132a423817fdaee25005971dd157530902d29e0eedd6c" -> "sha256:070eb6ceea83a96ea31556aa1fe594b2c35285d246c79a48e539707dd6acce0c" [label=""];
  "sha256:070eb6ceea83a96ea31556aa1fe594b2c35285d246c79a48e539707dd6acce0c" -> "sha256:8e3e34ef84f34f52da7967f8f2ada19e1e028438823618a7cd596a969301134f" [label=""];
  "sha256:01433d00c47287e8604132a423817fdaee25005971dd157530902d29e0eedd6c" -> "sha256:8e3e34ef84f34f52da7967f8f2ada19e1e028438823618a7cd596a969301134f" [label=""];
  "sha256:8e3e34ef84f34f52da7967f8f2ada19e1e028438823618a7cd596a969301134f" -> "sha256:2d2aab8a1d58daf70094defe4d5c2f0fc22c13a0c8f3eef12a9ba8cea67d05db" [label=""];
  "sha256:2d2aab8a1d58daf70094defe4d5c2f0fc22c13a0c8f3eef12a9ba8cea67d05db" -> "sha256:607d9b0ece9f972d70727bb74cc8d6bac36b60c40f616bff7b890d00009e944c" [label=""];
  "sha256:01433d00c47287e8604132a423817fdaee25005971dd157530902d29e0eedd6c" -> "sha256:607d9b0ece9f972d70727bb74cc8d6bac36b60c40f616bff7b890d00009e944c" [label=""];
  "sha256:607d9b0ece9f972d70727bb74cc8d6bac36b60c40f616bff7b890d00009e944c" -> "sha256:5473d0e107d97630335db45807f34e200007387ea800ac594729d8931cdc68d3" [label=""];
  "sha256:5473d0e107d97630335db45807f34e200007387ea800ac594729d8931cdc68d3" -> "sha256:6bdd8ac7667a8a80ec05423e510b29d046bda5b57e942a3dfd6163d76195bae0" [label=""];
  "sha256:6bdd8ac7667a8a80ec05423e510b29d046bda5b57e942a3dfd6163d76195bae0" -> "sha256:c3c03541fa6f0fb31aae0c7ce41eb964643fa0ddca150ec07b3ec6562969d66e" [label=""];
  "sha256:c3c03541fa6f0fb31aae0c7ce41eb964643fa0ddca150ec07b3ec6562969d66e" -> "sha256:a2c207b66837e02b3e6ccf89c67bdaa03a9d12174c314a4d60f820dfb95ff8a0" [label=""];
  "sha256:a2c207b66837e02b3e6ccf89c67bdaa03a9d12174c314a4d60f820dfb95ff8a0" -> "sha256:12b133d660a34d36d83345e2014a7d6ee39831d3498327d4ffd441c557348a6a" [label=""];
}

