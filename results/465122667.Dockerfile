[app/sources/465122667.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:67e6a0f38f876be79cd343886290fa844c777ef2c11cc695ec4ba351bcff6b1b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:3c01bce3fa720534f8bcecc4e95579ee9ffcc20ef052564ddd5638f6170e4fd9" [label="local://context" shape="ellipse"];
  "sha256:b6fc6fa415c9674308cafa6541b90ae5b0102204f978f678a152ca7318cfeb00" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:13f749bf552011aa5810c2c8a28a9e353ebdc0defa54a23c44be8ee2ceb29070" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:fc330b05e2c54c1d5f464518b84dd9accf220e1fe7f532383dc43cee248fd33e" [label="copy{src=/xenon, dest=/usr/src/app/}" shape="note"];
  "sha256:36a6bf87d529bcd1bda8a010827383bc491eaf0f73cc9cdc1fd22a576e355dcf" [label="sha256:36a6bf87d529bcd1bda8a010827383bc491eaf0f73cc9cdc1fd22a576e355dcf" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:67e6a0f38f876be79cd343886290fa844c777ef2c11cc695ec4ba351bcff6b1b" [label=""];
  "sha256:67e6a0f38f876be79cd343886290fa844c777ef2c11cc695ec4ba351bcff6b1b" -> "sha256:b6fc6fa415c9674308cafa6541b90ae5b0102204f978f678a152ca7318cfeb00" [label=""];
  "sha256:3c01bce3fa720534f8bcecc4e95579ee9ffcc20ef052564ddd5638f6170e4fd9" -> "sha256:b6fc6fa415c9674308cafa6541b90ae5b0102204f978f678a152ca7318cfeb00" [label=""];
  "sha256:b6fc6fa415c9674308cafa6541b90ae5b0102204f978f678a152ca7318cfeb00" -> "sha256:13f749bf552011aa5810c2c8a28a9e353ebdc0defa54a23c44be8ee2ceb29070" [label=""];
  "sha256:13f749bf552011aa5810c2c8a28a9e353ebdc0defa54a23c44be8ee2ceb29070" -> "sha256:fc330b05e2c54c1d5f464518b84dd9accf220e1fe7f532383dc43cee248fd33e" [label=""];
  "sha256:3c01bce3fa720534f8bcecc4e95579ee9ffcc20ef052564ddd5638f6170e4fd9" -> "sha256:fc330b05e2c54c1d5f464518b84dd9accf220e1fe7f532383dc43cee248fd33e" [label=""];
  "sha256:fc330b05e2c54c1d5f464518b84dd9accf220e1fe7f532383dc43cee248fd33e" -> "sha256:36a6bf87d529bcd1bda8a010827383bc491eaf0f73cc9cdc1fd22a576e355dcf" [label=""];
}

