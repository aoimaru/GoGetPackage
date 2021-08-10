[app/sources/252768230.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:0b68dddfc35809179c70580c31704534294a80b582271c14458d32c00a5a21f2" [label="/bin/sh -c apt-get -y --force-yes update" shape="box"];
  "sha256:a4b34ac1ece248e8b87498ad5aec72a78878f1a3313d85252a1a58dc309737d7" [label="/bin/sh -c apt-get install -y cmake make libboost-all-dev libxml2-dev libxml++2.6-dev libsqlite3-dev libhdf5-serial-dev libbz2-dev coinor-libcbc-dev coinor-libcoinutils-dev coinor-libosi-dev coinor-libclp-dev coinor-libcgl-dev libblas-dev liblapack-dev g++ libgoogle-perftools-dev git python3 python3-dev python3-tables python3-numpy python3-nose python3-jinja2 python3-pip" shape="box"];
  "sha256:54489c5ae634f2385d28da64c093515a4545719b2c92cb8f5dfbf9b65bbf57a9" [label="/bin/sh -c pip3 install Cython" shape="box"];
  "sha256:ce09ca167e67b8b31bb76b12db473ea989be7dc1c92d676706a93778238b7ac8" [label="/bin/sh -c rm /usr/bin/python" shape="box"];
  "sha256:b1fd708b71efee030a9c84119956aae4153d8586d210051c97fe6a3845e0f867" [label="/bin/sh -c ln -s /usr/bin/python3 /usr/bin/python" shape="box"];
  "sha256:50eff2b7053f1c8c32bbc3ec921864423e37fa394d7f2a8630bd9b5df5e526ca" [label="/bin/sh -c git clone https://github.com/cyclus/cyclus.git" shape="box"];
  "sha256:42c4351b79bba53076ef2e136f0559dcd13705f2cf39750e60f96e01dc7acf43" [label="/bin/sh -c cd cyclus && python install.py && cd -" shape="box"];
  "sha256:8447daa006c7656dc73188819154468ae5e10bc806ad2ec81d8e7de5ad750d39" [label="sha256:8447daa006c7656dc73188819154468ae5e10bc806ad2ec81d8e7de5ad750d39" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:0b68dddfc35809179c70580c31704534294a80b582271c14458d32c00a5a21f2" [label=""];
  "sha256:0b68dddfc35809179c70580c31704534294a80b582271c14458d32c00a5a21f2" -> "sha256:a4b34ac1ece248e8b87498ad5aec72a78878f1a3313d85252a1a58dc309737d7" [label=""];
  "sha256:a4b34ac1ece248e8b87498ad5aec72a78878f1a3313d85252a1a58dc309737d7" -> "sha256:54489c5ae634f2385d28da64c093515a4545719b2c92cb8f5dfbf9b65bbf57a9" [label=""];
  "sha256:54489c5ae634f2385d28da64c093515a4545719b2c92cb8f5dfbf9b65bbf57a9" -> "sha256:ce09ca167e67b8b31bb76b12db473ea989be7dc1c92d676706a93778238b7ac8" [label=""];
  "sha256:ce09ca167e67b8b31bb76b12db473ea989be7dc1c92d676706a93778238b7ac8" -> "sha256:b1fd708b71efee030a9c84119956aae4153d8586d210051c97fe6a3845e0f867" [label=""];
  "sha256:b1fd708b71efee030a9c84119956aae4153d8586d210051c97fe6a3845e0f867" -> "sha256:50eff2b7053f1c8c32bbc3ec921864423e37fa394d7f2a8630bd9b5df5e526ca" [label=""];
  "sha256:50eff2b7053f1c8c32bbc3ec921864423e37fa394d7f2a8630bd9b5df5e526ca" -> "sha256:42c4351b79bba53076ef2e136f0559dcd13705f2cf39750e60f96e01dc7acf43" [label=""];
  "sha256:42c4351b79bba53076ef2e136f0559dcd13705f2cf39750e60f96e01dc7acf43" -> "sha256:8447daa006c7656dc73188819154468ae5e10bc806ad2ec81d8e7de5ad750d39" [label=""];
}

