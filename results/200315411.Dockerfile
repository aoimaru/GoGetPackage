[app/sources/200315411.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" [label="mkdir{path=/root}" shape="note"];
  "sha256:aa9448557f2ac2ccb64da7d35a2c8be81a635c2bce79be8dc776ceabb0cd49b9" [label="local://context" shape="ellipse"];
  "sha256:dc6ef8d731c059d1c6fa78ab411a714f36d670bfc95b7ab6cea1a823273e09c5" [label="copy{src=/, dest=/root}" shape="note"];
  "sha256:e0c31782f92ca361674c525d9651350770262708ba7d31c3ccc81a7e3daf741e" [label="/bin/sh -c apt-get update && apt-get -y install sudo apt-utils" shape="box"];
  "sha256:3fa3c28968190825b9d28b9c5d3db497e7e539ad1fb4f9e0c6cd5f1d26f7c8cb" [label="/bin/sh -c ./extra/provision.sh -m $MODE -c $TYPE -k $KEY -C $CRT -D $DOMAIN -e $EMAIL -s `pwd` --docker --multiple-servers --server-type hhvm --mysql-server mysql --cache-server cache" shape="box"];
  "sha256:f2fb847891fce81fe564a5062e02bbc08e76b45509e7975b3993b6a9921c6e8b" [label="sha256:f2fb847891fce81fe564a5062e02bbc08e76b45509e7975b3993b6a9921c6e8b" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" [label=""];
  "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" -> "sha256:dc6ef8d731c059d1c6fa78ab411a714f36d670bfc95b7ab6cea1a823273e09c5" [label=""];
  "sha256:aa9448557f2ac2ccb64da7d35a2c8be81a635c2bce79be8dc776ceabb0cd49b9" -> "sha256:dc6ef8d731c059d1c6fa78ab411a714f36d670bfc95b7ab6cea1a823273e09c5" [label=""];
  "sha256:dc6ef8d731c059d1c6fa78ab411a714f36d670bfc95b7ab6cea1a823273e09c5" -> "sha256:e0c31782f92ca361674c525d9651350770262708ba7d31c3ccc81a7e3daf741e" [label=""];
  "sha256:e0c31782f92ca361674c525d9651350770262708ba7d31c3ccc81a7e3daf741e" -> "sha256:3fa3c28968190825b9d28b9c5d3db497e7e539ad1fb4f9e0c6cd5f1d26f7c8cb" [label=""];
  "sha256:3fa3c28968190825b9d28b9c5d3db497e7e539ad1fb4f9e0c6cd5f1d26f7c8cb" -> "sha256:f2fb847891fce81fe564a5062e02bbc08e76b45509e7975b3993b6a9921c6e8b" [label=""];
}

