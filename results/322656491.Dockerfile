[app/sources/322656491.Dockerfile]
digraph {
  "sha256:b819251711afd70c760ae90d7ba20057dd26e4597bd732cadaece08ef9be603a" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:672ec6de9c48d70e39684a2ccd3bd72a67b95c81e01466f5093b7bd3d7565dc9" [label="copy{src=/, dest=/home/py}" shape="note"];
  "sha256:68ef81fc56faeed9d7532bcd306785bd5967c3e5c6fc9dd59601f7892643be5a" [label="mkdir{path=/home/py}" shape="note"];
  "sha256:b054116b9178cfd09899a96fced94989e9a339f9650a8c928b793d93fd227afe" [label="copy{src=/scrapyd.conf, dest=/etc/scrapyd/}" shape="note"];
  "sha256:9178638d027b0e1490813f97428611afd93cbbd34c3910376602e70921cdf155" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:94ec84e674fe9346068c1df9e371f5e320c8b6761071ce3b81c04b692982ed42" [label="sha256:94ec84e674fe9346068c1df9e371f5e320c8b6761071ce3b81c04b692982ed42" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:672ec6de9c48d70e39684a2ccd3bd72a67b95c81e01466f5093b7bd3d7565dc9" [label=""];
  "sha256:b819251711afd70c760ae90d7ba20057dd26e4597bd732cadaece08ef9be603a" -> "sha256:672ec6de9c48d70e39684a2ccd3bd72a67b95c81e01466f5093b7bd3d7565dc9" [label=""];
  "sha256:672ec6de9c48d70e39684a2ccd3bd72a67b95c81e01466f5093b7bd3d7565dc9" -> "sha256:68ef81fc56faeed9d7532bcd306785bd5967c3e5c6fc9dd59601f7892643be5a" [label=""];
  "sha256:68ef81fc56faeed9d7532bcd306785bd5967c3e5c6fc9dd59601f7892643be5a" -> "sha256:b054116b9178cfd09899a96fced94989e9a339f9650a8c928b793d93fd227afe" [label=""];
  "sha256:b819251711afd70c760ae90d7ba20057dd26e4597bd732cadaece08ef9be603a" -> "sha256:b054116b9178cfd09899a96fced94989e9a339f9650a8c928b793d93fd227afe" [label=""];
  "sha256:b054116b9178cfd09899a96fced94989e9a339f9650a8c928b793d93fd227afe" -> "sha256:9178638d027b0e1490813f97428611afd93cbbd34c3910376602e70921cdf155" [label=""];
  "sha256:9178638d027b0e1490813f97428611afd93cbbd34c3910376602e70921cdf155" -> "sha256:94ec84e674fe9346068c1df9e371f5e320c8b6761071ce3b81c04b692982ed42" [label=""];
}

