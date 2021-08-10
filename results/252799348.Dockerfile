[app/sources/252799348.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e9ddd0d4110f79012475c2903504e8da5e708fc9e7036735c2aea2da989de1ca" [label="/bin/sh -c apk update && apk upgrade && apk add python zlib py-docutils libxapian xapian-bindings-python uwsgi uwsgi-python && wget -O $package_name $moinmoin_link && mkdir -p /data/moinmoin && tar -xzf $package_name -C $export_dir && find $export_dir -mindepth 2 -maxdepth 2 -print0 | xargs -0 -I {} mv {} $export_dir/ && find $export_dir/ -type d -name \"moin-*\" -print0 | xargs -0 rmdir && rm $package_name && cd $export_dir && python setup.py install --force --prefix=/usr/local && cd \\- && adduser -HD uwsgi && mkdir -p /var/run/moin/ && chown uwsgi:uwsgi /var/run/moin && mkdir -p /var/log/uwsgi/ && chown uwsgi:uwsgi /var/log/uwsgi/ && chown -R uwsgi:uwsgi /usr/local/share/moin" shape="box"];
  "sha256:aa6f82f85db836494db3808da18a0f1e3338bbd074ce389f75ad4fb230f5ecf4" [label="local://context" shape="ellipse"];
  "sha256:c1b7896d78cee85cf73d20c2785668a54d467c804443c89a96baf3bc056fd67c" [label="copy{src=/moin.wsgi, dest=/usr/local/share/moin/server/}" shape="note"];
  "sha256:3dac4789984fe196d4cd5087cc210e460b3cc841a1d87ce6c46748d71999be13" [label="copy{src=/wikiconfig.py, dest=/usr/local/share/moin/config/}" shape="note"];
  "sha256:cabd45c0c5fd9daf035bdcc47d960d60a44b6ec2a0cb442f8cd4ed64c451ea58" [label="copy{src=/uwsgi.ini, dest=/usr/local/share/moin/}" shape="note"];
  "sha256:a46de3257a4d19726d53017d396d08860a39924987e156c342e2c41a06d347b8" [label="sha256:a46de3257a4d19726d53017d396d08860a39924987e156c342e2c41a06d347b8" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e9ddd0d4110f79012475c2903504e8da5e708fc9e7036735c2aea2da989de1ca" [label=""];
  "sha256:e9ddd0d4110f79012475c2903504e8da5e708fc9e7036735c2aea2da989de1ca" -> "sha256:c1b7896d78cee85cf73d20c2785668a54d467c804443c89a96baf3bc056fd67c" [label=""];
  "sha256:aa6f82f85db836494db3808da18a0f1e3338bbd074ce389f75ad4fb230f5ecf4" -> "sha256:c1b7896d78cee85cf73d20c2785668a54d467c804443c89a96baf3bc056fd67c" [label=""];
  "sha256:c1b7896d78cee85cf73d20c2785668a54d467c804443c89a96baf3bc056fd67c" -> "sha256:3dac4789984fe196d4cd5087cc210e460b3cc841a1d87ce6c46748d71999be13" [label=""];
  "sha256:aa6f82f85db836494db3808da18a0f1e3338bbd074ce389f75ad4fb230f5ecf4" -> "sha256:3dac4789984fe196d4cd5087cc210e460b3cc841a1d87ce6c46748d71999be13" [label=""];
  "sha256:3dac4789984fe196d4cd5087cc210e460b3cc841a1d87ce6c46748d71999be13" -> "sha256:cabd45c0c5fd9daf035bdcc47d960d60a44b6ec2a0cb442f8cd4ed64c451ea58" [label=""];
  "sha256:aa6f82f85db836494db3808da18a0f1e3338bbd074ce389f75ad4fb230f5ecf4" -> "sha256:cabd45c0c5fd9daf035bdcc47d960d60a44b6ec2a0cb442f8cd4ed64c451ea58" [label=""];
  "sha256:cabd45c0c5fd9daf035bdcc47d960d60a44b6ec2a0cb442f8cd4ed64c451ea58" -> "sha256:a46de3257a4d19726d53017d396d08860a39924987e156c342e2c41a06d347b8" [label=""];
}

