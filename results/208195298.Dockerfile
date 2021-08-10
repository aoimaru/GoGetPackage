[app/sources/208195298.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:401a80907fd85b57d27bf92ba55fd93efa5d855e5dc73f60cb17d91007a32814" [label="/bin/sh -c useradd --user-group --create-home --shell /bin/false ${USER}" shape="box"];
  "sha256:582f265a815ad039bff01a9e0ec206dba26847df854aa4bd185e9263cfd49217" [label="mkdir{path=/home/logos}" shape="note"];
  "sha256:2faa6e2daefa543ca35b0ddd515897a3c9482f9b56ebd8bce105242c187e4f5c" [label="local://context" shape="ellipse"];
  "sha256:f8eaa23a5513f987b9ba00660769d517a230306f3e6cdddf3da2afe34350545a" [label="copy{src=/package.json, dest=/home/logos}" shape="note"];
  "sha256:ba90f8d550e7a37b3e1189d697c820e798685b9753ba4bf3b4c494c36aeb5221" [label="copy{src=/bin/update-logos, dest=/home/logos/bin/update-logos}" shape="note"];
  "sha256:0958075acc1aacacf3d8d62ed00bb143e6919c01839e4f4d65abcaf75088f00c" [label="/bin/sh -c npm install --unsafe-perm --production" shape="box"];
  "sha256:4046031dedf6851893e90935a071f30d63fb6b5a6612eb42f7c45f593f20e1b8" [label="copy{src=/, dest=/home/logos}" shape="note"];
  "sha256:cbc662279cd8f48eb388db619fd20819dd3e37f811edd760dd60b7e608c4eafb" [label="sha256:cbc662279cd8f48eb388db619fd20819dd3e37f811edd760dd60b7e608c4eafb" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:401a80907fd85b57d27bf92ba55fd93efa5d855e5dc73f60cb17d91007a32814" [label=""];
  "sha256:401a80907fd85b57d27bf92ba55fd93efa5d855e5dc73f60cb17d91007a32814" -> "sha256:582f265a815ad039bff01a9e0ec206dba26847df854aa4bd185e9263cfd49217" [label=""];
  "sha256:582f265a815ad039bff01a9e0ec206dba26847df854aa4bd185e9263cfd49217" -> "sha256:f8eaa23a5513f987b9ba00660769d517a230306f3e6cdddf3da2afe34350545a" [label=""];
  "sha256:2faa6e2daefa543ca35b0ddd515897a3c9482f9b56ebd8bce105242c187e4f5c" -> "sha256:f8eaa23a5513f987b9ba00660769d517a230306f3e6cdddf3da2afe34350545a" [label=""];
  "sha256:f8eaa23a5513f987b9ba00660769d517a230306f3e6cdddf3da2afe34350545a" -> "sha256:ba90f8d550e7a37b3e1189d697c820e798685b9753ba4bf3b4c494c36aeb5221" [label=""];
  "sha256:2faa6e2daefa543ca35b0ddd515897a3c9482f9b56ebd8bce105242c187e4f5c" -> "sha256:ba90f8d550e7a37b3e1189d697c820e798685b9753ba4bf3b4c494c36aeb5221" [label=""];
  "sha256:ba90f8d550e7a37b3e1189d697c820e798685b9753ba4bf3b4c494c36aeb5221" -> "sha256:0958075acc1aacacf3d8d62ed00bb143e6919c01839e4f4d65abcaf75088f00c" [label=""];
  "sha256:0958075acc1aacacf3d8d62ed00bb143e6919c01839e4f4d65abcaf75088f00c" -> "sha256:4046031dedf6851893e90935a071f30d63fb6b5a6612eb42f7c45f593f20e1b8" [label=""];
  "sha256:2faa6e2daefa543ca35b0ddd515897a3c9482f9b56ebd8bce105242c187e4f5c" -> "sha256:4046031dedf6851893e90935a071f30d63fb6b5a6612eb42f7c45f593f20e1b8" [label=""];
  "sha256:4046031dedf6851893e90935a071f30d63fb6b5a6612eb42f7c45f593f20e1b8" -> "sha256:cbc662279cd8f48eb388db619fd20819dd3e37f811edd760dd60b7e608c4eafb" [label=""];
}

