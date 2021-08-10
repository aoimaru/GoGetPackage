[app/sources/397402198.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:a8f0af171e0430c73f94dff03e2758be1025feca7e223245c37a2f3bb08d5bbd" [label="/bin/sh -c apt update &&  apt install -y python python-pip python-setuptools unzip wget python-eventlet &&  pip install virtualenv" shape="box"];
  "sha256:47910f5182040962473a6f17580b5c7fbdf56dec1fd22bb80115dfd48b7ca3e5" [label="/bin/sh -c groupadd -r web2py &&  useradd -m -r -g web2py web2py" shape="box"];
  "sha256:f1f8eca6b1d738f46f07ef80595369e635d9e4e5afb7913ead8c76873b3536c1" [label="/bin/sh -c virtualenv /home/web2py &&  rm -rf /home/web2py/web2py &&  cd /home/web2py/ &&  rm -f web2py_src.zip &&  wget -c http://web2py.com/examples/static/web2py_src.zip &&  unzip -o web2py_src.zip &&  rm -rf /home/web2py/web2py/applications/examples &&  chmod 755 -R /home/web2py/web2py" shape="box"];
  "sha256:4dfe58a60da8c1dbc9f7ee37f5229b0cfccfafa98b8667b96420e0f38ff806b4" [label="mkdir{path=/home/web2py/web2py}" shape="note"];
  "sha256:d82e779cfa3afd8f8113f7e8357fc93f22811fb28868b78be43cc981e51d5a1f" [label="sha256:d82e779cfa3afd8f8113f7e8357fc93f22811fb28868b78be43cc981e51d5a1f" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:a8f0af171e0430c73f94dff03e2758be1025feca7e223245c37a2f3bb08d5bbd" [label=""];
  "sha256:a8f0af171e0430c73f94dff03e2758be1025feca7e223245c37a2f3bb08d5bbd" -> "sha256:47910f5182040962473a6f17580b5c7fbdf56dec1fd22bb80115dfd48b7ca3e5" [label=""];
  "sha256:47910f5182040962473a6f17580b5c7fbdf56dec1fd22bb80115dfd48b7ca3e5" -> "sha256:f1f8eca6b1d738f46f07ef80595369e635d9e4e5afb7913ead8c76873b3536c1" [label=""];
  "sha256:f1f8eca6b1d738f46f07ef80595369e635d9e4e5afb7913ead8c76873b3536c1" -> "sha256:4dfe58a60da8c1dbc9f7ee37f5229b0cfccfafa98b8667b96420e0f38ff806b4" [label=""];
  "sha256:4dfe58a60da8c1dbc9f7ee37f5229b0cfccfafa98b8667b96420e0f38ff806b4" -> "sha256:d82e779cfa3afd8f8113f7e8357fc93f22811fb28868b78be43cc981e51d5a1f" [label=""];
}

