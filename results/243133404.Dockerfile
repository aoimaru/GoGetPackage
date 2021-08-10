[app/sources/243133404.Dockerfile]
digraph {
  "sha256:8af452e86bc02aa8e5616c141d255eba67d763e771de5da4d4651de1defef84c" [label="docker-image://docker.io/ppc64le/python:2.7" shape="ellipse"];
  "sha256:473f618bcb832fb98a12eee5e459ac370056f405fb5748e6b2349ac89a276bca" [label="/bin/sh -c apt-get update -y && apt-get install -y mercurial     && hg clone https://bitbucket.org/philip_semanchuk/posix_ipc/src     && cd src/ && python setup.py install && python setup.py test \t&& cd ../ && apt-get -y autoremove && rm -rf src/" shape="box"];
  "sha256:997b0667e8b2acaeef5a9c28682959296ddea81116749bd2d1623e8f2416e450" [label="sha256:997b0667e8b2acaeef5a9c28682959296ddea81116749bd2d1623e8f2416e450" shape="plaintext"];
  "sha256:8af452e86bc02aa8e5616c141d255eba67d763e771de5da4d4651de1defef84c" -> "sha256:473f618bcb832fb98a12eee5e459ac370056f405fb5748e6b2349ac89a276bca" [label=""];
  "sha256:473f618bcb832fb98a12eee5e459ac370056f405fb5748e6b2349ac89a276bca" -> "sha256:997b0667e8b2acaeef5a9c28682959296ddea81116749bd2d1623e8f2416e450" [label=""];
}

