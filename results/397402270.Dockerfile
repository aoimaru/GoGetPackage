[app/sources/397402270.Dockerfile]
digraph {
  "sha256:1c2e476513740d31ea79fe7a1fe3c7b418265e66aede6387ac5057592307822b" [label="docker-image://docker.io/library/opensuse:latest" shape="ellipse"];
  "sha256:1d01bb391298a8e29cdf89d5b822c34833a20333ea73fad6d415478cf6cb033a" [label="/bin/sh -c zypper in -y python python-pip python-setuptools unzip wget python-twisted &&  pip install --upgrade pip &&  pip install virtualenv" shape="box"];
  "sha256:2f901974e7cd5ea49a7beff1b7ed3dc088be54cc3b788a06036b83bc524a7796" [label="/bin/sh -c groupadd -r web2py &&  useradd -m -r -g web2py web2py" shape="box"];
  "sha256:eb6b27fa46308c31727f1489dbc537fc4af22463987087feadb26e755309aa32" [label="/bin/sh -c virtualenv /home/web2py &&  rm -rf /home/web2py/web2py &&  cd /home/web2py/ &&  rm -f web2py_src.zip &&  wget -c http://web2py.com/examples/static/web2py_src.zip &&  unzip -o web2py_src.zip &&  rm -rf /home/web2py/web2py/applications/examples &&  chmod 755 -R /home/web2py/web2py" shape="box"];
  "sha256:2e42622b176ad20d9323b595a569df70366434e2abf5a8096ebde26b2f6a7f92" [label="mkdir{path=/home/web2py/web2py}" shape="note"];
  "sha256:3b68d398bf69875181c7ec52b44e635c1d8d318f516f7105f53f2a1fbbc6d657" [label="sha256:3b68d398bf69875181c7ec52b44e635c1d8d318f516f7105f53f2a1fbbc6d657" shape="plaintext"];
  "sha256:1c2e476513740d31ea79fe7a1fe3c7b418265e66aede6387ac5057592307822b" -> "sha256:1d01bb391298a8e29cdf89d5b822c34833a20333ea73fad6d415478cf6cb033a" [label=""];
  "sha256:1d01bb391298a8e29cdf89d5b822c34833a20333ea73fad6d415478cf6cb033a" -> "sha256:2f901974e7cd5ea49a7beff1b7ed3dc088be54cc3b788a06036b83bc524a7796" [label=""];
  "sha256:2f901974e7cd5ea49a7beff1b7ed3dc088be54cc3b788a06036b83bc524a7796" -> "sha256:eb6b27fa46308c31727f1489dbc537fc4af22463987087feadb26e755309aa32" [label=""];
  "sha256:eb6b27fa46308c31727f1489dbc537fc4af22463987087feadb26e755309aa32" -> "sha256:2e42622b176ad20d9323b595a569df70366434e2abf5a8096ebde26b2f6a7f92" [label=""];
  "sha256:2e42622b176ad20d9323b595a569df70366434e2abf5a8096ebde26b2f6a7f92" -> "sha256:3b68d398bf69875181c7ec52b44e635c1d8d318f516f7105f53f2a1fbbc6d657" [label=""];
}

