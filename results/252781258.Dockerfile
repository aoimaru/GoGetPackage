[app/sources/252781258.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:2939e495332d02a7ba60760af4d0ec68ebc21c69294be74cb85272cad57f46b8" [label="local://context" shape="ellipse"];
  "sha256:31e03d56ac13a2fb0566d4aa318c5be3a7c94ca8dbb374677d2e77dd7204a993" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:cda6890d5cc0f936e4980dc39ad59b2dd67e57214f5e799b9475d06eb779c11b" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:e64f12d1bb26141864d6e5fa0558ff4657732003c19fa9fbe90859db8703e63b" [label="/bin/sh -c pip --no-cache-dir install turtle --trusted-host mirrors.aliyun.com" shape="box"];
  "sha256:1e5c321e953653ea87408204dfb5ac68d75509cea7ce27912a659d4fbe944512" [label="copy{src=/start.app, dest=/start.app}" shape="note"];
  "sha256:3a4b0d2b7df95b7281c4706c78857dfd63b3f380c2f279970610c8071d68d85c" [label="/bin/sh -c chmod 755 /start.app" shape="box"];
  "sha256:017f1a2fe0d160c7bec2647de05863ad4105401b7529824db59fb9a9106878e2" [label="mkdir{path=/app}" shape="note"];
  "sha256:4a151aa2c40783b9c0e0db536a50b8c635815ec7acdb7a4ab633e98cf743a580" [label="sha256:4a151aa2c40783b9c0e0db536a50b8c635815ec7acdb7a4ab633e98cf743a580" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:31e03d56ac13a2fb0566d4aa318c5be3a7c94ca8dbb374677d2e77dd7204a993" [label=""];
  "sha256:2939e495332d02a7ba60760af4d0ec68ebc21c69294be74cb85272cad57f46b8" -> "sha256:31e03d56ac13a2fb0566d4aa318c5be3a7c94ca8dbb374677d2e77dd7204a993" [label=""];
  "sha256:31e03d56ac13a2fb0566d4aa318c5be3a7c94ca8dbb374677d2e77dd7204a993" -> "sha256:cda6890d5cc0f936e4980dc39ad59b2dd67e57214f5e799b9475d06eb779c11b" [label=""];
  "sha256:cda6890d5cc0f936e4980dc39ad59b2dd67e57214f5e799b9475d06eb779c11b" -> "sha256:e64f12d1bb26141864d6e5fa0558ff4657732003c19fa9fbe90859db8703e63b" [label=""];
  "sha256:e64f12d1bb26141864d6e5fa0558ff4657732003c19fa9fbe90859db8703e63b" -> "sha256:1e5c321e953653ea87408204dfb5ac68d75509cea7ce27912a659d4fbe944512" [label=""];
  "sha256:2939e495332d02a7ba60760af4d0ec68ebc21c69294be74cb85272cad57f46b8" -> "sha256:1e5c321e953653ea87408204dfb5ac68d75509cea7ce27912a659d4fbe944512" [label=""];
  "sha256:1e5c321e953653ea87408204dfb5ac68d75509cea7ce27912a659d4fbe944512" -> "sha256:3a4b0d2b7df95b7281c4706c78857dfd63b3f380c2f279970610c8071d68d85c" [label=""];
  "sha256:3a4b0d2b7df95b7281c4706c78857dfd63b3f380c2f279970610c8071d68d85c" -> "sha256:017f1a2fe0d160c7bec2647de05863ad4105401b7529824db59fb9a9106878e2" [label=""];
  "sha256:017f1a2fe0d160c7bec2647de05863ad4105401b7529824db59fb9a9106878e2" -> "sha256:4a151aa2c40783b9c0e0db536a50b8c635815ec7acdb7a4ab633e98cf743a580" [label=""];
}

