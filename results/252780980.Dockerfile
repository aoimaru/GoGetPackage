[app/sources/252780980.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:b13fc5a6093caf1df03a6d870353a1c3ae8dc76cb12f31d93c0f4e4ad666ac78" [label="local://context" shape="ellipse"];
  "sha256:8ef6e135c486414b93237561f5808d12a538a8c939a7d518c2397e54e20812a5" [label="copy{src=/transforms.patch, dest=/}" shape="note"];
  "sha256:98f67dbc2dd7b03b1b9ae9013ebc214fa6cd82ee12416b6b67e386a6e9b03d90" [label="copy{src=/webapp.patch, dest=/}" shape="note"];
  "sha256:5f96eb0d1484a2ea8a8657f83f46364ce37bcf8669f3f380abf429d76701a339" [label="copy{src=/src/s3resolver.py, dest=/}" shape="note"];
  "sha256:d8e7dac3db184ab12f38df2f47b6a045f72facd778e185dd417fabfaaeb6f894" [label="/bin/sh -c apk add --update --no-cache --virtual .build-deps freetype-dev gcc git lcms2-dev libjpeg-turbo-dev musl-dev py-setuptools py2-pip python2-dev tiff-dev zlib-dev && apk add freetype lcms2 lcms2-utils libjpeg-turbo musl openjpeg openjpeg-tools python2 tiff zlib && pip install --upgrade pip && pip install Werkzeug && pip install configobj && pip install Pillow && pip install boto3 && git clone https://github.com/loris-imageserver/loris.git /opt/loris && cd /opt/loris && git checkout --detach ${LORIS_CHECKOUT} && rm -rf /opt/loris/.git && rm -rf /opt/loris/lib && rm /opt/loris/LICENSE-Kakadu.txt && mkdir -p /var/www/loris2 && adduser -h /var/www/loris2 -s /bin/false -D loris && chown loris.loris /var/www/loris2 && mkdir -p /usr/local/share/images && mv /opt/loris/tests/img/* /usr/local/share/images/ && cd /opt/loris && mv /transforms.patch /opt/loris/ && mv /webapp.patch /opt/loris/ && patch -p0 -i transforms.patch && patch -p0 -i webapp.patch && mv /s3resolver.py /opt/loris/loris/ && ./setup.py install && apk del .build-deps && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:2ac27f824ebb05c660f59c48ddb95ad26b7c3f192582afe30da5b49d5db294d7" [label="copy{src=/conf/loris2.conf, dest=/etc/loris2/}" shape="note"];
  "sha256:27c986934340ddcd133c3a09779baf300ac13a8e3ddc9929caed627f79715073" [label="mkdir{path=/opt/loris/loris}" shape="note"];
  "sha256:fc052ae9ec220fe764c76a8d12eb8ee5af69fee9178cab871f2bb795ba43f484" [label="sha256:fc052ae9ec220fe764c76a8d12eb8ee5af69fee9178cab871f2bb795ba43f484" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:8ef6e135c486414b93237561f5808d12a538a8c939a7d518c2397e54e20812a5" [label=""];
  "sha256:b13fc5a6093caf1df03a6d870353a1c3ae8dc76cb12f31d93c0f4e4ad666ac78" -> "sha256:8ef6e135c486414b93237561f5808d12a538a8c939a7d518c2397e54e20812a5" [label=""];
  "sha256:8ef6e135c486414b93237561f5808d12a538a8c939a7d518c2397e54e20812a5" -> "sha256:98f67dbc2dd7b03b1b9ae9013ebc214fa6cd82ee12416b6b67e386a6e9b03d90" [label=""];
  "sha256:b13fc5a6093caf1df03a6d870353a1c3ae8dc76cb12f31d93c0f4e4ad666ac78" -> "sha256:98f67dbc2dd7b03b1b9ae9013ebc214fa6cd82ee12416b6b67e386a6e9b03d90" [label=""];
  "sha256:98f67dbc2dd7b03b1b9ae9013ebc214fa6cd82ee12416b6b67e386a6e9b03d90" -> "sha256:5f96eb0d1484a2ea8a8657f83f46364ce37bcf8669f3f380abf429d76701a339" [label=""];
  "sha256:b13fc5a6093caf1df03a6d870353a1c3ae8dc76cb12f31d93c0f4e4ad666ac78" -> "sha256:5f96eb0d1484a2ea8a8657f83f46364ce37bcf8669f3f380abf429d76701a339" [label=""];
  "sha256:5f96eb0d1484a2ea8a8657f83f46364ce37bcf8669f3f380abf429d76701a339" -> "sha256:d8e7dac3db184ab12f38df2f47b6a045f72facd778e185dd417fabfaaeb6f894" [label=""];
  "sha256:d8e7dac3db184ab12f38df2f47b6a045f72facd778e185dd417fabfaaeb6f894" -> "sha256:2ac27f824ebb05c660f59c48ddb95ad26b7c3f192582afe30da5b49d5db294d7" [label=""];
  "sha256:b13fc5a6093caf1df03a6d870353a1c3ae8dc76cb12f31d93c0f4e4ad666ac78" -> "sha256:2ac27f824ebb05c660f59c48ddb95ad26b7c3f192582afe30da5b49d5db294d7" [label=""];
  "sha256:2ac27f824ebb05c660f59c48ddb95ad26b7c3f192582afe30da5b49d5db294d7" -> "sha256:27c986934340ddcd133c3a09779baf300ac13a8e3ddc9929caed627f79715073" [label=""];
  "sha256:27c986934340ddcd133c3a09779baf300ac13a8e3ddc9929caed627f79715073" -> "sha256:fc052ae9ec220fe764c76a8d12eb8ee5af69fee9178cab871f2bb795ba43f484" [label=""];
}

