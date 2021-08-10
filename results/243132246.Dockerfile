[app/sources/243132246.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:44ee470dae1e411f6e94496611c7fabf4c5f34d3ff4bbf2acbba9500ac595d53" [label="/bin/sh -c apt-get update -y     && apt-get install -y python-dev python-setuptools python-pip git     && pip install pytest     && git clone https://github.com/pbrady/fastcache.git     && cd fastcache/ && python setup.py install && python setup.py test     && cd ../ && apt-get -y purge git && apt-get -y autoremove && rm -rf fastcache/" shape="box"];
  "sha256:d989d5ab341fe067ce995a50b86c9251aa963b425160d528f231d8652a63a4c7" [label="sha256:d989d5ab341fe067ce995a50b86c9251aa963b425160d528f231d8652a63a4c7" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:44ee470dae1e411f6e94496611c7fabf4c5f34d3ff4bbf2acbba9500ac595d53" [label=""];
  "sha256:44ee470dae1e411f6e94496611c7fabf4c5f34d3ff4bbf2acbba9500ac595d53" -> "sha256:d989d5ab341fe067ce995a50b86c9251aa963b425160d528f231d8652a63a4c7" [label=""];
}

