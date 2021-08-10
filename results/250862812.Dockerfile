[app/sources/250862812.Dockerfile]
digraph {
  "sha256:0ffdc68b129383c7fb09ec8745efe9eb9cdd629c202a4b9a09ee4157b1cb962d" [label="docker-image://docker.io/akeneo/php:7.3" shape="ellipse"];
  "sha256:7ebab14a7c5cff65ee7ade5d465badd57649b162a1dd24925a7fe1a9414066bc" [label="/bin/sh -c apt-get update &&     apt-get --no-install-recommends --no-install-suggests --yes --quiet install php7.3-fpm &&     apt-get clean && apt-get --yes --quiet autoremove --purge &&     rm -rf  /var/lib/apt/lists/* /tmp/* /var/tmp/*             /usr/share/doc/* /usr/share/groff/* /usr/share/info/* /usr/share/linda/*             /usr/share/lintian/* /usr/share/locale/* /usr/share/man/*" shape="box"];
  "sha256:98063fe33d1fc3b90516865d503a9cbdf14e3ebac29b17ce1c7da2c4fff4ed41" [label="/bin/sh -c sed -i \"s/user = www-data/user = docker/\" /etc/php/7.3/fpm/pool.d/www.conf &&     sed -i \"s/group = www-data/group = docker/\" /etc/php/7.3/fpm/pool.d/www.conf" shape="box"];
  "sha256:194964f61bc44b2aebd19202b216332204a35725e74645de6093c38ef24e98a1" [label="/bin/sh -c phpenmod akeneo" shape="box"];
  "sha256:1b9fae8c3e0a401905a1789e3d3c0d4e9613a6706b04f3cd7efe17fa97a153cb" [label="/bin/sh -c phpdismod xdebug" shape="box"];
  "sha256:d7a22084e0ff2136606114a42aa3da4ac892a6555ccb6f5aee418088f4ae9069" [label="/bin/sh -c mkdir -p /run/php && sed -i \"s/listen = .*/listen = 9001/\" /etc/php/7.3/fpm/pool.d/www.conf" shape="box"];
  "sha256:3584b8f6ef95d360c0ee2c08748e53b4dd6702719618702a1fefeab05c6b321f" [label="sha256:3584b8f6ef95d360c0ee2c08748e53b4dd6702719618702a1fefeab05c6b321f" shape="plaintext"];
  "sha256:0ffdc68b129383c7fb09ec8745efe9eb9cdd629c202a4b9a09ee4157b1cb962d" -> "sha256:7ebab14a7c5cff65ee7ade5d465badd57649b162a1dd24925a7fe1a9414066bc" [label=""];
  "sha256:7ebab14a7c5cff65ee7ade5d465badd57649b162a1dd24925a7fe1a9414066bc" -> "sha256:98063fe33d1fc3b90516865d503a9cbdf14e3ebac29b17ce1c7da2c4fff4ed41" [label=""];
  "sha256:98063fe33d1fc3b90516865d503a9cbdf14e3ebac29b17ce1c7da2c4fff4ed41" -> "sha256:194964f61bc44b2aebd19202b216332204a35725e74645de6093c38ef24e98a1" [label=""];
  "sha256:194964f61bc44b2aebd19202b216332204a35725e74645de6093c38ef24e98a1" -> "sha256:1b9fae8c3e0a401905a1789e3d3c0d4e9613a6706b04f3cd7efe17fa97a153cb" [label=""];
  "sha256:1b9fae8c3e0a401905a1789e3d3c0d4e9613a6706b04f3cd7efe17fa97a153cb" -> "sha256:d7a22084e0ff2136606114a42aa3da4ac892a6555ccb6f5aee418088f4ae9069" [label=""];
  "sha256:d7a22084e0ff2136606114a42aa3da4ac892a6555ccb6f5aee418088f4ae9069" -> "sha256:3584b8f6ef95d360c0ee2c08748e53b4dd6702719618702a1fefeab05c6b321f" [label=""];
}

