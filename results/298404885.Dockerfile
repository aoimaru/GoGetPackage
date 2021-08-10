[app/sources/298404885.Dockerfile]
digraph {
  "sha256:3c1223bb1d45e64213c998bc276cea26f6a2127397fdc8c421ac378e6232e8a2" [label="docker-image://docker.io/dorowu/ubuntu-desktop-lxde-vnc:bionic" shape="ellipse"];
  "sha256:45074b2420676564e03590e01cd2f139074401273c5c5ad58b436a2a4104005e" [label="/bin/sh -c sed -i 's#http://\\(archive\\|security\\).ubuntu.com/#http://mirrors.aliyun.com/#' /etc/apt/sources.list   && cat /etc/apt/sources.list" shape="box"];
  "sha256:88e61b5f6d22b8e8afcc1499048dcc632fb4df7a8c3831aef9dcc01fb2f8eb0d" [label="/bin/sh -c apt-get update   && apt-get install -y --no-install-recommends --allow-unauthenticated     wget     gpg-agent     dbus     libgconf-2-4     build-essential     ca-certificates     openssl     gnupg2" shape="box"];
  "sha256:9c14b829237f6159db502a457225659aeb457656938691a2412bc4e2f589e477" [label="/bin/sh -c echo \"Asia/Shanghai\" > /etc/timezone" shape="box"];
  "sha256:b2a7eea287f19e3120d680bb81086d07ff94053aac54acd8943b2e25fb28b51b" [label="/bin/sh -c dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:8cb9ae4ee5a6911d67a909d4ea228359b4b23a36f66cb8605b864726d8a65c54" [label="local://context" shape="ellipse"];
  "sha256:e8df94b5aa06619e766d88aeff4be3b8bb788b9783bcfa2ee9932a4218a69c9a" [label="copy{src=/, dest=/wxdt}" shape="note"];
  "sha256:da80127169e91cca0e73bfc7fc14c7c1e5484d02aec2ff85a05f13e019a32bd8" [label="/bin/sh -c echo \"\\n[program:wxdt]\\npriority=25\\ndirectory=/wxdt/bin/\\ncommand=bash wxdt start\\nstderr_logfile=/var/log/wxdt.err.log\\nstdout_logfile=/var/log/wxdt.out.log\\n\" >> /etc/supervisor/conf.d/supervisord.conf" shape="box"];
  "sha256:55b444cac04e02acb4af9a982a8597682e4f31662643ad854f16719e956f8ed1" [label="/bin/sh -c sed -i     -e s%'ln -s '%'ln -sf '%     /startup.sh" shape="box"];
  "sha256:dd5153298b3e62829ad5a8336a118349ee586170b5baef3417f67ed7db8e34fe" [label="/bin/sh -c update_nwjs.sh     && rm -rf /tmp/wxdt_xsp" shape="box"];
  "sha256:9d6877f46c0e1a38a7903eb6a9a0157ce2428ceb46952b770ca3b139ba03cd00" [label="sha256:9d6877f46c0e1a38a7903eb6a9a0157ce2428ceb46952b770ca3b139ba03cd00" shape="plaintext"];
  "sha256:3c1223bb1d45e64213c998bc276cea26f6a2127397fdc8c421ac378e6232e8a2" -> "sha256:45074b2420676564e03590e01cd2f139074401273c5c5ad58b436a2a4104005e" [label=""];
  "sha256:45074b2420676564e03590e01cd2f139074401273c5c5ad58b436a2a4104005e" -> "sha256:88e61b5f6d22b8e8afcc1499048dcc632fb4df7a8c3831aef9dcc01fb2f8eb0d" [label=""];
  "sha256:88e61b5f6d22b8e8afcc1499048dcc632fb4df7a8c3831aef9dcc01fb2f8eb0d" -> "sha256:9c14b829237f6159db502a457225659aeb457656938691a2412bc4e2f589e477" [label=""];
  "sha256:9c14b829237f6159db502a457225659aeb457656938691a2412bc4e2f589e477" -> "sha256:b2a7eea287f19e3120d680bb81086d07ff94053aac54acd8943b2e25fb28b51b" [label=""];
  "sha256:b2a7eea287f19e3120d680bb81086d07ff94053aac54acd8943b2e25fb28b51b" -> "sha256:e8df94b5aa06619e766d88aeff4be3b8bb788b9783bcfa2ee9932a4218a69c9a" [label=""];
  "sha256:8cb9ae4ee5a6911d67a909d4ea228359b4b23a36f66cb8605b864726d8a65c54" -> "sha256:e8df94b5aa06619e766d88aeff4be3b8bb788b9783bcfa2ee9932a4218a69c9a" [label=""];
  "sha256:e8df94b5aa06619e766d88aeff4be3b8bb788b9783bcfa2ee9932a4218a69c9a" -> "sha256:da80127169e91cca0e73bfc7fc14c7c1e5484d02aec2ff85a05f13e019a32bd8" [label=""];
  "sha256:da80127169e91cca0e73bfc7fc14c7c1e5484d02aec2ff85a05f13e019a32bd8" -> "sha256:55b444cac04e02acb4af9a982a8597682e4f31662643ad854f16719e956f8ed1" [label=""];
  "sha256:55b444cac04e02acb4af9a982a8597682e4f31662643ad854f16719e956f8ed1" -> "sha256:dd5153298b3e62829ad5a8336a118349ee586170b5baef3417f67ed7db8e34fe" [label=""];
  "sha256:dd5153298b3e62829ad5a8336a118349ee586170b5baef3417f67ed7db8e34fe" -> "sha256:9d6877f46c0e1a38a7903eb6a9a0157ce2428ceb46952b770ca3b139ba03cd00" [label=""];
}

