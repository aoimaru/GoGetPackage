[app/sources/397402306.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:920b4fc94c4f42d12c531d825b0d83785cceb99e3d3326239882bb635b30bbab" [label="/bin/sh -c apt update &&  apt install -y unzip wget python-pip &&  pip install --upgrade pip &&  pip install wsgiref" shape="box"];
  "sha256:04db64536eff24f11673e1873791127b3f078acbf30dd5c068d07585e9397605" [label="/bin/sh -c groupadd -r web2py &&  useradd -m -r -g web2py web2py" shape="box"];
  "sha256:0ae2c81886b927b23b60864f1d8a5567a4c2a70d6fc9c52d5fbe0c57ba764166" [label="/bin/sh -c cd /home/web2py/ &&  wget -c http://web2py.com/examples/static/web2py_src.zip &&  unzip -o web2py_src.zip &&  rm -rf /home/web2py/web2py/applications/examples &&  chmod 755 -R /home/web2py/web2py" shape="box"];
  "sha256:93fd9cf0fc0bb88fc7dc97c2973bdf70605b13a8ae1db291f8cff686ebceb6ea" [label="mkdir{path=/home/web2py/web2py}" shape="note"];
  "sha256:67220775bf2822ba4afb000f9b1afffd0b41e72edabf1ef6a344a115d89c617b" [label="sha256:67220775bf2822ba4afb000f9b1afffd0b41e72edabf1ef6a344a115d89c617b" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:920b4fc94c4f42d12c531d825b0d83785cceb99e3d3326239882bb635b30bbab" [label=""];
  "sha256:920b4fc94c4f42d12c531d825b0d83785cceb99e3d3326239882bb635b30bbab" -> "sha256:04db64536eff24f11673e1873791127b3f078acbf30dd5c068d07585e9397605" [label=""];
  "sha256:04db64536eff24f11673e1873791127b3f078acbf30dd5c068d07585e9397605" -> "sha256:0ae2c81886b927b23b60864f1d8a5567a4c2a70d6fc9c52d5fbe0c57ba764166" [label=""];
  "sha256:0ae2c81886b927b23b60864f1d8a5567a4c2a70d6fc9c52d5fbe0c57ba764166" -> "sha256:93fd9cf0fc0bb88fc7dc97c2973bdf70605b13a8ae1db291f8cff686ebceb6ea" [label=""];
  "sha256:93fd9cf0fc0bb88fc7dc97c2973bdf70605b13a8ae1db291f8cff686ebceb6ea" -> "sha256:67220775bf2822ba4afb000f9b1afffd0b41e72edabf1ef6a344a115d89c617b" [label=""];
}

