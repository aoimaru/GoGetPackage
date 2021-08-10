[app/sources/317191553.Dockerfile]
digraph {
  "sha256:0de91cd018bc150acf892b29a797d3873c1746b4ca7a370fa2b9e66c8faf64b6" [label="local://context" shape="ellipse"];
  "sha256:966732f6538ae8cd12328262bb07d82662b354ded09e9ae20f41efa7c28ab1a8" [label="docker-image://registry.cn-hangzhou.aliyuncs.com/choerodon-tools/frontbase:0.7.0@sha256:80b86238be3e068d6406e4a806109b4b3f5765328889cc47e38a97da1461633d" shape="ellipse"];
  "sha256:fa52d6c43f359ca7d1154cb04aeb5d51407f6b240c58c79060639717803a2167" [label="/bin/sh -c echo \"Asia/shanghai\" > /etc/timezone;" shape="box"];
  "sha256:0dc2d5a08b5f321a0dc5cafa5267516ce44dac68776e5e7d504f191f47c35311" [label="copy{src=/devops/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:b4b8c36bf555c5279240eb1c70dcd3338619566bb50985e6731d5aaef2877a1c" [label="copy{src=/devops/devops-structure/devops-enterpoint.sh, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:e0e6fc08d7ebe6bb622123942aaccbecaa42f4c9899313799913dc01f866e367" [label="copy{src=/menu.yml, dest=/usr/share/nginx/html/menu.yml}" shape="note"];
  "sha256:e3e274192d96e2dfe3febd1542c0d806cbfe249a9fbcf6d47afc603196ba0b02" [label="copy{src=/dashboard.yml, dest=/usr/share/nginx/html/dashboard.yml}" shape="note"];
  "sha256:7c7751bc05c39462e06cce33b1e50f0a9acbe390181eba77875b1d7be5d4c95d" [label="copy{src=/devops/node_modules/choerodon-front-boot/structure/menu, dest=/usr/share/nginx/html/menu}" shape="note"];
  "sha256:41b49ac391e87656dcdf9359e624c16a1042c62595118f24ff17782e02cb0c87" [label="copy{src=/devops/node_modules/choerodon-front-boot/structure/dashboard, dest=/usr/share/nginx/html/dashboard}" shape="note"];
  "sha256:3accfa4b95ad45e9a7990ed7d57bfc1fdf68a0a31191ad72908af548b37a9edd" [label="/bin/sh -c chmod 777 /usr/share/nginx/html/devops-enterpoint.sh" shape="box"];
  "sha256:02c3566190d20cd46730e6c2f5a9c91c73abe66de9c517c59b458bf9c3a6b0f3" [label="sha256:02c3566190d20cd46730e6c2f5a9c91c73abe66de9c517c59b458bf9c3a6b0f3" shape="plaintext"];
  "sha256:966732f6538ae8cd12328262bb07d82662b354ded09e9ae20f41efa7c28ab1a8" -> "sha256:fa52d6c43f359ca7d1154cb04aeb5d51407f6b240c58c79060639717803a2167" [label=""];
  "sha256:fa52d6c43f359ca7d1154cb04aeb5d51407f6b240c58c79060639717803a2167" -> "sha256:0dc2d5a08b5f321a0dc5cafa5267516ce44dac68776e5e7d504f191f47c35311" [label=""];
  "sha256:0de91cd018bc150acf892b29a797d3873c1746b4ca7a370fa2b9e66c8faf64b6" -> "sha256:0dc2d5a08b5f321a0dc5cafa5267516ce44dac68776e5e7d504f191f47c35311" [label=""];
  "sha256:0dc2d5a08b5f321a0dc5cafa5267516ce44dac68776e5e7d504f191f47c35311" -> "sha256:b4b8c36bf555c5279240eb1c70dcd3338619566bb50985e6731d5aaef2877a1c" [label=""];
  "sha256:0de91cd018bc150acf892b29a797d3873c1746b4ca7a370fa2b9e66c8faf64b6" -> "sha256:b4b8c36bf555c5279240eb1c70dcd3338619566bb50985e6731d5aaef2877a1c" [label=""];
  "sha256:b4b8c36bf555c5279240eb1c70dcd3338619566bb50985e6731d5aaef2877a1c" -> "sha256:e0e6fc08d7ebe6bb622123942aaccbecaa42f4c9899313799913dc01f866e367" [label=""];
  "sha256:0de91cd018bc150acf892b29a797d3873c1746b4ca7a370fa2b9e66c8faf64b6" -> "sha256:e0e6fc08d7ebe6bb622123942aaccbecaa42f4c9899313799913dc01f866e367" [label=""];
  "sha256:e0e6fc08d7ebe6bb622123942aaccbecaa42f4c9899313799913dc01f866e367" -> "sha256:e3e274192d96e2dfe3febd1542c0d806cbfe249a9fbcf6d47afc603196ba0b02" [label=""];
  "sha256:0de91cd018bc150acf892b29a797d3873c1746b4ca7a370fa2b9e66c8faf64b6" -> "sha256:e3e274192d96e2dfe3febd1542c0d806cbfe249a9fbcf6d47afc603196ba0b02" [label=""];
  "sha256:e3e274192d96e2dfe3febd1542c0d806cbfe249a9fbcf6d47afc603196ba0b02" -> "sha256:7c7751bc05c39462e06cce33b1e50f0a9acbe390181eba77875b1d7be5d4c95d" [label=""];
  "sha256:0de91cd018bc150acf892b29a797d3873c1746b4ca7a370fa2b9e66c8faf64b6" -> "sha256:7c7751bc05c39462e06cce33b1e50f0a9acbe390181eba77875b1d7be5d4c95d" [label=""];
  "sha256:7c7751bc05c39462e06cce33b1e50f0a9acbe390181eba77875b1d7be5d4c95d" -> "sha256:41b49ac391e87656dcdf9359e624c16a1042c62595118f24ff17782e02cb0c87" [label=""];
  "sha256:0de91cd018bc150acf892b29a797d3873c1746b4ca7a370fa2b9e66c8faf64b6" -> "sha256:41b49ac391e87656dcdf9359e624c16a1042c62595118f24ff17782e02cb0c87" [label=""];
  "sha256:41b49ac391e87656dcdf9359e624c16a1042c62595118f24ff17782e02cb0c87" -> "sha256:3accfa4b95ad45e9a7990ed7d57bfc1fdf68a0a31191ad72908af548b37a9edd" [label=""];
  "sha256:3accfa4b95ad45e9a7990ed7d57bfc1fdf68a0a31191ad72908af548b37a9edd" -> "sha256:02c3566190d20cd46730e6c2f5a9c91c73abe66de9c517c59b458bf9c3a6b0f3" [label=""];
}

