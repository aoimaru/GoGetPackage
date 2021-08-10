[app/sources/329408949.Dockerfile]
digraph {
  "sha256:780434003abf437346b90da25a2d8c9de669b674b3a72537b94bf78a47588ce8" [label="docker-image://docker.io/openresty/openresty:trusty" shape="ellipse"];
  "sha256:b0afff32f2fa3f35b032864c9ea49ded913f9e200c4058b16b20ac72d3c6103f" [label="local://context" shape="ellipse"];
  "sha256:61d79d30bbb679a6294c2045ba66e714b42bd1dea7b29dac3bee9cfcd2c63448" [label="copy{src=/nginx.conf, dest=/usr/local/openresty/nginx/conf/nginx.conf}" shape="note"];
  "sha256:b8437c1a346242522ec4752c3077f3ed4f9cb86137ee51ad50f08e84bbf23d80" [label="copy{src=/static, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:3794817b7da16bf7ef989489645e62364a8e283b2ec626ec6f4c5cf4253592d9" [label="sha256:3794817b7da16bf7ef989489645e62364a8e283b2ec626ec6f4c5cf4253592d9" shape="plaintext"];
  "sha256:780434003abf437346b90da25a2d8c9de669b674b3a72537b94bf78a47588ce8" -> "sha256:61d79d30bbb679a6294c2045ba66e714b42bd1dea7b29dac3bee9cfcd2c63448" [label=""];
  "sha256:b0afff32f2fa3f35b032864c9ea49ded913f9e200c4058b16b20ac72d3c6103f" -> "sha256:61d79d30bbb679a6294c2045ba66e714b42bd1dea7b29dac3bee9cfcd2c63448" [label=""];
  "sha256:61d79d30bbb679a6294c2045ba66e714b42bd1dea7b29dac3bee9cfcd2c63448" -> "sha256:b8437c1a346242522ec4752c3077f3ed4f9cb86137ee51ad50f08e84bbf23d80" [label=""];
  "sha256:b0afff32f2fa3f35b032864c9ea49ded913f9e200c4058b16b20ac72d3c6103f" -> "sha256:b8437c1a346242522ec4752c3077f3ed4f9cb86137ee51ad50f08e84bbf23d80" [label=""];
  "sha256:b8437c1a346242522ec4752c3077f3ed4f9cb86137ee51ad50f08e84bbf23d80" -> "sha256:3794817b7da16bf7ef989489645e62364a8e283b2ec626ec6f4c5cf4253592d9" [label=""];
}

