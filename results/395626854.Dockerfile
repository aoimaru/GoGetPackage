[app/sources/395626854.Dockerfile]
digraph {
  "sha256:4c1b25df9ca71027caf0a927ff78771d59c1f329b6713703e6ab4b9910d11c58" [label="local://context" shape="ellipse"];
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" [label="docker-image://docker.io/library/python:3.6-slim-stretch" shape="ellipse"];
  "sha256:f43e5126c91a45bd516e85850e09e7b1b0f3306e3587ad8b2bb42456a7b30c40" [label="/bin/sh -c apt-get update     && apt-get install -y         ca-certificates         gcc         git         libev4         libev-dev         libevent-dev         libxml2-dev         libxslt1-dev         libffi-dev         python-dev         libpq-dev         zlib1g-dev     && apt-get clean     && apt-get autoremove -y     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f6543b6a1b5598c363f4f833d8a25be7328cc0b087af5eed04967b4e986bbddc" [label="/bin/sh -c apt-get update     && apt-get install -y         curl         gnupg2     && mkdir ~/.gnupg && chmod 600 ~/.gnupg && echo \"disable-ipv6\" >> ~/.gnupg/dirmngr.conf     && for server in hkp://ipv4.pool.sks-keyservers.net:80                      kp://ha.pool.sks-keyservers.net:80                      hkp://pgp.mit.edu:80                      hkp://keyserver.pgp.com:80     ; do         gpg --keyserver \"$server\" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || echo \"Trying new server...\"     ; done     && curl -o /usr/local/bin/gosu -SL \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\"     && curl -o /usr/local/bin/gosu.asc -SL \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\"     && gpg --verify /usr/local/bin/gosu.asc     && rm /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && apt-get clean     && apt-get autoremove -y         curl         gnupg2     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:23ab7b6580b967484e68134d4242d0efa614c85cf9576fd3ac349c57c7f72741" [label="/bin/sh -c update-ca-certificates" shape="box"];
  "sha256:e2b36f46e606042be7e44ae6a8e396624049437cda9e9be99ea882054900828e" [label="/bin/sh -c mkdir -p /code" shape="box"];
  "sha256:e64893b9f03f60bc3f0825d5ddc21c746786d2e5e4e20802a80396ef84eee271" [label="mkdir{path=/code}" shape="note"];
  "sha256:546383359461d9f0171e2521be632cc69a727f2d21e99786a56e70c427eb2b02" [label="/bin/sh -c pip install -U pip" shape="box"];
  "sha256:05099ed9d356875a0e68a710f7755bda5415a425f537bf6950aaf0c5cacec4d9" [label="/bin/sh -c pip install uwsgi==2.0.16" shape="box"];
  "sha256:e1b82b5b6f327b3c2014a41f6c628e71ef790eb76e4e45d8120abf64da2f4e9c" [label="copy{src=/requirements.txt, dest=/code/requirements.txt}" shape="note"];
  "sha256:3a2a16f120bf24863e861553ab4a1ff8b4ec1bb15b64b6d5205327237e1d3b44" [label="copy{src=/constraints.txt, dest=/code/constraints.txt}" shape="note"];
  "sha256:f10416175d83dc80d1654eab66c654ca2fcf3337d246766d5673bfbcb9d7885d" [label="/bin/sh -c pip install --no-cache-dir -c /code/constraints.txt -r /code/requirements.txt" shape="box"];
  "sha256:b9e85233ed3e82ddafb59814c4b3029ef1254dca7209865e61afadda5e99b1ab" [label="/bin/sh -c apt-get remove -y     gcc     zlib1g-dev" shape="box"];
  "sha256:bd302e9b2024d7713f43c1dc07aac02210a65642bdcb3d6c73faed14dd7c50bc" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:aae13e216adf7a620ea84d4c7c860482ea05bbb40ad1adafaed4841e4832f53c" [label="/bin/sh -c python manage.py collectstatic --noinput" shape="box"];
  "sha256:31202ccd9c9fd2312a80adf51b60fe523262c5b0da19d1df874374e620b55b45" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:b1ed0f3d63e1a1e99f0defb260a5289264c0b608f63ddac48ba7a9c8af7bb94b" [label="/bin/sh -c pip install --no-cache-dir -c /code/constraints.txt -r /code/dev-requirements.txt" shape="box"];
  "sha256:c75f2647e005bbaa1c860fc0798741508e7d3291096a8d8ce4914c135a29aa53" [label="sha256:c75f2647e005bbaa1c860fc0798741508e7d3291096a8d8ce4914c135a29aa53" shape="plaintext"];
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" -> "sha256:f43e5126c91a45bd516e85850e09e7b1b0f3306e3587ad8b2bb42456a7b30c40" [label=""];
  "sha256:f43e5126c91a45bd516e85850e09e7b1b0f3306e3587ad8b2bb42456a7b30c40" -> "sha256:f6543b6a1b5598c363f4f833d8a25be7328cc0b087af5eed04967b4e986bbddc" [label=""];
  "sha256:f6543b6a1b5598c363f4f833d8a25be7328cc0b087af5eed04967b4e986bbddc" -> "sha256:23ab7b6580b967484e68134d4242d0efa614c85cf9576fd3ac349c57c7f72741" [label=""];
  "sha256:23ab7b6580b967484e68134d4242d0efa614c85cf9576fd3ac349c57c7f72741" -> "sha256:e2b36f46e606042be7e44ae6a8e396624049437cda9e9be99ea882054900828e" [label=""];
  "sha256:e2b36f46e606042be7e44ae6a8e396624049437cda9e9be99ea882054900828e" -> "sha256:e64893b9f03f60bc3f0825d5ddc21c746786d2e5e4e20802a80396ef84eee271" [label=""];
  "sha256:e64893b9f03f60bc3f0825d5ddc21c746786d2e5e4e20802a80396ef84eee271" -> "sha256:546383359461d9f0171e2521be632cc69a727f2d21e99786a56e70c427eb2b02" [label=""];
  "sha256:546383359461d9f0171e2521be632cc69a727f2d21e99786a56e70c427eb2b02" -> "sha256:05099ed9d356875a0e68a710f7755bda5415a425f537bf6950aaf0c5cacec4d9" [label=""];
  "sha256:05099ed9d356875a0e68a710f7755bda5415a425f537bf6950aaf0c5cacec4d9" -> "sha256:e1b82b5b6f327b3c2014a41f6c628e71ef790eb76e4e45d8120abf64da2f4e9c" [label=""];
  "sha256:4c1b25df9ca71027caf0a927ff78771d59c1f329b6713703e6ab4b9910d11c58" -> "sha256:e1b82b5b6f327b3c2014a41f6c628e71ef790eb76e4e45d8120abf64da2f4e9c" [label=""];
  "sha256:e1b82b5b6f327b3c2014a41f6c628e71ef790eb76e4e45d8120abf64da2f4e9c" -> "sha256:3a2a16f120bf24863e861553ab4a1ff8b4ec1bb15b64b6d5205327237e1d3b44" [label=""];
  "sha256:4c1b25df9ca71027caf0a927ff78771d59c1f329b6713703e6ab4b9910d11c58" -> "sha256:3a2a16f120bf24863e861553ab4a1ff8b4ec1bb15b64b6d5205327237e1d3b44" [label=""];
  "sha256:3a2a16f120bf24863e861553ab4a1ff8b4ec1bb15b64b6d5205327237e1d3b44" -> "sha256:f10416175d83dc80d1654eab66c654ca2fcf3337d246766d5673bfbcb9d7885d" [label=""];
  "sha256:f10416175d83dc80d1654eab66c654ca2fcf3337d246766d5673bfbcb9d7885d" -> "sha256:b9e85233ed3e82ddafb59814c4b3029ef1254dca7209865e61afadda5e99b1ab" [label=""];
  "sha256:b9e85233ed3e82ddafb59814c4b3029ef1254dca7209865e61afadda5e99b1ab" -> "sha256:bd302e9b2024d7713f43c1dc07aac02210a65642bdcb3d6c73faed14dd7c50bc" [label=""];
  "sha256:4c1b25df9ca71027caf0a927ff78771d59c1f329b6713703e6ab4b9910d11c58" -> "sha256:bd302e9b2024d7713f43c1dc07aac02210a65642bdcb3d6c73faed14dd7c50bc" [label=""];
  "sha256:bd302e9b2024d7713f43c1dc07aac02210a65642bdcb3d6c73faed14dd7c50bc" -> "sha256:aae13e216adf7a620ea84d4c7c860482ea05bbb40ad1adafaed4841e4832f53c" [label=""];
  "sha256:aae13e216adf7a620ea84d4c7c860482ea05bbb40ad1adafaed4841e4832f53c" -> "sha256:31202ccd9c9fd2312a80adf51b60fe523262c5b0da19d1df874374e620b55b45" [label=""];
  "sha256:31202ccd9c9fd2312a80adf51b60fe523262c5b0da19d1df874374e620b55b45" -> "sha256:b1ed0f3d63e1a1e99f0defb260a5289264c0b608f63ddac48ba7a9c8af7bb94b" [label=""];
  "sha256:b1ed0f3d63e1a1e99f0defb260a5289264c0b608f63ddac48ba7a9c8af7bb94b" -> "sha256:c75f2647e005bbaa1c860fc0798741508e7d3291096a8d8ce4914c135a29aa53" [label=""];
}

