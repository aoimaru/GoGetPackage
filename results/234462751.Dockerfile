[app/sources/234462751.Dockerfile]
digraph {
  "sha256:4ddc0939c3df6b98668e607fff522c6e18de35fca453ecd19b4315dae0b8ceea" [label="local://context" shape="ellipse"];
  "sha256:d4b700c83882aa0b308908af286789bf22ce0405311932788ec2cbae91a78cb2" [label="docker-image://docker.io/idoall/nginx-php:php7.1.9" shape="ellipse"];
  "sha256:723a000693183afc7113ac4bbda1a38ace562e6edd5b0e895dd6b6449623755c" [label="/bin/sh -c cd /home/work/_src     && curl -o wordpress.tar.gz -fSL \"https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz\"     && rm -rf /home/work/_app/nginx/html/index.*     && tar -xzf wordpress.tar.gz -C /home/work/_app/nginx/html     && mv /home/work/_app/nginx/html/wordpress/* /home/work/_app/nginx/html     && rm -rf /home/work/_srcwordpress.tar.gz /home/work/_app/nginx/html/wordpress     && chown -R work:work /home/work/_app/nginx/html" shape="box"];
  "sha256:759d73b5eea358d93852d8c1cfd91ecffdf33f1f33c23d6045217d25edfaea72" [label="copy{src=/wordpress-init.sh, dest=/home/work/_script/wordpress-init.sh}" shape="note"];
  "sha256:2ea47c2bc29fb6751d60dce9fb77100e6a303c03867039b129bcf04f14d3467d" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:6ec374e21908195e0e05e89af2ba1844b96039e24ba4e6db2038484745ade866" [label="/bin/sh -c chmod +x /run.sh" shape="box"];
  "sha256:1c6dbd61b910881cbf3690550969505b207436b89fbab8bf47aa26337f02a3b3" [label="sha256:1c6dbd61b910881cbf3690550969505b207436b89fbab8bf47aa26337f02a3b3" shape="plaintext"];
  "sha256:d4b700c83882aa0b308908af286789bf22ce0405311932788ec2cbae91a78cb2" -> "sha256:723a000693183afc7113ac4bbda1a38ace562e6edd5b0e895dd6b6449623755c" [label=""];
  "sha256:723a000693183afc7113ac4bbda1a38ace562e6edd5b0e895dd6b6449623755c" -> "sha256:759d73b5eea358d93852d8c1cfd91ecffdf33f1f33c23d6045217d25edfaea72" [label=""];
  "sha256:4ddc0939c3df6b98668e607fff522c6e18de35fca453ecd19b4315dae0b8ceea" -> "sha256:759d73b5eea358d93852d8c1cfd91ecffdf33f1f33c23d6045217d25edfaea72" [label=""];
  "sha256:759d73b5eea358d93852d8c1cfd91ecffdf33f1f33c23d6045217d25edfaea72" -> "sha256:2ea47c2bc29fb6751d60dce9fb77100e6a303c03867039b129bcf04f14d3467d" [label=""];
  "sha256:4ddc0939c3df6b98668e607fff522c6e18de35fca453ecd19b4315dae0b8ceea" -> "sha256:2ea47c2bc29fb6751d60dce9fb77100e6a303c03867039b129bcf04f14d3467d" [label=""];
  "sha256:2ea47c2bc29fb6751d60dce9fb77100e6a303c03867039b129bcf04f14d3467d" -> "sha256:6ec374e21908195e0e05e89af2ba1844b96039e24ba4e6db2038484745ade866" [label=""];
  "sha256:6ec374e21908195e0e05e89af2ba1844b96039e24ba4e6db2038484745ade866" -> "sha256:1c6dbd61b910881cbf3690550969505b207436b89fbab8bf47aa26337f02a3b3" [label=""];
}

