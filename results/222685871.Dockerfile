[app/sources/222685871.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:9046e1fd470ac4a4d8d14517e54afb31dcebf7dc1a69c3eb8d064bf5c9974a7b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:beb417df085c707a113a0386e6941652d05fa504b1d98e9383ce44a66a2b923f" [label="/bin/sh -c apt-get install --no-install-recommends -y supervisor" shape="box"];
  "sha256:cdc2231dc0140cd5b94afce18c740243b2e944eaa76a507a0920cf78c18f1dc2" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:12eb02176fd6db7866b8f0fad8bdc36b7a834a8f55c8ea1b688b764588e43a3d" [label="/bin/sh -c pip install uwsgi" shape="box"];
  "sha256:c75b277aa7036b3815207acabc47477c5d457f11e9bf8c3dcadd2c898661e299" [label="/bin/sh -c groupadd uwsgi && useradd -g uwsgi uwsgi" shape="box"];
  "sha256:2eb7507cf9e0dde52aac6a36687355529c593f7a5f9116c4294c129f00afa0ea" [label="local://context" shape="ellipse"];
  "sha256:744eddfc84118ace133bdf2efb24e83c2df83514479b978c979f6fef71cb72c9" [label="copy{src=/, dest=/srv/}" shape="note"];
  "sha256:4c073d7bfdd47daf20754af07d1d3ec58f0b7ad7cea2ae15dac5b32f8a884d39" [label="/bin/sh -c ln -s /srv/supervisor-app.conf /etc/supervisor/conf.d/" shape="box"];
  "sha256:a95f0f0be5744383647cc3ee99080c7d0f77efbe0bc38e8bac274f5b321167a1" [label="/bin/sh -c pip install -r /srv/app/requirements.txt" shape="box"];
  "sha256:8c118a7728009e3ce99a7e8e0b6312a9b8fe0f95b8451975ad807648b8b8919b" [label="/bin/sh -c chown -R uwsgi:uwsgi /srv" shape="box"];
  "sha256:1d38acdec6f769976357abf5d3e8eefdd4a41b1a3cc0d2512c2a3cc25aeb26d5" [label="sha256:1d38acdec6f769976357abf5d3e8eefdd4a41b1a3cc0d2512c2a3cc25aeb26d5" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:9046e1fd470ac4a4d8d14517e54afb31dcebf7dc1a69c3eb8d064bf5c9974a7b" [label=""];
  "sha256:9046e1fd470ac4a4d8d14517e54afb31dcebf7dc1a69c3eb8d064bf5c9974a7b" -> "sha256:beb417df085c707a113a0386e6941652d05fa504b1d98e9383ce44a66a2b923f" [label=""];
  "sha256:beb417df085c707a113a0386e6941652d05fa504b1d98e9383ce44a66a2b923f" -> "sha256:cdc2231dc0140cd5b94afce18c740243b2e944eaa76a507a0920cf78c18f1dc2" [label=""];
  "sha256:cdc2231dc0140cd5b94afce18c740243b2e944eaa76a507a0920cf78c18f1dc2" -> "sha256:12eb02176fd6db7866b8f0fad8bdc36b7a834a8f55c8ea1b688b764588e43a3d" [label=""];
  "sha256:12eb02176fd6db7866b8f0fad8bdc36b7a834a8f55c8ea1b688b764588e43a3d" -> "sha256:c75b277aa7036b3815207acabc47477c5d457f11e9bf8c3dcadd2c898661e299" [label=""];
  "sha256:c75b277aa7036b3815207acabc47477c5d457f11e9bf8c3dcadd2c898661e299" -> "sha256:744eddfc84118ace133bdf2efb24e83c2df83514479b978c979f6fef71cb72c9" [label=""];
  "sha256:2eb7507cf9e0dde52aac6a36687355529c593f7a5f9116c4294c129f00afa0ea" -> "sha256:744eddfc84118ace133bdf2efb24e83c2df83514479b978c979f6fef71cb72c9" [label=""];
  "sha256:744eddfc84118ace133bdf2efb24e83c2df83514479b978c979f6fef71cb72c9" -> "sha256:4c073d7bfdd47daf20754af07d1d3ec58f0b7ad7cea2ae15dac5b32f8a884d39" [label=""];
  "sha256:4c073d7bfdd47daf20754af07d1d3ec58f0b7ad7cea2ae15dac5b32f8a884d39" -> "sha256:a95f0f0be5744383647cc3ee99080c7d0f77efbe0bc38e8bac274f5b321167a1" [label=""];
  "sha256:a95f0f0be5744383647cc3ee99080c7d0f77efbe0bc38e8bac274f5b321167a1" -> "sha256:8c118a7728009e3ce99a7e8e0b6312a9b8fe0f95b8451975ad807648b8b8919b" [label=""];
  "sha256:8c118a7728009e3ce99a7e8e0b6312a9b8fe0f95b8451975ad807648b8b8919b" -> "sha256:1d38acdec6f769976357abf5d3e8eefdd4a41b1a3cc0d2512c2a3cc25aeb26d5" [label=""];
}

