[app/sources/186016804.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:e6a5360b2af63410b37f04e14ae8ebf450af27d5bc76d654a0598f84a56da7f2" [label="/bin/sh -c apt-get update -qq &&     apt-get install -y -q --no-install-recommends     openssl python2.7 python-pip build-essential python-dev     fakeroot dpkg-dev libcurl4-openssl-dev librtmp-dev libssl-dev" shape="box"];
  "sha256:08210e26395c00b2a1a1aa3fbc33fca11a56094ec0e8b6ac8502ded80e26845f" [label="/bin/sh -c pip install --upgrade pip setuptools" shape="box"];
  "sha256:74841b4473011d8651a0b325062ae400e463cdf54c79467942abf34d10dec06d" [label="/bin/sh -c pip install requests Flask Flask-Cache" shape="box"];
  "sha256:0695a0ec04f68db71a2ecd60eec2f3899388536b4cd87a6f06692f1c198d1c56" [label="/bin/sh -c pip install ndg-httpsclient" shape="box"];
  "sha256:4550b233498db8e658cb41092947d08bc072eeb0feb044f8c9c51316d853cc5d" [label="/bin/sh -c pip install pyopenssl" shape="box"];
  "sha256:e86d5a6ddcaf7291c5f4ccae92eb926576ae2fad761fbe11a03f4d77336dba26" [label="/bin/sh -c pip install pyasn1" shape="box"];
  "sha256:270ba846a0f258a20625fafec4281141a2e8fdfad8b808d1b5811c48217f5d03" [label="/bin/sh -c pip install retry" shape="box"];
  "sha256:fce824013ed17ed1362c566f799d77008d1c3f6b7206e821a163d49becab6c78" [label="/bin/sh -c mkdir ~/python-pycurl-openssl &&     cd ~/python-pycurl-openssl &&     curl https://dl.bintray.com/pycurl/pycurl/pycurl-7.43.0.2.tar.gz -L -O &&     tar -xzvf pycurl-7.43.0.2.tar.gz &&     cd pycurl-7.43.0.2 &&     python2.7 setup.py --with-ssl install" shape="box"];
  "sha256:d6acc96fe4ab692618f74da1ac2ecfe286e2a79b920b00dc0d5451ca6f42a380" [label="local://context" shape="ellipse"];
  "sha256:ec253ca28904bb07812355f1232b27115933ef2a88eac0db9e5fe49dc7791d26" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:c9dafb8648e990da82a7e0be50423f5dc3b618283750a269a49cb5f3e42bca4d" [label="sha256:c9dafb8648e990da82a7e0be50423f5dc3b618283750a269a49cb5f3e42bca4d" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:e6a5360b2af63410b37f04e14ae8ebf450af27d5bc76d654a0598f84a56da7f2" [label=""];
  "sha256:e6a5360b2af63410b37f04e14ae8ebf450af27d5bc76d654a0598f84a56da7f2" -> "sha256:08210e26395c00b2a1a1aa3fbc33fca11a56094ec0e8b6ac8502ded80e26845f" [label=""];
  "sha256:08210e26395c00b2a1a1aa3fbc33fca11a56094ec0e8b6ac8502ded80e26845f" -> "sha256:74841b4473011d8651a0b325062ae400e463cdf54c79467942abf34d10dec06d" [label=""];
  "sha256:74841b4473011d8651a0b325062ae400e463cdf54c79467942abf34d10dec06d" -> "sha256:0695a0ec04f68db71a2ecd60eec2f3899388536b4cd87a6f06692f1c198d1c56" [label=""];
  "sha256:0695a0ec04f68db71a2ecd60eec2f3899388536b4cd87a6f06692f1c198d1c56" -> "sha256:4550b233498db8e658cb41092947d08bc072eeb0feb044f8c9c51316d853cc5d" [label=""];
  "sha256:4550b233498db8e658cb41092947d08bc072eeb0feb044f8c9c51316d853cc5d" -> "sha256:e86d5a6ddcaf7291c5f4ccae92eb926576ae2fad761fbe11a03f4d77336dba26" [label=""];
  "sha256:e86d5a6ddcaf7291c5f4ccae92eb926576ae2fad761fbe11a03f4d77336dba26" -> "sha256:270ba846a0f258a20625fafec4281141a2e8fdfad8b808d1b5811c48217f5d03" [label=""];
  "sha256:270ba846a0f258a20625fafec4281141a2e8fdfad8b808d1b5811c48217f5d03" -> "sha256:fce824013ed17ed1362c566f799d77008d1c3f6b7206e821a163d49becab6c78" [label=""];
  "sha256:fce824013ed17ed1362c566f799d77008d1c3f6b7206e821a163d49becab6c78" -> "sha256:ec253ca28904bb07812355f1232b27115933ef2a88eac0db9e5fe49dc7791d26" [label=""];
  "sha256:d6acc96fe4ab692618f74da1ac2ecfe286e2a79b920b00dc0d5451ca6f42a380" -> "sha256:ec253ca28904bb07812355f1232b27115933ef2a88eac0db9e5fe49dc7791d26" [label=""];
  "sha256:ec253ca28904bb07812355f1232b27115933ef2a88eac0db9e5fe49dc7791d26" -> "sha256:c9dafb8648e990da82a7e0be50423f5dc3b618283750a269a49cb5f3e42bca4d" [label=""];
}

