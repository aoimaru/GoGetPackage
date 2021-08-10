[app/sources/173615371.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:4fb376824c404442189857929aff22d8f45c5f24e1ba681cfe2547baf4180726" [label="mkdir{path=/relay.mesos}" shape="note"];
  "sha256:1107e1bb15b39d266640ec1029ac382fd3731eff062802825ec800882ac72bf6" [label="/bin/sh -c apt-get update && apt-get install -f -y curl && apt-get clean" shape="box"];
  "sha256:76dbfed21ffa7bb5d4f224b0701aa7c7139d19d1954d9152d48db28700473108" [label="/bin/sh -c curl -o miniconda.sh http://repo.continuum.io/miniconda/Miniconda-3.7.0-Linux-x86_64.sh   && /bin/bash miniconda.sh -b -p /opt/anaconda   && rm miniconda.sh   && echo 'export PATH=/opt/anaconda/bin:$PATH' > /etc/profile.d/conda.sh" shape="box"];
  "sha256:87ce6fcfba0bff1778f6cd46d9665de9ec04c598e12a7f742da0abff95d45cd1" [label="/bin/sh -c curl -o mesos.egg http://downloads.mesosphere.io/master/ubuntu/14.04/mesos-0.20.1-py2.7-linux-x86_64.egg   && conda install setuptools numpy pyzmq" shape="box"];
  "sha256:7286b5309791e006fb979fff5b8069023c8e2027106c279b62d71e29936f05db" [label="local://context" shape="ellipse"];
  "sha256:710e0482b044ed4c2ebf44867eb1f33e4785ba652d1948e66847a3364ec45c03" [label="copy{src=/setup.py, dest=/relay.mesos/}" shape="note"];
  "sha256:e3924381b528dc6bc96e42040fb16072fc2c3efd8c84f9ce7ca035e10ab051f3" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:fd09a9d4f9660bc9ab04b592b00f1ccf210fc7404fcf193d6d53d0e3398e97cd" [label="copy{src=/relay_mesos, dest=/relay.mesos/relay_mesos}" shape="note"];
  "sha256:0461be4ef5b0598b0eb2f00f7e122eb0c308045d3eb9d38102e26ef249d8a375" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:302187ef05f09121f18d366e5cb42a3855389c619e63d0a67f7a699bfb87fc64" [label="sha256:302187ef05f09121f18d366e5cb42a3855389c619e63d0a67f7a699bfb87fc64" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:4fb376824c404442189857929aff22d8f45c5f24e1ba681cfe2547baf4180726" [label=""];
  "sha256:4fb376824c404442189857929aff22d8f45c5f24e1ba681cfe2547baf4180726" -> "sha256:1107e1bb15b39d266640ec1029ac382fd3731eff062802825ec800882ac72bf6" [label=""];
  "sha256:1107e1bb15b39d266640ec1029ac382fd3731eff062802825ec800882ac72bf6" -> "sha256:76dbfed21ffa7bb5d4f224b0701aa7c7139d19d1954d9152d48db28700473108" [label=""];
  "sha256:76dbfed21ffa7bb5d4f224b0701aa7c7139d19d1954d9152d48db28700473108" -> "sha256:87ce6fcfba0bff1778f6cd46d9665de9ec04c598e12a7f742da0abff95d45cd1" [label=""];
  "sha256:87ce6fcfba0bff1778f6cd46d9665de9ec04c598e12a7f742da0abff95d45cd1" -> "sha256:710e0482b044ed4c2ebf44867eb1f33e4785ba652d1948e66847a3364ec45c03" [label=""];
  "sha256:7286b5309791e006fb979fff5b8069023c8e2027106c279b62d71e29936f05db" -> "sha256:710e0482b044ed4c2ebf44867eb1f33e4785ba652d1948e66847a3364ec45c03" [label=""];
  "sha256:710e0482b044ed4c2ebf44867eb1f33e4785ba652d1948e66847a3364ec45c03" -> "sha256:e3924381b528dc6bc96e42040fb16072fc2c3efd8c84f9ce7ca035e10ab051f3" [label=""];
  "sha256:e3924381b528dc6bc96e42040fb16072fc2c3efd8c84f9ce7ca035e10ab051f3" -> "sha256:fd09a9d4f9660bc9ab04b592b00f1ccf210fc7404fcf193d6d53d0e3398e97cd" [label=""];
  "sha256:7286b5309791e006fb979fff5b8069023c8e2027106c279b62d71e29936f05db" -> "sha256:fd09a9d4f9660bc9ab04b592b00f1ccf210fc7404fcf193d6d53d0e3398e97cd" [label=""];
  "sha256:fd09a9d4f9660bc9ab04b592b00f1ccf210fc7404fcf193d6d53d0e3398e97cd" -> "sha256:0461be4ef5b0598b0eb2f00f7e122eb0c308045d3eb9d38102e26ef249d8a375" [label=""];
  "sha256:0461be4ef5b0598b0eb2f00f7e122eb0c308045d3eb9d38102e26ef249d8a375" -> "sha256:302187ef05f09121f18d366e5cb42a3855389c619e63d0a67f7a699bfb87fc64" [label=""];
}

