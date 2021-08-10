[app/sources/286439060.Dockerfile]
digraph {
  "sha256:9bad2ad754431a3a65d557073bc384e507023287b37666378d7a61a8191ea82b" [label="docker-image://docker.io/pytorch/pytorch:latest@sha256:9ebb176339b25a2d155e6f127c5948968b3f61e5f720c4598ef79cf450db8bfe" shape="ellipse"];
  "sha256:9aa02cbab638dcc8cc385f79a87845093a558904bc415e98fa6084e9f4e43d23" [label="/bin/sh -c git clone https://github.com/OpenNMT/OpenNMT-py.git && cd OpenNMT-py && pip install -r requirements.txt && python setup.py install" shape="box"];
  "sha256:48c391dae05516f58a151f2fa67d9930fa77f603a025c564f2ccb419374e0aa0" [label="sha256:48c391dae05516f58a151f2fa67d9930fa77f603a025c564f2ccb419374e0aa0" shape="plaintext"];
  "sha256:9bad2ad754431a3a65d557073bc384e507023287b37666378d7a61a8191ea82b" -> "sha256:9aa02cbab638dcc8cc385f79a87845093a558904bc415e98fa6084e9f4e43d23" [label=""];
  "sha256:9aa02cbab638dcc8cc385f79a87845093a558904bc415e98fa6084e9f4e43d23" -> "sha256:48c391dae05516f58a151f2fa67d9930fa77f603a025c564f2ccb419374e0aa0" [label=""];
}

