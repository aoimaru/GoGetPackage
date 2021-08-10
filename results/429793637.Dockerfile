[app/sources/429793637.Dockerfile]
digraph {
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" [label="docker-image://docker.io/library/python:3.7-slim" shape="ellipse"];
  "sha256:297e972c3a49ae801bfac1e58cbf7eec4987bfa83785d214dacd59f6e09022f0" [label="/bin/sh -c echo 'deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main' >> /etc/apt/sources.list     && apt-get update     && apt-get install -y --no-install-recommends apt-utils" shape="box"];
  "sha256:c3ffd86726ece4906ef9e3bbf40707b6b3cf8cfa80fbd6bb11aee0926fe9334c" [label="/bin/sh -c apt-get install -y netcat && apt-get autoremove -y" shape="box"];
  "sha256:56ef9dd52a58d893bfa3edaf18972c5ac3d9ac8f72683117cef2c3917f83082a" [label="/bin/sh -c adduser --disabled-password --gecos '' myuser" shape="box"];
  "sha256:7552d4ee4fe356f59d73770cc1caf8ca3d3842f61a8d47e1ce3dfb33aece23a0" [label="mkdir{path=/{{cookiecutter.project_slug}}}" shape="note"];
  "sha256:146ad7efb5e2c26bf1850f756ffde2c7e4e7cc674ada18c86baafbcffe1516dd" [label="local://context" shape="ellipse"];
  "sha256:d0718b5ecba2ae00b755290c7ef42c4ff7f39c961b91ec512f0c45103d72f2dc" [label="copy{src=/, dest=/{{cookiecutter.project_slug}}}" shape="note"];
  "sha256:addb046421a975c0536870c19ee7ee6584225b856ee98d564a84eee6f1e1599e" [label="/bin/sh -c pip3 install -e ." shape="box"];
  "sha256:7de00b64ef06e673b21e89d975cb6b78bc13ffb7d35a30f53e5425ba8e325ab8" [label="sha256:7de00b64ef06e673b21e89d975cb6b78bc13ffb7d35a30f53e5425ba8e325ab8" shape="plaintext"];
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" -> "sha256:297e972c3a49ae801bfac1e58cbf7eec4987bfa83785d214dacd59f6e09022f0" [label=""];
  "sha256:297e972c3a49ae801bfac1e58cbf7eec4987bfa83785d214dacd59f6e09022f0" -> "sha256:c3ffd86726ece4906ef9e3bbf40707b6b3cf8cfa80fbd6bb11aee0926fe9334c" [label=""];
  "sha256:c3ffd86726ece4906ef9e3bbf40707b6b3cf8cfa80fbd6bb11aee0926fe9334c" -> "sha256:56ef9dd52a58d893bfa3edaf18972c5ac3d9ac8f72683117cef2c3917f83082a" [label=""];
  "sha256:56ef9dd52a58d893bfa3edaf18972c5ac3d9ac8f72683117cef2c3917f83082a" -> "sha256:7552d4ee4fe356f59d73770cc1caf8ca3d3842f61a8d47e1ce3dfb33aece23a0" [label=""];
  "sha256:7552d4ee4fe356f59d73770cc1caf8ca3d3842f61a8d47e1ce3dfb33aece23a0" -> "sha256:d0718b5ecba2ae00b755290c7ef42c4ff7f39c961b91ec512f0c45103d72f2dc" [label=""];
  "sha256:146ad7efb5e2c26bf1850f756ffde2c7e4e7cc674ada18c86baafbcffe1516dd" -> "sha256:d0718b5ecba2ae00b755290c7ef42c4ff7f39c961b91ec512f0c45103d72f2dc" [label=""];
  "sha256:d0718b5ecba2ae00b755290c7ef42c4ff7f39c961b91ec512f0c45103d72f2dc" -> "sha256:addb046421a975c0536870c19ee7ee6584225b856ee98d564a84eee6f1e1599e" [label=""];
  "sha256:addb046421a975c0536870c19ee7ee6584225b856ee98d564a84eee6f1e1599e" -> "sha256:7de00b64ef06e673b21e89d975cb6b78bc13ffb7d35a30f53e5425ba8e325ab8" [label=""];
}

