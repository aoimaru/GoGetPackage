[app/sources/252767417.Dockerfile]
digraph {
  "sha256:fe4e4fb1d5c0b0c5e1da137c94335b075b295066d29a03b8b3a69529a873f27b" [label="docker-image://docker.io/library/jenkins:latest" shape="ellipse"];
  "sha256:fb7a9db8ad84de4c8cea406eb32cebdbbf76199b27fc78f3f6c7c71ca6b93332" [label="/bin/sh -c apt-get update && apt-get install -y build-essential gcc git" shape="box"];
  "sha256:e886af2069c7bc40b53914152136bfe8c9f4b4e2dbd96bf691749e611f634a43" [label="/bin/sh -c wget http://nodejs.org/dist/v0.12.7/node-v0.12.7.tar.gz && tar -zxf node-v0.12.7.tar.gz && cd node-v0.12.7 && ./configure && make && make install" shape="box"];
  "sha256:75e660ce476f4b40483f231493b3f0eec3ce4a199ef6bdbad769a2787be586a5" [label="/bin/sh -c cd / && rm node-v0.12.7.tar.gz && rm -drf node-v0.12.7" shape="box"];
  "sha256:4e99b7863ab75fd81ea42232e5820f9057c6ecb7d454048ce43600c15d02a264" [label="local://context" shape="ellipse"];
  "sha256:0776f3cccf21fd175236898b0ef3c6145dadc5d344f233577c21b2dcd3a5309f" [label="copy{src=/plugins.txt, dest=/usr/share/jenkins/plugins.txt}" shape="note"];
  "sha256:a2f47995673537b567ad33315dd59d20598413d53a59bffe1819dc5d0c7ebe23" [label="/bin/sh -c /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt" shape="box"];
  "sha256:b97e214ea42a1eda5c1988ea3fa9179647ab484b8d7fa35c6a2c336866f07a17" [label="sha256:b97e214ea42a1eda5c1988ea3fa9179647ab484b8d7fa35c6a2c336866f07a17" shape="plaintext"];
  "sha256:fe4e4fb1d5c0b0c5e1da137c94335b075b295066d29a03b8b3a69529a873f27b" -> "sha256:fb7a9db8ad84de4c8cea406eb32cebdbbf76199b27fc78f3f6c7c71ca6b93332" [label=""];
  "sha256:fb7a9db8ad84de4c8cea406eb32cebdbbf76199b27fc78f3f6c7c71ca6b93332" -> "sha256:e886af2069c7bc40b53914152136bfe8c9f4b4e2dbd96bf691749e611f634a43" [label=""];
  "sha256:e886af2069c7bc40b53914152136bfe8c9f4b4e2dbd96bf691749e611f634a43" -> "sha256:75e660ce476f4b40483f231493b3f0eec3ce4a199ef6bdbad769a2787be586a5" [label=""];
  "sha256:75e660ce476f4b40483f231493b3f0eec3ce4a199ef6bdbad769a2787be586a5" -> "sha256:0776f3cccf21fd175236898b0ef3c6145dadc5d344f233577c21b2dcd3a5309f" [label=""];
  "sha256:4e99b7863ab75fd81ea42232e5820f9057c6ecb7d454048ce43600c15d02a264" -> "sha256:0776f3cccf21fd175236898b0ef3c6145dadc5d344f233577c21b2dcd3a5309f" [label=""];
  "sha256:0776f3cccf21fd175236898b0ef3c6145dadc5d344f233577c21b2dcd3a5309f" -> "sha256:a2f47995673537b567ad33315dd59d20598413d53a59bffe1819dc5d0c7ebe23" [label=""];
  "sha256:a2f47995673537b567ad33315dd59d20598413d53a59bffe1819dc5d0c7ebe23" -> "sha256:b97e214ea42a1eda5c1988ea3fa9179647ab484b8d7fa35c6a2c336866f07a17" [label=""];
}

