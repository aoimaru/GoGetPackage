[app/sources/248997632.Dockerfile]
digraph {
  "sha256:82eea6a9f85a6fbb41e8ec32246eb7d623c71b4d67268641dd4eff1eefb0db52" [label="docker-image://docker.io/mhart/alpine-node:11" shape="ellipse"];
  "sha256:0111119fe6db707b028118b57f1c9d2f98087d7909b255c308b5eb61f9c50022" [label="local://context" shape="ellipse"];
  "sha256:6ecb1b2e94c05e5f2ca850ff95b16748bb18a9f5eb17b283a1908367068260ee" [label="copy{src=/start.sh, dest=/scripts/start.sh}" shape="note"];
  "sha256:0f1f24c369dad8554b3b11cc7196d69192ba25aa89058ce1f0690dc87171dd52" [label="copy{src=/bashrc, dest=/home/ambientum/.bashrc}" shape="note"];
  "sha256:b4f752bad9218fb5db759a3967e6a28b5adce1e89ff2a5154db9f9b1a945b770" [label="copy{src=/bashrc, dest=/home/bashrc}" shape="note"];
  "sha256:9674809d40cc2cec120501f15be7642882f1ff3b02c227587168c24db1db8625" [label="/bin/sh -c echo \"---> Installing base dependencies\" &&     apk add --update     wget     curl     bash     fontconfig     libxrender     libxext     nano     vim     git     unzip     wget     make     sudo &&     echo \"---> Cleaning up\" &&     rm -rf /tmp/* &&     echo \"---> Adding the ambientum user\" &&     adduser -D -u 1000 ambientum &&     mkdir -p /var/www/app &&     chown -R ambientum:ambientum /var/www &&     echo \"ambientum  ALL = ( ALL ) NOPASSWD: ALL\" >> /etc/sudoers &&     wget -O /tini https://github.com/krallin/tini/releases/download/v0.16.1/tini-static &&     chmod +x /tini &&     chown -R ambientum:ambientum /home/ambientum &&     rm -rf /tmp/*" shape="box"];
  "sha256:db943cfb66c471a0b527c85a5b2a86121df40394ca24a988e400da080d1185d2" [label="mkdir{path=/var/www/app}" shape="note"];
  "sha256:b1dc10b38a28c100495bf0db86c25668e7eccf1a69306b83ff48d54223470544" [label="sha256:b1dc10b38a28c100495bf0db86c25668e7eccf1a69306b83ff48d54223470544" shape="plaintext"];
  "sha256:82eea6a9f85a6fbb41e8ec32246eb7d623c71b4d67268641dd4eff1eefb0db52" -> "sha256:6ecb1b2e94c05e5f2ca850ff95b16748bb18a9f5eb17b283a1908367068260ee" [label=""];
  "sha256:0111119fe6db707b028118b57f1c9d2f98087d7909b255c308b5eb61f9c50022" -> "sha256:6ecb1b2e94c05e5f2ca850ff95b16748bb18a9f5eb17b283a1908367068260ee" [label=""];
  "sha256:6ecb1b2e94c05e5f2ca850ff95b16748bb18a9f5eb17b283a1908367068260ee" -> "sha256:0f1f24c369dad8554b3b11cc7196d69192ba25aa89058ce1f0690dc87171dd52" [label=""];
  "sha256:0111119fe6db707b028118b57f1c9d2f98087d7909b255c308b5eb61f9c50022" -> "sha256:0f1f24c369dad8554b3b11cc7196d69192ba25aa89058ce1f0690dc87171dd52" [label=""];
  "sha256:0f1f24c369dad8554b3b11cc7196d69192ba25aa89058ce1f0690dc87171dd52" -> "sha256:b4f752bad9218fb5db759a3967e6a28b5adce1e89ff2a5154db9f9b1a945b770" [label=""];
  "sha256:0111119fe6db707b028118b57f1c9d2f98087d7909b255c308b5eb61f9c50022" -> "sha256:b4f752bad9218fb5db759a3967e6a28b5adce1e89ff2a5154db9f9b1a945b770" [label=""];
  "sha256:b4f752bad9218fb5db759a3967e6a28b5adce1e89ff2a5154db9f9b1a945b770" -> "sha256:9674809d40cc2cec120501f15be7642882f1ff3b02c227587168c24db1db8625" [label=""];
  "sha256:9674809d40cc2cec120501f15be7642882f1ff3b02c227587168c24db1db8625" -> "sha256:db943cfb66c471a0b527c85a5b2a86121df40394ca24a988e400da080d1185d2" [label=""];
  "sha256:db943cfb66c471a0b527c85a5b2a86121df40394ca24a988e400da080d1185d2" -> "sha256:b1dc10b38a28c100495bf0db86c25668e7eccf1a69306b83ff48d54223470544" [label=""];
}

