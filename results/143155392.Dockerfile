[app/sources/143155392.Dockerfile]
digraph {
  "sha256:f951e5e4644b1fa622e983f04c314ff80bbd9a68e1a805b90ea1cc71a1d86578" [label="local://context" shape="ellipse"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:e8e1911fd4734f6aad8d54e1ee1fb7bd661eb0daca5b080e8c35e889087cb5f7" [label="/bin/sh -c mkdir -p /usr/src/ytenx" shape="box"];
  "sha256:66af845dc8d9ecac59b275febd1f9f829dac70c87a999fab7d09677702f1a7f5" [label="mkdir{path=/usr/src/ytenx}" shape="note"];
  "sha256:c9b069a8601a7644b3a2140b47da4febbdbfe7f76436df3b2eb56c1d76e5fb81" [label="copy{src=/requirements.txt, dest=/usr/src/ytenx}" shape="note"];
  "sha256:8a218b2f89254f05e5098bdc8ef8cf09d04c77dc6e018dd9c0ce89ec6a3d6455" [label="/bin/sh -c pip install -v -r requirements.txt" shape="box"];
  "sha256:f9a33a6d9fbdb1dc7ad4e1ac8b2b625022170a897f35b003aab03fcae9f064d6" [label="copy{src=/, dest=/usr/src/ytenx}" shape="note"];
  "sha256:07aa1ed52223fd9ac8b2bd68cb652dcacad0ad4f5dbf1ad7fd193ec1294e759a" [label="sha256:07aa1ed52223fd9ac8b2bd68cb652dcacad0ad4f5dbf1ad7fd193ec1294e759a" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:e8e1911fd4734f6aad8d54e1ee1fb7bd661eb0daca5b080e8c35e889087cb5f7" [label=""];
  "sha256:e8e1911fd4734f6aad8d54e1ee1fb7bd661eb0daca5b080e8c35e889087cb5f7" -> "sha256:66af845dc8d9ecac59b275febd1f9f829dac70c87a999fab7d09677702f1a7f5" [label=""];
  "sha256:66af845dc8d9ecac59b275febd1f9f829dac70c87a999fab7d09677702f1a7f5" -> "sha256:c9b069a8601a7644b3a2140b47da4febbdbfe7f76436df3b2eb56c1d76e5fb81" [label=""];
  "sha256:f951e5e4644b1fa622e983f04c314ff80bbd9a68e1a805b90ea1cc71a1d86578" -> "sha256:c9b069a8601a7644b3a2140b47da4febbdbfe7f76436df3b2eb56c1d76e5fb81" [label=""];
  "sha256:c9b069a8601a7644b3a2140b47da4febbdbfe7f76436df3b2eb56c1d76e5fb81" -> "sha256:8a218b2f89254f05e5098bdc8ef8cf09d04c77dc6e018dd9c0ce89ec6a3d6455" [label=""];
  "sha256:8a218b2f89254f05e5098bdc8ef8cf09d04c77dc6e018dd9c0ce89ec6a3d6455" -> "sha256:f9a33a6d9fbdb1dc7ad4e1ac8b2b625022170a897f35b003aab03fcae9f064d6" [label=""];
  "sha256:f951e5e4644b1fa622e983f04c314ff80bbd9a68e1a805b90ea1cc71a1d86578" -> "sha256:f9a33a6d9fbdb1dc7ad4e1ac8b2b625022170a897f35b003aab03fcae9f064d6" [label=""];
  "sha256:f9a33a6d9fbdb1dc7ad4e1ac8b2b625022170a897f35b003aab03fcae9f064d6" -> "sha256:07aa1ed52223fd9ac8b2bd68cb652dcacad0ad4f5dbf1ad7fd193ec1294e759a" [label=""];
}

