[app/sources/283335850.Dockerfile]
digraph {
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" [label="docker-image://docker.io/tiangolo/uwsgi-nginx-flask:python3.6" shape="ellipse"];
  "sha256:8c306c6c3256a596b4bff42262ea16e1dda326fcadf2d3bd902ff4bc50181472" [label="/bin/sh -c apt-get -qq update &&     apt-get install -y     libgeos-dev     libspatialindex-dev     gdal-bin     postgresql-client     man     unzip     --fix-missing     > /dev/null" shape="box"];
  "sha256:f1fa42c24c5cd6247286821c66e4f0fb4c42498a4048f9b2e4b14d5fd053c57a" [label="local://context" shape="ellipse"];
  "sha256:4b97d79edbfc448bdc8a40f0ea1be962c482da8bd10bca12ef5b097a94fb3118" [label="copy{src=/app/main.py, dest=/app/main.py}" shape="note"];
  "sha256:d5b74c683259b9eb049828e40f6fca21261f2aa8adf8f1346bdc77963d2fd86e" [label="copy{src=/lib, dest=/usr/local/lib/python3.6/site-packages/backend/lib}" shape="note"];
  "sha256:38722d170af5ede3c122d028845e4e7c51a9dd12b11d12271eac5f9a1c68d7c3" [label="copy{src=/app, dest=/usr/local/lib/python3.6/site-packages/backend/app}" shape="note"];
  "sha256:7c529cf8108d1f5afae423fd0691b69efc536aa19f0881dd5bf0b814ed4553e5" [label="copy{src=/config/uwsgi.ini, dest=/app/uwsgi.ini}" shape="note"];
  "sha256:4e3c06553670bc321980c8a7132dedad210a96c0adabe7e86df146256d08c758" [label="copy{src=/config/nginx.conf, dest=/etc/nginx/conf.d/nginx.conf}" shape="note"];
  "sha256:ea176121ac3c7968ceec4c8b147c0c984f1e60abc74b8ec6c0486af914e17af2" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:5409dd6a8d6e75551ee574e829ea1fcde78daa48bec9fa9c4e13302ddf3de512" [label="/bin/sh -c pip -q install -r ./requirements.txt" shape="box"];
  "sha256:5b5d2c6321633050844867a103aa4a7daab6edf69fa7665a145028037849b052" [label="sha256:5b5d2c6321633050844867a103aa4a7daab6edf69fa7665a145028037849b052" shape="plaintext"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" -> "sha256:8c306c6c3256a596b4bff42262ea16e1dda326fcadf2d3bd902ff4bc50181472" [label=""];
  "sha256:8c306c6c3256a596b4bff42262ea16e1dda326fcadf2d3bd902ff4bc50181472" -> "sha256:4b97d79edbfc448bdc8a40f0ea1be962c482da8bd10bca12ef5b097a94fb3118" [label=""];
  "sha256:f1fa42c24c5cd6247286821c66e4f0fb4c42498a4048f9b2e4b14d5fd053c57a" -> "sha256:4b97d79edbfc448bdc8a40f0ea1be962c482da8bd10bca12ef5b097a94fb3118" [label=""];
  "sha256:4b97d79edbfc448bdc8a40f0ea1be962c482da8bd10bca12ef5b097a94fb3118" -> "sha256:d5b74c683259b9eb049828e40f6fca21261f2aa8adf8f1346bdc77963d2fd86e" [label=""];
  "sha256:f1fa42c24c5cd6247286821c66e4f0fb4c42498a4048f9b2e4b14d5fd053c57a" -> "sha256:d5b74c683259b9eb049828e40f6fca21261f2aa8adf8f1346bdc77963d2fd86e" [label=""];
  "sha256:d5b74c683259b9eb049828e40f6fca21261f2aa8adf8f1346bdc77963d2fd86e" -> "sha256:38722d170af5ede3c122d028845e4e7c51a9dd12b11d12271eac5f9a1c68d7c3" [label=""];
  "sha256:f1fa42c24c5cd6247286821c66e4f0fb4c42498a4048f9b2e4b14d5fd053c57a" -> "sha256:38722d170af5ede3c122d028845e4e7c51a9dd12b11d12271eac5f9a1c68d7c3" [label=""];
  "sha256:38722d170af5ede3c122d028845e4e7c51a9dd12b11d12271eac5f9a1c68d7c3" -> "sha256:7c529cf8108d1f5afae423fd0691b69efc536aa19f0881dd5bf0b814ed4553e5" [label=""];
  "sha256:f1fa42c24c5cd6247286821c66e4f0fb4c42498a4048f9b2e4b14d5fd053c57a" -> "sha256:7c529cf8108d1f5afae423fd0691b69efc536aa19f0881dd5bf0b814ed4553e5" [label=""];
  "sha256:7c529cf8108d1f5afae423fd0691b69efc536aa19f0881dd5bf0b814ed4553e5" -> "sha256:4e3c06553670bc321980c8a7132dedad210a96c0adabe7e86df146256d08c758" [label=""];
  "sha256:f1fa42c24c5cd6247286821c66e4f0fb4c42498a4048f9b2e4b14d5fd053c57a" -> "sha256:4e3c06553670bc321980c8a7132dedad210a96c0adabe7e86df146256d08c758" [label=""];
  "sha256:4e3c06553670bc321980c8a7132dedad210a96c0adabe7e86df146256d08c758" -> "sha256:ea176121ac3c7968ceec4c8b147c0c984f1e60abc74b8ec6c0486af914e17af2" [label=""];
  "sha256:f1fa42c24c5cd6247286821c66e4f0fb4c42498a4048f9b2e4b14d5fd053c57a" -> "sha256:ea176121ac3c7968ceec4c8b147c0c984f1e60abc74b8ec6c0486af914e17af2" [label=""];
  "sha256:ea176121ac3c7968ceec4c8b147c0c984f1e60abc74b8ec6c0486af914e17af2" -> "sha256:5409dd6a8d6e75551ee574e829ea1fcde78daa48bec9fa9c4e13302ddf3de512" [label=""];
  "sha256:5409dd6a8d6e75551ee574e829ea1fcde78daa48bec9fa9c4e13302ddf3de512" -> "sha256:5b5d2c6321633050844867a103aa4a7daab6edf69fa7665a145028037849b052" [label=""];
}

