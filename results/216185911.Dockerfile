[app/sources/216185911.Dockerfile]
digraph {
  "sha256:84d6c2a25cc301099f997b4e4d1dbf41f6d3a47c4a72115a01c4dbba3e4bd09b" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label="/bin/sh -c apt-get update && apt-get install nginx-full -y" shape="box"];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label="/bin/sh -c rm -rf /etc/nginx" shape="box"];
  "sha256:b8eaacb04f4bce386cba3c059ab96c166cc2b26a4390ed335700b98cf61ecb76" [label="copy{src=/etc, dest=/etc/nginx}" shape="note"];
  "sha256:6726295217d4f5ba0839e970aecb60b5bb85122f4bedcc17bc0a068b6f1a1eb3" [label="/bin/sh -c chown -R root:root /etc/nginx" shape="box"];
  "sha256:bbc01fabb06508e38f3953a4e5f4a56ccc260b924e4a338cd8795130838049ec" [label="/bin/sh -c /usr/sbin/nginx -qt" shape="box"];
  "sha256:967df19be6986f93d287209055a5ea7737d76db52f1b18007160ee3cf064633b" [label="/bin/sh -c mkdir /www" shape="box"];
  "sha256:75f6f0f00de6566c72a027cc8c1c815a0937b55e0f4957a516a498784dec6136" [label="sha256:75f6f0f00de6566c72a027cc8c1c815a0937b55e0f4957a516a498784dec6136" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" [label=""];
  "sha256:f9314893dcd9327b8ee0ffeb3f880ff41ae7458dddbc338b5be1acb5a866f827" -> "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" [label=""];
  "sha256:a937d4fe995dafb5f4837cf1249076cb6ddd560e7c4dbd64731afa39a4236c21" -> "sha256:b8eaacb04f4bce386cba3c059ab96c166cc2b26a4390ed335700b98cf61ecb76" [label=""];
  "sha256:84d6c2a25cc301099f997b4e4d1dbf41f6d3a47c4a72115a01c4dbba3e4bd09b" -> "sha256:b8eaacb04f4bce386cba3c059ab96c166cc2b26a4390ed335700b98cf61ecb76" [label=""];
  "sha256:b8eaacb04f4bce386cba3c059ab96c166cc2b26a4390ed335700b98cf61ecb76" -> "sha256:6726295217d4f5ba0839e970aecb60b5bb85122f4bedcc17bc0a068b6f1a1eb3" [label=""];
  "sha256:6726295217d4f5ba0839e970aecb60b5bb85122f4bedcc17bc0a068b6f1a1eb3" -> "sha256:bbc01fabb06508e38f3953a4e5f4a56ccc260b924e4a338cd8795130838049ec" [label=""];
  "sha256:bbc01fabb06508e38f3953a4e5f4a56ccc260b924e4a338cd8795130838049ec" -> "sha256:967df19be6986f93d287209055a5ea7737d76db52f1b18007160ee3cf064633b" [label=""];
  "sha256:967df19be6986f93d287209055a5ea7737d76db52f1b18007160ee3cf064633b" -> "sha256:75f6f0f00de6566c72a027cc8c1c815a0937b55e0f4957a516a498784dec6136" [label=""];
}

