[app/sources/182943902.Dockerfile]
digraph {
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" [label="local://context" shape="ellipse"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" [label="docker-image://docker.io/library/python:3.6-slim" shape="ellipse"];
  "sha256:72076914398b13b527763338cb710e86e89cdba08b6bc56f947047e168826efc" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y --no-install-recommends &&     apt-get install -y --no-install-recommends uwsgi nano telnet python-opencv binutils libproj-dev     gdal-bin libglib2.0-0 libsm6 libxrender-dev gettext procps &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8387c35ebeac42723c90421f0eac8e1eee2bd9f71a22d4652ba3eacf69f1ab61" [label="mkdir{path=/home/docker/ajapaik}" shape="note"];
  "sha256:8b5a78ca08c15cc9effa93a3a7ffec954a3131fd610c05e1bbf219e01c0cdfd7" [label="docker-image://docker.io/laurielias/python-3.6-dlib:latest" shape="ellipse"];
  "sha256:ba4657e5c0b699e3f0653ac0eca0bf55671033721599452ec58af848c54eb1d3" [label="/bin/sh -c apt-get update &&     apt-get install -y --fix-missing cmake build-essential gfortran git wget curl graphicsmagick     libgraphicsmagick1-dev libatlas-dev libavcodec-dev libavformat-dev libgtk2.0-dev libjpeg-dev liblapack-dev     libswscale-dev pkg-config python3-dev python3-numpy software-properties-common zip" shape="box"];
  "sha256:ef94be043c313e762f467d7525ebdbfdd05a74e5538a6130da5a240b4675772b" [label="mkdir{path=/home/docker/ajapaik}" shape="note"];
  "sha256:cbe41efe041e6d46575a6a44b700a17ed7239927b8dfb24f37a730f3d78b6d6d" [label="copy{src=/requirements.txt, dest=/home/docker/ajapaik/}" shape="note"];
  "sha256:b1857b0992af5518691ee493ec8621c131f2276e87a8f325c62ac00fcbcb2a7f" [label="/bin/sh -c pip wheel --wheel-dir=./wheels/ uwsgi" shape="box"];
  "sha256:5548633a3ca958eaa35cbd3ca3328eac3d8db11dc92f11fb9a7e4450011c5312" [label="/bin/sh -c pip wheel --wheel-dir=./wheels/ -r requirements.txt" shape="box"];
  "sha256:a4f08de1797b02671353b051fd5b7e54fdd364fd5d85c1d67bdef5b7f2b2e181" [label="copy{src=/home/docker/ajapaik/wheels, dest=/home/docker/ajapaik/wheels}" shape="note"];
  "sha256:c99ac2b63bee78cac68439cdc8d937d1c4a357d94f545389928a41df7740c15a" [label="copy{src=/requirements.txt, dest=/home/docker/ajapaik/},copy{src=/wsgi.py, dest=/home/docker/ajapaik/},copy{src=/manage.py, dest=/home/docker/ajapaik/}" shape="note"];
  "sha256:b61bb99a7bad83c1e14d76563b747d8357f0ee35fee0e7637a7a54f261be8523" [label="/bin/sh -c pip install --no-index --find-links=./wheels uwsgi -r requirements.txt && rm -rf ./wheels" shape="box"];
  "sha256:c561f3c3ad4f897060323439fff3ac32f26ce0fea1117fa1f46977d0d9adc66a" [label="copy{src=/ajapaik, dest=/home/docker/ajapaik/ajapaik}" shape="note"];
  "sha256:d5ec14bcc9380e4d4e10e343f7b7f53ce879af99d542e9403a689a09f663b799" [label="copy{src=/templates, dest=/home/docker/ajapaik/templates}" shape="note"];
  "sha256:e8740717536918cb4e12c9febf7565b1a9f102d534708c6dc8905fa563798436" [label="copy{src=/docker/uwsgi.ini, dest=/home/docker/ajapaik/docker/uwsgi.ini}" shape="note"];
  "sha256:1fcf91812b1ce628d8a9c0513329ed79411c9c336740462dc4da875fa17ed55b" [label="copy{src=/docker/solr, dest=/home/docker/ajapaik/docker/solr}" shape="note"];
  "sha256:bcc57788561134d54eae7479d0cdef5be121703eddb496cb82ebda3bca5f2687" [label="copy{src=/docker/docker-entrypoint.sh, dest=/usr/local/bin/},copy{src=/docker/docker-entrypoint-dev.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:8a750d86dd35d054b9460d98cd1c401fe6698c608b6f57a4c1ba38b57b47bc12" [label="/bin/sh -c chmod +x /usr/local/bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint-dev.sh" shape="box"];
  "sha256:d85c234f5c81648c0e7ec96892dd711f8662de1bd81d6d89f8d0f012c7202e96" [label="sha256:d85c234f5c81648c0e7ec96892dd711f8662de1bd81d6d89f8d0f012c7202e96" shape="plaintext"];
  "sha256:6deb26f03955e867146fc35d7eb4a6a900f737ea2a5a3096c43a19c7c8805fc8" -> "sha256:72076914398b13b527763338cb710e86e89cdba08b6bc56f947047e168826efc" [label=""];
  "sha256:72076914398b13b527763338cb710e86e89cdba08b6bc56f947047e168826efc" -> "sha256:8387c35ebeac42723c90421f0eac8e1eee2bd9f71a22d4652ba3eacf69f1ab61" [label=""];
  "sha256:8b5a78ca08c15cc9effa93a3a7ffec954a3131fd610c05e1bbf219e01c0cdfd7" -> "sha256:ba4657e5c0b699e3f0653ac0eca0bf55671033721599452ec58af848c54eb1d3" [label=""];
  "sha256:ba4657e5c0b699e3f0653ac0eca0bf55671033721599452ec58af848c54eb1d3" -> "sha256:ef94be043c313e762f467d7525ebdbfdd05a74e5538a6130da5a240b4675772b" [label=""];
  "sha256:ef94be043c313e762f467d7525ebdbfdd05a74e5538a6130da5a240b4675772b" -> "sha256:cbe41efe041e6d46575a6a44b700a17ed7239927b8dfb24f37a730f3d78b6d6d" [label=""];
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" -> "sha256:cbe41efe041e6d46575a6a44b700a17ed7239927b8dfb24f37a730f3d78b6d6d" [label=""];
  "sha256:cbe41efe041e6d46575a6a44b700a17ed7239927b8dfb24f37a730f3d78b6d6d" -> "sha256:b1857b0992af5518691ee493ec8621c131f2276e87a8f325c62ac00fcbcb2a7f" [label=""];
  "sha256:b1857b0992af5518691ee493ec8621c131f2276e87a8f325c62ac00fcbcb2a7f" -> "sha256:5548633a3ca958eaa35cbd3ca3328eac3d8db11dc92f11fb9a7e4450011c5312" [label=""];
  "sha256:8387c35ebeac42723c90421f0eac8e1eee2bd9f71a22d4652ba3eacf69f1ab61" -> "sha256:a4f08de1797b02671353b051fd5b7e54fdd364fd5d85c1d67bdef5b7f2b2e181" [label=""];
  "sha256:5548633a3ca958eaa35cbd3ca3328eac3d8db11dc92f11fb9a7e4450011c5312" -> "sha256:a4f08de1797b02671353b051fd5b7e54fdd364fd5d85c1d67bdef5b7f2b2e181" [label=""];
  "sha256:a4f08de1797b02671353b051fd5b7e54fdd364fd5d85c1d67bdef5b7f2b2e181" -> "sha256:c99ac2b63bee78cac68439cdc8d937d1c4a357d94f545389928a41df7740c15a" [label=""];
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" -> "sha256:c99ac2b63bee78cac68439cdc8d937d1c4a357d94f545389928a41df7740c15a" [label=""];
  "sha256:c99ac2b63bee78cac68439cdc8d937d1c4a357d94f545389928a41df7740c15a" -> "sha256:b61bb99a7bad83c1e14d76563b747d8357f0ee35fee0e7637a7a54f261be8523" [label=""];
  "sha256:b61bb99a7bad83c1e14d76563b747d8357f0ee35fee0e7637a7a54f261be8523" -> "sha256:c561f3c3ad4f897060323439fff3ac32f26ce0fea1117fa1f46977d0d9adc66a" [label=""];
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" -> "sha256:c561f3c3ad4f897060323439fff3ac32f26ce0fea1117fa1f46977d0d9adc66a" [label=""];
  "sha256:c561f3c3ad4f897060323439fff3ac32f26ce0fea1117fa1f46977d0d9adc66a" -> "sha256:d5ec14bcc9380e4d4e10e343f7b7f53ce879af99d542e9403a689a09f663b799" [label=""];
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" -> "sha256:d5ec14bcc9380e4d4e10e343f7b7f53ce879af99d542e9403a689a09f663b799" [label=""];
  "sha256:d5ec14bcc9380e4d4e10e343f7b7f53ce879af99d542e9403a689a09f663b799" -> "sha256:e8740717536918cb4e12c9febf7565b1a9f102d534708c6dc8905fa563798436" [label=""];
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" -> "sha256:e8740717536918cb4e12c9febf7565b1a9f102d534708c6dc8905fa563798436" [label=""];
  "sha256:e8740717536918cb4e12c9febf7565b1a9f102d534708c6dc8905fa563798436" -> "sha256:1fcf91812b1ce628d8a9c0513329ed79411c9c336740462dc4da875fa17ed55b" [label=""];
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" -> "sha256:1fcf91812b1ce628d8a9c0513329ed79411c9c336740462dc4da875fa17ed55b" [label=""];
  "sha256:1fcf91812b1ce628d8a9c0513329ed79411c9c336740462dc4da875fa17ed55b" -> "sha256:bcc57788561134d54eae7479d0cdef5be121703eddb496cb82ebda3bca5f2687" [label=""];
  "sha256:e64daecb9b9655da66b0a900cc7c82a0ec0b8c4c929668d79c90778af7ecc0f7" -> "sha256:bcc57788561134d54eae7479d0cdef5be121703eddb496cb82ebda3bca5f2687" [label=""];
  "sha256:bcc57788561134d54eae7479d0cdef5be121703eddb496cb82ebda3bca5f2687" -> "sha256:8a750d86dd35d054b9460d98cd1c401fe6698c608b6f57a4c1ba38b57b47bc12" [label=""];
  "sha256:8a750d86dd35d054b9460d98cd1c401fe6698c608b6f57a4c1ba38b57b47bc12" -> "sha256:d85c234f5c81648c0e7ec96892dd711f8662de1bd81d6d89f8d0f012c7202e96" [label=""];
}

