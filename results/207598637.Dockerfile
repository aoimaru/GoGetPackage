[app/sources/207598637.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:a660bb46049c37a4b158997bdd35f8cc48fddc44b907aa9066929902362c05fd" [label="/bin/sh -c apt-get update && apt-get install -y \tredsocks \tcurl \tpython \tpython-pip \tiptables && pip install iptools" shape="box"];
  "sha256:d9fa1bd0b54b3314131583ff674790347ebb5d6b409d6852bc735c4790584f21" [label="/bin/sh -c mkdir -p /tmp/chameleonsocks/confs/" shape="box"];
  "sha256:56d7de4cfb1998e653729f90b80cdd1198ac204619c2640495b5571b8f6a4bb0" [label="local://context" shape="ellipse"];
  "sha256:2305adcb1d3e936f114e6bf49b55daee9fa7bb2af4ac673c80218bed59dda5db" [label="copy{src=/confs, dest=/tmp/chameleonsocks/confs/}" shape="note"];
  "sha256:8d88fb74bd1f3a12afa09a2ce5a8cf5fc744bc7fe610644e7e489d6f0087d976" [label="/bin/sh -c chmod 755 /tmp/chameleonsocks/confs/redsocks && chmod 755 /tmp/chameleonsocks/confs/chameleonsocks && mv /tmp/chameleonsocks/confs/redsocks /etc/init.d/ && mv /tmp/chameleonsocks/confs/redsocks.conf /etc/  && mv /tmp/chameleonsocks/confs/pac.py /etc/  && mv /tmp/chameleonsocks/confs/chameleonsocks /bin/ && echo ${CHAMELEONSOCKS_VERSION} > /etc/chameleonsocks-version" shape="box"];
  "sha256:6a60fea6a92f6a99994ebdeab846df1853a592b0edfb26499db85f2e98d81e8a" [label="sha256:6a60fea6a92f6a99994ebdeab846df1853a592b0edfb26499db85f2e98d81e8a" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:a660bb46049c37a4b158997bdd35f8cc48fddc44b907aa9066929902362c05fd" [label=""];
  "sha256:a660bb46049c37a4b158997bdd35f8cc48fddc44b907aa9066929902362c05fd" -> "sha256:d9fa1bd0b54b3314131583ff674790347ebb5d6b409d6852bc735c4790584f21" [label=""];
  "sha256:d9fa1bd0b54b3314131583ff674790347ebb5d6b409d6852bc735c4790584f21" -> "sha256:2305adcb1d3e936f114e6bf49b55daee9fa7bb2af4ac673c80218bed59dda5db" [label=""];
  "sha256:56d7de4cfb1998e653729f90b80cdd1198ac204619c2640495b5571b8f6a4bb0" -> "sha256:2305adcb1d3e936f114e6bf49b55daee9fa7bb2af4ac673c80218bed59dda5db" [label=""];
  "sha256:2305adcb1d3e936f114e6bf49b55daee9fa7bb2af4ac673c80218bed59dda5db" -> "sha256:8d88fb74bd1f3a12afa09a2ce5a8cf5fc744bc7fe610644e7e489d6f0087d976" [label=""];
  "sha256:8d88fb74bd1f3a12afa09a2ce5a8cf5fc744bc7fe610644e7e489d6f0087d976" -> "sha256:6a60fea6a92f6a99994ebdeab846df1853a592b0edfb26499db85f2e98d81e8a" [label=""];
}

