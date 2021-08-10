[app/sources/361353636.Dockerfile]
digraph {
  "sha256:9c88600748ba6210160ce80739312b958b9db166c34b9a699ca4791ddb261f33" [label="docker-image://docker.io/terraref/terrautils:1.4" shape="ellipse"];
  "sha256:9b6440e2f45bf8125501c25a2422da30c97d2d574fc7f35ba61730ec3091c45c" [label="/bin/sh -c useradd -u 49044 extractor     && mkdir -p /home/clowder/sites/ua-mac     && chown -R extractor /home/clowder" shape="box"];
  "sha256:7e1000051e95ef158abf91ab67969ac184997a9fee0246bb3565b27603c9dbfe" [label="local://context" shape="ellipse"];
  "sha256:9f8b713dbde6f1043613e7932b4fe99ec4fe9fec1541a47362311f6b393f3336" [label="copy{src=/entrypoint.sh, dest=/home/clowder/},copy{src=/*.py, dest=/home/clowder/}" shape="note"];
  "sha256:89cfeb48f358599a910f34cbe687fd6aaec834b6c7ae97789b324def23aebdc1" [label="sha256:89cfeb48f358599a910f34cbe687fd6aaec834b6c7ae97789b324def23aebdc1" shape="plaintext"];
  "sha256:9c88600748ba6210160ce80739312b958b9db166c34b9a699ca4791ddb261f33" -> "sha256:9b6440e2f45bf8125501c25a2422da30c97d2d574fc7f35ba61730ec3091c45c" [label=""];
  "sha256:9b6440e2f45bf8125501c25a2422da30c97d2d574fc7f35ba61730ec3091c45c" -> "sha256:9f8b713dbde6f1043613e7932b4fe99ec4fe9fec1541a47362311f6b393f3336" [label=""];
  "sha256:7e1000051e95ef158abf91ab67969ac184997a9fee0246bb3565b27603c9dbfe" -> "sha256:9f8b713dbde6f1043613e7932b4fe99ec4fe9fec1541a47362311f6b393f3336" [label=""];
  "sha256:9f8b713dbde6f1043613e7932b4fe99ec4fe9fec1541a47362311f6b393f3336" -> "sha256:89cfeb48f358599a910f34cbe687fd6aaec834b6c7ae97789b324def23aebdc1" [label=""];
}

