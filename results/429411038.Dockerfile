[app/sources/429411038.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:3426790c8d6119221ef5de08166a0cee98ae37d887d4c09bc1470f173b8bc26e" [label="/bin/sh -c apt update     && apt upgrade -y" shape="box"];
  "sha256:5b5fca64ba9f60837a3416eb26308fccc32f0c9f1a299e27fe468159b53f0050" [label="/bin/sh -c apt install gcc build-essential git gzip arduino gawk curl -y" shape="box"];
  "sha256:ab6a76592bae1268bd73fd7412d991ccfd7d8c6dc5acfcaffc233a9780e2b4dd" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -; apt install nodejs -y" shape="box"];
  "sha256:c11699bdf152e8c73d46896d86d5c1719bc070c07e262d43f2080e68fbd0b2ba" [label="mkdir{path=/opt/server}" shape="note"];
  "sha256:e19e585aa02612be7f36e7f295aaac2e5e17c941c022a8e4fcdd3b50fbd38733" [label="local://context" shape="ellipse"];
  "sha256:08146125a65a003668e77a98b6889e9142cbd5784e3d71b25c5f7f111c1a98d4" [label="copy{src=/src, dest=/opt/server}" shape="note"];
  "sha256:10e759c78d66aeb695cfb8b35b78473e09dbbef61f62e987b2924a363b24e77e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fc159eab8335d73d4e08be20925b896a6964139bbfafda21107bed4c1519d855" [label="/bin/sh -c mkdir -p /opt/builder" shape="box"];
  "sha256:4d8b6bd02921c1be1fd301609edfff669d7f9368e88f137ae0de532f011ede70" [label="sha256:4d8b6bd02921c1be1fd301609edfff669d7f9368e88f137ae0de532f011ede70" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:3426790c8d6119221ef5de08166a0cee98ae37d887d4c09bc1470f173b8bc26e" [label=""];
  "sha256:3426790c8d6119221ef5de08166a0cee98ae37d887d4c09bc1470f173b8bc26e" -> "sha256:5b5fca64ba9f60837a3416eb26308fccc32f0c9f1a299e27fe468159b53f0050" [label=""];
  "sha256:5b5fca64ba9f60837a3416eb26308fccc32f0c9f1a299e27fe468159b53f0050" -> "sha256:ab6a76592bae1268bd73fd7412d991ccfd7d8c6dc5acfcaffc233a9780e2b4dd" [label=""];
  "sha256:ab6a76592bae1268bd73fd7412d991ccfd7d8c6dc5acfcaffc233a9780e2b4dd" -> "sha256:c11699bdf152e8c73d46896d86d5c1719bc070c07e262d43f2080e68fbd0b2ba" [label=""];
  "sha256:c11699bdf152e8c73d46896d86d5c1719bc070c07e262d43f2080e68fbd0b2ba" -> "sha256:08146125a65a003668e77a98b6889e9142cbd5784e3d71b25c5f7f111c1a98d4" [label=""];
  "sha256:e19e585aa02612be7f36e7f295aaac2e5e17c941c022a8e4fcdd3b50fbd38733" -> "sha256:08146125a65a003668e77a98b6889e9142cbd5784e3d71b25c5f7f111c1a98d4" [label=""];
  "sha256:08146125a65a003668e77a98b6889e9142cbd5784e3d71b25c5f7f111c1a98d4" -> "sha256:10e759c78d66aeb695cfb8b35b78473e09dbbef61f62e987b2924a363b24e77e" [label=""];
  "sha256:10e759c78d66aeb695cfb8b35b78473e09dbbef61f62e987b2924a363b24e77e" -> "sha256:fc159eab8335d73d4e08be20925b896a6964139bbfafda21107bed4c1519d855" [label=""];
  "sha256:fc159eab8335d73d4e08be20925b896a6964139bbfafda21107bed4c1519d855" -> "sha256:4d8b6bd02921c1be1fd301609edfff669d7f9368e88f137ae0de532f011ede70" [label=""];
}

