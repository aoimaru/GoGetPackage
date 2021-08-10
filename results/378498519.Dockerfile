[app/sources/378498519.Dockerfile]
digraph {
  "sha256:f93c6d5d7eda6fbd9410ed6c6bec3839a072977d5c200ceeba0ef1d88912515b" [label="docker-image://quay.io/3scale/openresty:1.7.4.1@sha256:365789808bb8ca9f1d50feb35ddd8901319203fbb553ddc217a3ec45e225c494" shape="ellipse"];
  "sha256:e39024b2ce4783bd1f6d63f4bde6721961a0ff4a41b968ff9030c7bc6e62cdd6" [label="/bin/sh -c luarocks install luajson  && luarocks install luaexpat" shape="box"];
  "sha256:3f56398c58ce9d9733ed71af6babc4deac4d6fe0bf2b2146df113f54b0d646d3" [label="/bin/sh -c ln -sf /var/www/brainslug/config/supervisor.conf /etc/supervisor/conf.d/openresty.conf  && ln -sf /var/www/brainslug/config/logrotate.conf /etc/logrotate.d/nginx  && rm /etc/supervisor/conf.d/cron.conf" shape="box"];
  "sha256:8a8bcac3438e99e23e710c8f6d62a23f061019e037b4cbd4677ed3d7bc19aa16" [label="mkdir{path=/var/www/brainslug}" shape="note"];
  "sha256:0032d6e8d363c09bfaf21a67b57f4c601d11ed64522a65c4c5cdcc72d5e85c45" [label="local://context" shape="ellipse"];
  "sha256:b43143d5f40ec7266339d254ba0811e73f86821822f57daa44be117fdcad46f4" [label="copy{src=/, dest=/var/www/brainslug}" shape="note"];
  "sha256:56a88e895457f3bb9ad52d556a7bb71f03fc8c4ee2bb15c874999ecc871ae0c4" [label="sha256:56a88e895457f3bb9ad52d556a7bb71f03fc8c4ee2bb15c874999ecc871ae0c4" shape="plaintext"];
  "sha256:f93c6d5d7eda6fbd9410ed6c6bec3839a072977d5c200ceeba0ef1d88912515b" -> "sha256:e39024b2ce4783bd1f6d63f4bde6721961a0ff4a41b968ff9030c7bc6e62cdd6" [label=""];
  "sha256:e39024b2ce4783bd1f6d63f4bde6721961a0ff4a41b968ff9030c7bc6e62cdd6" -> "sha256:3f56398c58ce9d9733ed71af6babc4deac4d6fe0bf2b2146df113f54b0d646d3" [label=""];
  "sha256:3f56398c58ce9d9733ed71af6babc4deac4d6fe0bf2b2146df113f54b0d646d3" -> "sha256:8a8bcac3438e99e23e710c8f6d62a23f061019e037b4cbd4677ed3d7bc19aa16" [label=""];
  "sha256:8a8bcac3438e99e23e710c8f6d62a23f061019e037b4cbd4677ed3d7bc19aa16" -> "sha256:b43143d5f40ec7266339d254ba0811e73f86821822f57daa44be117fdcad46f4" [label=""];
  "sha256:0032d6e8d363c09bfaf21a67b57f4c601d11ed64522a65c4c5cdcc72d5e85c45" -> "sha256:b43143d5f40ec7266339d254ba0811e73f86821822f57daa44be117fdcad46f4" [label=""];
  "sha256:b43143d5f40ec7266339d254ba0811e73f86821822f57daa44be117fdcad46f4" -> "sha256:56a88e895457f3bb9ad52d556a7bb71f03fc8c4ee2bb15c874999ecc871ae0c4" [label=""];
}

