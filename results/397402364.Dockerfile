[app/sources/397402364.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d42519f44543ccdbc2a88bd96eeaff15ca5e562c9f956e7ebba360faf2814fcd" [label="/bin/sh -c apt update &&  apt install -y python python-pip python-setuptools unzip wget python-gunicorn &&  pip install virtualenv" shape="box"];
  "sha256:d016b45d90e5026b608ef687f01f9df72f8d81ac95804cdf48a9a412da6c0f90" [label="/bin/sh -c groupadd -r web2py &&  useradd -m -r -g web2py web2py" shape="box"];
  "sha256:2b4b8209cfcc795de87d40e784824bf607d8fbc0479f76db8237dbf082146876" [label="/bin/sh -c virtualenv /home/web2py &&  rm -rf /home/web2py/web2py &&  cd /home/web2py/ &&  rm -f web2py_src.zip &&  wget -c http://web2py.com/examples/static/web2py_src.zip &&  unzip -o web2py_src.zip &&  rm -rf /home/web2py/web2py/applications/examples &&  chmod 755 -R /home/web2py/web2py" shape="box"];
  "sha256:edf3658e849f7eb28a7b9ca082c7cf460bdc88e20a1a1c0ff465f834e1563832" [label="mkdir{path=/home/web2py/web2py}" shape="note"];
  "sha256:e41ce5639083d5cf52ef13d9d1f814734046e5e5bb120e05742009d0bb966214" [label="sha256:e41ce5639083d5cf52ef13d9d1f814734046e5e5bb120e05742009d0bb966214" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d42519f44543ccdbc2a88bd96eeaff15ca5e562c9f956e7ebba360faf2814fcd" [label=""];
  "sha256:d42519f44543ccdbc2a88bd96eeaff15ca5e562c9f956e7ebba360faf2814fcd" -> "sha256:d016b45d90e5026b608ef687f01f9df72f8d81ac95804cdf48a9a412da6c0f90" [label=""];
  "sha256:d016b45d90e5026b608ef687f01f9df72f8d81ac95804cdf48a9a412da6c0f90" -> "sha256:2b4b8209cfcc795de87d40e784824bf607d8fbc0479f76db8237dbf082146876" [label=""];
  "sha256:2b4b8209cfcc795de87d40e784824bf607d8fbc0479f76db8237dbf082146876" -> "sha256:edf3658e849f7eb28a7b9ca082c7cf460bdc88e20a1a1c0ff465f834e1563832" [label=""];
  "sha256:edf3658e849f7eb28a7b9ca082c7cf460bdc88e20a1a1c0ff465f834e1563832" -> "sha256:e41ce5639083d5cf52ef13d9d1f814734046e5e5bb120e05742009d0bb966214" [label=""];
}

