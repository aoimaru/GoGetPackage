[app/sources/337307451.Dockerfile]
digraph {
  "sha256:883af57fd62645a20d92c88fb16888d7d65ea7ae2194361aed61cde75fd5a223" [label="docker-image://docker.io/djpetti/docker-keras:latest" shape="ellipse"];
  "sha256:e0d033d4a821222e5884516f338ae40161e88409b1b6832fce796328f59b1665" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:da3950185dc348f7f7db701ea7f51b8cfe061b03fc25c4d5a486be83dd2e0e73" [label="/bin/sh -c apt-get install -y python-liblinear python-tk" shape="box"];
  "sha256:e1283b396436d50740267ac34b665f05fb4984145a235bc5e33be80646920082" [label="/bin/sh -c pip install opencv-contrib-python==3.4.2.17" shape="box"];
  "sha256:6c8e1f7fe0871a6b99b01f443d39ca41fbe107e25d641f14e7ed01f267e03ca5" [label="/bin/sh -c git clone https://github.com/djpetti/rhodopsin.git" shape="box"];
  "sha256:7fab0b557ee8cf6ac0a8c96b9aeedc593b3bbb2a987f53300a59d9dffb806882" [label="/bin/sh -c cd rhodopsin && python setup.py install" shape="box"];
  "sha256:63ad0bbd535d067ac7342a7e10b8262d7a900c81353cbb01757271121359bc48" [label="sha256:63ad0bbd535d067ac7342a7e10b8262d7a900c81353cbb01757271121359bc48" shape="plaintext"];
  "sha256:883af57fd62645a20d92c88fb16888d7d65ea7ae2194361aed61cde75fd5a223" -> "sha256:e0d033d4a821222e5884516f338ae40161e88409b1b6832fce796328f59b1665" [label=""];
  "sha256:e0d033d4a821222e5884516f338ae40161e88409b1b6832fce796328f59b1665" -> "sha256:da3950185dc348f7f7db701ea7f51b8cfe061b03fc25c4d5a486be83dd2e0e73" [label=""];
  "sha256:da3950185dc348f7f7db701ea7f51b8cfe061b03fc25c4d5a486be83dd2e0e73" -> "sha256:e1283b396436d50740267ac34b665f05fb4984145a235bc5e33be80646920082" [label=""];
  "sha256:e1283b396436d50740267ac34b665f05fb4984145a235bc5e33be80646920082" -> "sha256:6c8e1f7fe0871a6b99b01f443d39ca41fbe107e25d641f14e7ed01f267e03ca5" [label=""];
  "sha256:6c8e1f7fe0871a6b99b01f443d39ca41fbe107e25d641f14e7ed01f267e03ca5" -> "sha256:7fab0b557ee8cf6ac0a8c96b9aeedc593b3bbb2a987f53300a59d9dffb806882" [label=""];
  "sha256:7fab0b557ee8cf6ac0a8c96b9aeedc593b3bbb2a987f53300a59d9dffb806882" -> "sha256:63ad0bbd535d067ac7342a7e10b8262d7a900c81353cbb01757271121359bc48" [label=""];
}

