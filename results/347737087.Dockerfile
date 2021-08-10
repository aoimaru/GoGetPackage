[app/sources/347737087.Dockerfile]
digraph {
  "sha256:602f100469b308b5b762ecc6d856b2b9ff81e1806815d2e448ea9eb0d60f0b36" [label="local://context" shape="ellipse"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:dea7b943e6a67c2520afcdaec44e0a3f0dbe35f741dcdf98022a49aef0208d91" [label="/bin/sh -c apt-get -qy update &&             apt-get -qy upgrade &&             apt-get -qy install python-pip &&             apt-get -qy install python-dev &&             apt-get -qy install libyaml-dev &&             apt-get -qy install libffi-dev &&             apt-get -qy install libssl-dev &&             pip install --upgrade pip setuptools &&             pip install twisted==14.0.0 treq==0.2.1 service_identity pycrypto pyrsistent pyyaml==3.10" shape="box"];
  "sha256:1516acbe5ed8effc678332b2851a800d59d1fcea5f93be93af196c82230a7869" [label="/bin/sh -c pip install docker-py" shape="box"];
  "sha256:2208085e5df0f19282e99f78bde122607d26a9f73227690e0789c911c6a36cfa" [label="copy{src=/setup.py, dest=/app/},copy{src=/README.md, dest=/app/}" shape="note"];
  "sha256:6fb41446958a427d27c95c27121da655f2279ba938c06eb7db95c44c20745723" [label="copy{src=/dvol_python/*, dest=/app/dvol_python/}" shape="note"];
  "sha256:ed3c98fb62dab36789f6f0a858f0f937b37b9550564b037b966efdaf3e2a7f93" [label="mkdir{path=/app}" shape="note"];
  "sha256:286c2387fa5724e1704fde568ed3e6acfe3b2404823ea0f883bba5bcb966f328" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:cc7229bfc92eb209cfda76f87a23f4f94db845f90432d3e64f4039efc77b7d4e" [label="sha256:cc7229bfc92eb209cfda76f87a23f4f94db845f90432d3e64f4039efc77b7d4e" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:dea7b943e6a67c2520afcdaec44e0a3f0dbe35f741dcdf98022a49aef0208d91" [label=""];
  "sha256:dea7b943e6a67c2520afcdaec44e0a3f0dbe35f741dcdf98022a49aef0208d91" -> "sha256:1516acbe5ed8effc678332b2851a800d59d1fcea5f93be93af196c82230a7869" [label=""];
  "sha256:1516acbe5ed8effc678332b2851a800d59d1fcea5f93be93af196c82230a7869" -> "sha256:2208085e5df0f19282e99f78bde122607d26a9f73227690e0789c911c6a36cfa" [label=""];
  "sha256:602f100469b308b5b762ecc6d856b2b9ff81e1806815d2e448ea9eb0d60f0b36" -> "sha256:2208085e5df0f19282e99f78bde122607d26a9f73227690e0789c911c6a36cfa" [label=""];
  "sha256:2208085e5df0f19282e99f78bde122607d26a9f73227690e0789c911c6a36cfa" -> "sha256:6fb41446958a427d27c95c27121da655f2279ba938c06eb7db95c44c20745723" [label=""];
  "sha256:602f100469b308b5b762ecc6d856b2b9ff81e1806815d2e448ea9eb0d60f0b36" -> "sha256:6fb41446958a427d27c95c27121da655f2279ba938c06eb7db95c44c20745723" [label=""];
  "sha256:6fb41446958a427d27c95c27121da655f2279ba938c06eb7db95c44c20745723" -> "sha256:ed3c98fb62dab36789f6f0a858f0f937b37b9550564b037b966efdaf3e2a7f93" [label=""];
  "sha256:ed3c98fb62dab36789f6f0a858f0f937b37b9550564b037b966efdaf3e2a7f93" -> "sha256:286c2387fa5724e1704fde568ed3e6acfe3b2404823ea0f883bba5bcb966f328" [label=""];
  "sha256:286c2387fa5724e1704fde568ed3e6acfe3b2404823ea0f883bba5bcb966f328" -> "sha256:cc7229bfc92eb209cfda76f87a23f4f94db845f90432d3e64f4039efc77b7d4e" [label=""];
}

