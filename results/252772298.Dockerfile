[app/sources/252772298.Dockerfile]
digraph {
  "sha256:b07852ba5ae5d2ebbd957f65a3c5f7644ead4c4fa6c78ea33aa957544164baa8" [label="docker-image://docker.io/avatao/ubuntu:14.04" shape="ellipse"];
  "sha256:2ee99dd3770356656eb0cea0e267fa9031ad8ba7363e00bce6860ad15909960a" [label="/bin/sh -c sudo apt-get -qqy update && sudo apt-get -qqy install libglib2.0-dev" shape="box"];
  "sha256:d4ba1cd3b55fa48a93ad42d565ae6b330249ad3a58e5567e26c8a628ce813083" [label="local://context" shape="ellipse"];
  "sha256:5ee02ac4e47ee485f224f484a4b3d01cf57865ca83613e75bebb89f3152acff5" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:e6e46c53aae04497f9d9f87ae70bd6724f808d39a3a27931400c2e1d7ad628b3" [label="/bin/sh -c cd /home/user/unicorn/unicorn-0.9/ && ./make.sh gcc && sudo ./make.sh install && cd /home/user/unicorn/unicorn-0.9/bindings/python/ && sudo make install && cd /home/user/capstone/capstone-3.0.4/ && ./make.sh gcc && sudo ./make.sh install && cd /home/user/capstone/capstone-3.0.4/bindings/python/ && sudo make install && export LD_LIBRARY_PATH=/home/user/unicorn/unicorn-0.9/:$LD_LIBRARY_PATH && chown -R user:user /home/user" shape="box"];
  "sha256:53f2b028e38752282edec11b66633c9102030885ceb857d16c0a60ef3a2c6eee" [label="sha256:53f2b028e38752282edec11b66633c9102030885ceb857d16c0a60ef3a2c6eee" shape="plaintext"];
  "sha256:b07852ba5ae5d2ebbd957f65a3c5f7644ead4c4fa6c78ea33aa957544164baa8" -> "sha256:2ee99dd3770356656eb0cea0e267fa9031ad8ba7363e00bce6860ad15909960a" [label=""];
  "sha256:2ee99dd3770356656eb0cea0e267fa9031ad8ba7363e00bce6860ad15909960a" -> "sha256:5ee02ac4e47ee485f224f484a4b3d01cf57865ca83613e75bebb89f3152acff5" [label=""];
  "sha256:d4ba1cd3b55fa48a93ad42d565ae6b330249ad3a58e5567e26c8a628ce813083" -> "sha256:5ee02ac4e47ee485f224f484a4b3d01cf57865ca83613e75bebb89f3152acff5" [label=""];
  "sha256:5ee02ac4e47ee485f224f484a4b3d01cf57865ca83613e75bebb89f3152acff5" -> "sha256:e6e46c53aae04497f9d9f87ae70bd6724f808d39a3a27931400c2e1d7ad628b3" [label=""];
  "sha256:e6e46c53aae04497f9d9f87ae70bd6724f808d39a3a27931400c2e1d7ad628b3" -> "sha256:53f2b028e38752282edec11b66633c9102030885ceb857d16c0a60ef3a2c6eee" [label=""];
}

