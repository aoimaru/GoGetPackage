[app/sources/414896755.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:06c0aa3c5186f202a0470cdb4f4c185472f6bbffd576b2633f7c5c9f5d66b643" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:ac7348b71230507d64da3b32f68db9f0a76112bf1b6f4ce435c92970bef19532" [label="/bin/sh -c apt-get install  mysql-client -y" shape="box"];
  "sha256:104956c75ccc616d9c2094ef4ebf0c883a67f598ce3927244059323035998f35" [label="local://context" shape="ellipse"];
  "sha256:fb37ed102dfb8ea217b51fc259fecec4cff15aa735512fb8828c45c43b446369" [label="copy{src=/hctf_flask, dest=/webapps}" shape="note"];
  "sha256:02ff288005ceb57b81b9b5751909433c89c2a4312c8c9209dfb40a3fd366040c" [label="mkdir{path=/webapps}" shape="note"];
  "sha256:0a0e4fbc8587a2ea33fa744b3c2f96da13cb0fb0e61863cea6126183d1fb5e8d" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:6386b7485562b60968648fe292afcdec7cb76a259da516e431bfedc6a7a1ef4f" [label="sha256:6386b7485562b60968648fe292afcdec7cb76a259da516e431bfedc6a7a1ef4f" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:06c0aa3c5186f202a0470cdb4f4c185472f6bbffd576b2633f7c5c9f5d66b643" [label=""];
  "sha256:06c0aa3c5186f202a0470cdb4f4c185472f6bbffd576b2633f7c5c9f5d66b643" -> "sha256:ac7348b71230507d64da3b32f68db9f0a76112bf1b6f4ce435c92970bef19532" [label=""];
  "sha256:ac7348b71230507d64da3b32f68db9f0a76112bf1b6f4ce435c92970bef19532" -> "sha256:fb37ed102dfb8ea217b51fc259fecec4cff15aa735512fb8828c45c43b446369" [label=""];
  "sha256:104956c75ccc616d9c2094ef4ebf0c883a67f598ce3927244059323035998f35" -> "sha256:fb37ed102dfb8ea217b51fc259fecec4cff15aa735512fb8828c45c43b446369" [label=""];
  "sha256:fb37ed102dfb8ea217b51fc259fecec4cff15aa735512fb8828c45c43b446369" -> "sha256:02ff288005ceb57b81b9b5751909433c89c2a4312c8c9209dfb40a3fd366040c" [label=""];
  "sha256:02ff288005ceb57b81b9b5751909433c89c2a4312c8c9209dfb40a3fd366040c" -> "sha256:0a0e4fbc8587a2ea33fa744b3c2f96da13cb0fb0e61863cea6126183d1fb5e8d" [label=""];
  "sha256:0a0e4fbc8587a2ea33fa744b3c2f96da13cb0fb0e61863cea6126183d1fb5e8d" -> "sha256:6386b7485562b60968648fe292afcdec7cb76a259da516e431bfedc6a7a1ef4f" [label=""];
}

