[app/sources/333359233.Dockerfile]
digraph {
  "sha256:7bb87122bec8b0cb8b251cd5503ccca1cd47cd9e8d969b0be9c32eab24bc46d2" [label="docker-image://docker.io/library/ruby:2.6.3" shape="ellipse"];
  "sha256:877aa3e1ba2e40baf13e1a34dac6fa7dda65e3711f1d7f8fa775d9d9840a2320" [label="/bin/sh -c apt-get update && apt-get install -y curl wget gnupg git build-essential patch ruby-dev zlib1g-dev liblzma-dev libpq-dev" shape="box"];
  "sha256:d40076634e8d612669dfdc34987581bc041d9a730c2ccc1cf0d2889227f3065a" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash &&     curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&     echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list &&     apt-get update && apt-get install -y yarn &&     apt-get update &&     apt-get install -y curl graphviz nodejs &&     bundle config --global frozen 1 &&     mkdir -p /app" shape="box"];
  "sha256:99cd1fad045601fa3b3b39fbde9cce3550291d45debe028a51a08c9178b72f2c" [label="mkdir{path=/app}" shape="note"];
  "sha256:9e7374975d08c3f178f57436a0833d4c7f50f9ccbb753ee6953b74b11653a8b3" [label="local://context" shape="ellipse"];
  "sha256:8a322c239568740645043572127c3e2c5e9bfe666d1844b14964ff3128b3bb49" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:e7d03025d563823061e8d1725011d8bb790fcf59587b57dd5b5f287ccaa11828" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:3adca52ee70be2d5f62ac945390426649a90348f409d9627071713bd97b957cc" [label="/bin/sh -c bundle install &&     yarn install" shape="box"];
  "sha256:01a7944622670e9bde6ccd3b3123040714d2623a2c17712357d885117d8c2744" [label="chmod +x docker-entrypoint.sh" shape="box"];
  "sha256:1bc1a319b3d3891f988cef4505378747e111ea7a15ede41a278e3ef892680736" [label="sha256:1bc1a319b3d3891f988cef4505378747e111ea7a15ede41a278e3ef892680736" shape="plaintext"];
  "sha256:7bb87122bec8b0cb8b251cd5503ccca1cd47cd9e8d969b0be9c32eab24bc46d2" -> "sha256:877aa3e1ba2e40baf13e1a34dac6fa7dda65e3711f1d7f8fa775d9d9840a2320" [label=""];
  "sha256:877aa3e1ba2e40baf13e1a34dac6fa7dda65e3711f1d7f8fa775d9d9840a2320" -> "sha256:d40076634e8d612669dfdc34987581bc041d9a730c2ccc1cf0d2889227f3065a" [label=""];
  "sha256:d40076634e8d612669dfdc34987581bc041d9a730c2ccc1cf0d2889227f3065a" -> "sha256:99cd1fad045601fa3b3b39fbde9cce3550291d45debe028a51a08c9178b72f2c" [label=""];
  "sha256:99cd1fad045601fa3b3b39fbde9cce3550291d45debe028a51a08c9178b72f2c" -> "sha256:8a322c239568740645043572127c3e2c5e9bfe666d1844b14964ff3128b3bb49" [label=""];
  "sha256:9e7374975d08c3f178f57436a0833d4c7f50f9ccbb753ee6953b74b11653a8b3" -> "sha256:8a322c239568740645043572127c3e2c5e9bfe666d1844b14964ff3128b3bb49" [label=""];
  "sha256:8a322c239568740645043572127c3e2c5e9bfe666d1844b14964ff3128b3bb49" -> "sha256:e7d03025d563823061e8d1725011d8bb790fcf59587b57dd5b5f287ccaa11828" [label=""];
  "sha256:9e7374975d08c3f178f57436a0833d4c7f50f9ccbb753ee6953b74b11653a8b3" -> "sha256:e7d03025d563823061e8d1725011d8bb790fcf59587b57dd5b5f287ccaa11828" [label=""];
  "sha256:e7d03025d563823061e8d1725011d8bb790fcf59587b57dd5b5f287ccaa11828" -> "sha256:3adca52ee70be2d5f62ac945390426649a90348f409d9627071713bd97b957cc" [label=""];
  "sha256:3adca52ee70be2d5f62ac945390426649a90348f409d9627071713bd97b957cc" -> "sha256:01a7944622670e9bde6ccd3b3123040714d2623a2c17712357d885117d8c2744" [label=""];
  "sha256:01a7944622670e9bde6ccd3b3123040714d2623a2c17712357d885117d8c2744" -> "sha256:1bc1a319b3d3891f988cef4505378747e111ea7a15ede41a278e3ef892680736" [label=""];
}

