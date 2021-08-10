[app/sources/219586303.Dockerfile]
digraph {
  "sha256:d06eaa6bcfd627014ed1bed1b10c34b581421f2853a32402d7d864fee9152427" [label="docker-image://docker.io/nvidia/cuda:7.5-devel-ubuntu14.04" shape="ellipse"];
  "sha256:88ceeedd7c99a961d787a789a85119b6ae985d30ba5180e49f87b270adaadafe" [label="/bin/sh -c apt-get update && apt-get install -y   git   libhdf5-dev   python-dev   python-numpy   python-pip" shape="box"];
  "sha256:332f53cd9083fa42b3b5a804ac0d15e978d510bdf63de71804559ae0a6c5c493" [label="/bin/sh -c rm /usr/lib/python2.7/dist-packages/six*" shape="box"];
  "sha256:150b539720715cf1fd5a55f7b862e167dfa441265a3ca05aa38d2b50c2a2a819" [label="/bin/sh -c cd /root && git clone https://github.com/IDSIA/brainstorm.git && cd brainstorm &&   pip install -r requirements.txt &&   pip install -r pycuda_requirements.txt &&   python setup.py install" shape="box"];
  "sha256:a56e32f74d641d8db1b92e07741fff84e7be0439ab0a151ab30bd4e559f9842a" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:4286432089db3c6ab0be9678ba416aa04a32b415f11103a8bb85ca187d9c31fe" [label="mkdir{path=/root/brainstorm}" shape="note"];
  "sha256:cbd606c3b5787656d2a9578e661f8eeae6afc1d5b9819ad29dfd04fe820e9aa3" [label="sha256:cbd606c3b5787656d2a9578e661f8eeae6afc1d5b9819ad29dfd04fe820e9aa3" shape="plaintext"];
  "sha256:d06eaa6bcfd627014ed1bed1b10c34b581421f2853a32402d7d864fee9152427" -> "sha256:88ceeedd7c99a961d787a789a85119b6ae985d30ba5180e49f87b270adaadafe" [label=""];
  "sha256:88ceeedd7c99a961d787a789a85119b6ae985d30ba5180e49f87b270adaadafe" -> "sha256:332f53cd9083fa42b3b5a804ac0d15e978d510bdf63de71804559ae0a6c5c493" [label=""];
  "sha256:332f53cd9083fa42b3b5a804ac0d15e978d510bdf63de71804559ae0a6c5c493" -> "sha256:150b539720715cf1fd5a55f7b862e167dfa441265a3ca05aa38d2b50c2a2a819" [label=""];
  "sha256:150b539720715cf1fd5a55f7b862e167dfa441265a3ca05aa38d2b50c2a2a819" -> "sha256:a56e32f74d641d8db1b92e07741fff84e7be0439ab0a151ab30bd4e559f9842a" [label=""];
  "sha256:a56e32f74d641d8db1b92e07741fff84e7be0439ab0a151ab30bd4e559f9842a" -> "sha256:4286432089db3c6ab0be9678ba416aa04a32b415f11103a8bb85ca187d9c31fe" [label=""];
  "sha256:4286432089db3c6ab0be9678ba416aa04a32b415f11103a8bb85ca187d9c31fe" -> "sha256:cbd606c3b5787656d2a9578e661f8eeae6afc1d5b9819ad29dfd04fe820e9aa3" [label=""];
}

