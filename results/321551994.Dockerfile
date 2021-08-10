[app/sources/321551994.Dockerfile]
digraph {
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel" shape="ellipse"];
  "sha256:6c69587569d6704eb69d97a6d98a61065e84672e3c0986bcf5549d0aac08130c" [label="mkdir{path=/root}" shape="note"];
  "sha256:e014b195af5fe6f443a498094c23c33545513b13ad1e0af223b1d73efab3a72c" [label="/bin/sh -c apt-get update &&   apt-get install vim                   python-pip                   python-dev                   python-opencv                   python-tk                   libjpeg-dev                   libfreetype6                   libfreetype6-dev                   zlib1g-dev                   cmake                   wget                   cython                   git                   -y" shape="box"];
  "sha256:fd55e6bcf491ff9d28729eebefde2a78d25d0b1562ddf48bd1b02d29ec1da6cc" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:61a554781722f64724b39c169e1e29b3c6ba4ac22688ed76f579f2b1ecd78bce" [label="/bin/sh -c pip install image                 scipy                 matplotlib                 PyYAML                 numpy                 easydict                 tensorflow-gpu" shape="box"];
  "sha256:cb38af177df570a36389fffe170abb7efa96e940c2d2a295834f19f9cc8c6fce" [label="/bin/sh -c pip install -U numpy" shape="box"];
  "sha256:e5ca5943e58d0c6d93f05469a4c4bf1e5f10a03f7f861925aaf822a68b0b4ec3" [label="/bin/sh -c git clone https://github.com/pdollar/coco.git" shape="box"];
  "sha256:f42637a54161ba662ffd6f13614bef7a3b3f4d622701b317ff8e9dee7f71a0a1" [label="mkdir{path=/root/coco/PythonAPI}" shape="note"];
  "sha256:633565d4474fdcce7c2393d508d83b88e99df2d64d364b17fc219cd1bb9fa647" [label="/bin/sh -c make" shape="box"];
  "sha256:e6eeb836f026e95ad7ad8b41e03c6adab8fc4add9f997ad712dab962c28b6301" [label="mkdir{path=/root}" shape="note"];
  "sha256:771a19c7f4eb85db9a6751866a81143da57863d5338d71fc2bbc9104a036fdb2" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:703d9b5377fc6822facbde5ee5587c5d58b8b0a1f107b7b1a10c9b61b8639fea" [label="sha256:703d9b5377fc6822facbde5ee5587c5d58b8b0a1f107b7b1a10c9b61b8639fea" shape="plaintext"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" -> "sha256:6c69587569d6704eb69d97a6d98a61065e84672e3c0986bcf5549d0aac08130c" [label=""];
  "sha256:6c69587569d6704eb69d97a6d98a61065e84672e3c0986bcf5549d0aac08130c" -> "sha256:e014b195af5fe6f443a498094c23c33545513b13ad1e0af223b1d73efab3a72c" [label=""];
  "sha256:e014b195af5fe6f443a498094c23c33545513b13ad1e0af223b1d73efab3a72c" -> "sha256:fd55e6bcf491ff9d28729eebefde2a78d25d0b1562ddf48bd1b02d29ec1da6cc" [label=""];
  "sha256:fd55e6bcf491ff9d28729eebefde2a78d25d0b1562ddf48bd1b02d29ec1da6cc" -> "sha256:61a554781722f64724b39c169e1e29b3c6ba4ac22688ed76f579f2b1ecd78bce" [label=""];
  "sha256:61a554781722f64724b39c169e1e29b3c6ba4ac22688ed76f579f2b1ecd78bce" -> "sha256:cb38af177df570a36389fffe170abb7efa96e940c2d2a295834f19f9cc8c6fce" [label=""];
  "sha256:cb38af177df570a36389fffe170abb7efa96e940c2d2a295834f19f9cc8c6fce" -> "sha256:e5ca5943e58d0c6d93f05469a4c4bf1e5f10a03f7f861925aaf822a68b0b4ec3" [label=""];
  "sha256:e5ca5943e58d0c6d93f05469a4c4bf1e5f10a03f7f861925aaf822a68b0b4ec3" -> "sha256:f42637a54161ba662ffd6f13614bef7a3b3f4d622701b317ff8e9dee7f71a0a1" [label=""];
  "sha256:f42637a54161ba662ffd6f13614bef7a3b3f4d622701b317ff8e9dee7f71a0a1" -> "sha256:633565d4474fdcce7c2393d508d83b88e99df2d64d364b17fc219cd1bb9fa647" [label=""];
  "sha256:633565d4474fdcce7c2393d508d83b88e99df2d64d364b17fc219cd1bb9fa647" -> "sha256:e6eeb836f026e95ad7ad8b41e03c6adab8fc4add9f997ad712dab962c28b6301" [label=""];
  "sha256:e6eeb836f026e95ad7ad8b41e03c6adab8fc4add9f997ad712dab962c28b6301" -> "sha256:771a19c7f4eb85db9a6751866a81143da57863d5338d71fc2bbc9104a036fdb2" [label=""];
  "sha256:771a19c7f4eb85db9a6751866a81143da57863d5338d71fc2bbc9104a036fdb2" -> "sha256:703d9b5377fc6822facbde5ee5587c5d58b8b0a1f107b7b1a10c9b61b8639fea" [label=""];
}

