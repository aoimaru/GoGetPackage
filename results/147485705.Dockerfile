[app/sources/147485705.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8ff5a06f8408a5eed7866eb85c3d945f81db79347d2d4a120381890a3c674d45" [label="local://context" shape="ellipse"];
  "sha256:2ed8f032ca9b453733706a910c9c15832beb38564e2c37452a76241103b14898" [label="copy{src=/, dest=/opt/crawlab}" shape="note"];
  "sha256:baa3afc032d2b7763c850b198733884ea25a1cc42e4430cd0e1696d9fac6f651" [label="/bin/sh -c apt-get update \t&& apt-get install -y curl git net-tools iputils-ping ntp nginx python3 python3-pip \t&& apt-get clean \t&& cp $WORK_DIR/crawlab.conf /etc/nginx/conf.d \t&& ln -s /usr/bin/pip3 /usr/local/bin/pip \t&& ln -s /usr/bin/python3 /usr/local/bin/python" shape="box"];
  "sha256:3cbaeb8fd409c75b49a01251251d392fcc74bbabab43e20cfcab7e0127977ae5" [label="/bin/sh -c curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash     && . $NVM_DIR/nvm.sh     && nvm install v$NODE_VERSION     && nvm use v$NODE_VERSION     && nvm alias default v$NODE_VERSION" shape="box"];
  "sha256:3a3290f6d718c40b827de252faf081a186fd4d726ada1dd54e465fd75d3b4cae" [label="/bin/sh -c npm install -g yarn \t&& cd /opt/crawlab/frontend \t&& yarn install" shape="box"];
  "sha256:28b2098cddb7f553ef5bdbea7ca68ee4d479dd7f611c970b74a169d814e7d1ef" [label="/bin/sh -c pip install -U setuptools \t&& pip install -r /opt/crawlab/crawlab/requirements.txt" shape="box"];
  "sha256:387039da40fd2483117d93322fb6b323b70ffbc8d65c44442ba8900d366f09df" [label="mkdir{path=/opt/crawlab}" shape="note"];
  "sha256:c309646183ca436c7e3d400474808af7c9e55e7c489e8cd97b527975a50555a7" [label="sha256:c309646183ca436c7e3d400474808af7c9e55e7c489e8cd97b527975a50555a7" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:2ed8f032ca9b453733706a910c9c15832beb38564e2c37452a76241103b14898" [label=""];
  "sha256:8ff5a06f8408a5eed7866eb85c3d945f81db79347d2d4a120381890a3c674d45" -> "sha256:2ed8f032ca9b453733706a910c9c15832beb38564e2c37452a76241103b14898" [label=""];
  "sha256:2ed8f032ca9b453733706a910c9c15832beb38564e2c37452a76241103b14898" -> "sha256:baa3afc032d2b7763c850b198733884ea25a1cc42e4430cd0e1696d9fac6f651" [label=""];
  "sha256:baa3afc032d2b7763c850b198733884ea25a1cc42e4430cd0e1696d9fac6f651" -> "sha256:3cbaeb8fd409c75b49a01251251d392fcc74bbabab43e20cfcab7e0127977ae5" [label=""];
  "sha256:3cbaeb8fd409c75b49a01251251d392fcc74bbabab43e20cfcab7e0127977ae5" -> "sha256:3a3290f6d718c40b827de252faf081a186fd4d726ada1dd54e465fd75d3b4cae" [label=""];
  "sha256:3a3290f6d718c40b827de252faf081a186fd4d726ada1dd54e465fd75d3b4cae" -> "sha256:28b2098cddb7f553ef5bdbea7ca68ee4d479dd7f611c970b74a169d814e7d1ef" [label=""];
  "sha256:28b2098cddb7f553ef5bdbea7ca68ee4d479dd7f611c970b74a169d814e7d1ef" -> "sha256:387039da40fd2483117d93322fb6b323b70ffbc8d65c44442ba8900d366f09df" [label=""];
  "sha256:387039da40fd2483117d93322fb6b323b70ffbc8d65c44442ba8900d366f09df" -> "sha256:c309646183ca436c7e3d400474808af7c9e55e7c489e8cd97b527975a50555a7" [label=""];
}

