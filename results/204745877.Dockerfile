[app/sources/204745877.Dockerfile]
digraph {
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" [label="docker-image://docker.io/docs/base:latest" shape="ellipse"];
  "sha256:c61d4800d96c14896ab914873ede048f9c502e71f866cce54566a36a9b1d186d" [label="/bin/sh -c svn checkout https://github.com/docker/compose/trunk/docs /docs/content/compose" shape="box"];
  "sha256:4be64cc3eb0257828a7571593196d4b90d110fdb2379ca43317406d7138111ba" [label="/bin/sh -c svn checkout https://github.com/docker/swarm/trunk/docs /docs/content/swarm" shape="box"];
  "sha256:3e4ed8898a158b1b2b1db76816e7185735f542dd961e6fb47993aec88aadd731" [label="/bin/sh -c svn checkout https://github.com/docker/machine/trunk/docs /docs/content/machine" shape="box"];
  "sha256:6cc987cc53c2de3dc2c6138b296ba59c692092ebfaecbbffbe6a3d31f3370b5f" [label="/bin/sh -c svn checkout https://github.com/docker/distribution/trunk/docs /docs/content/registry" shape="box"];
  "sha256:15c443afcd54d543f2ea7ba15fc70babe555837404d1de63099b86ac8770946a" [label="/bin/sh -c svn checkout https://github.com/kitematic/kitematic/trunk/docs /docs/content/kitematic" shape="box"];
  "sha256:eddf2fa8b2da2be0fa2335771fcd5b0c1e5e2fa720349cd4d58f6bb8eeddddff" [label="/bin/sh -c svn checkout https://github.com/docker/tutorials/trunk/docs /docs/content/" shape="box"];
  "sha256:a05b79aefcb6befbaaa47bedbccb78dc8c59e36e13622e40cb7d99b813ade005" [label="/bin/sh -c svn checkout https://github.com/docker/opensource/trunk/docs /docs/content/opensource" shape="box"];
  "sha256:ccb301c47a2e1f09f95d59445aecdf0adc966cd07a1a823f5360c6cdfe9c0d02" [label="local://context" shape="ellipse"];
  "sha256:d223102ddb349428f29c96d412c8a00140fa5500f82b0f063f7ec840adaf3e60" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:40a8fcb5fe2f9d05844b007f5b0df37e80eeed25cbfbdc3b13224cb57e41e26c" [label="copy{src=/, dest=/docs/content/engine/}" shape="note"];
  "sha256:5a2f1f9006fb328d28db2c36c6d8f66ba5b904b5287c3f3d53bd0d82c7631cb7" [label="sha256:5a2f1f9006fb328d28db2c36c6d8f66ba5b904b5287c3f3d53bd0d82c7631cb7" shape="plaintext"];
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" -> "sha256:c61d4800d96c14896ab914873ede048f9c502e71f866cce54566a36a9b1d186d" [label=""];
  "sha256:c61d4800d96c14896ab914873ede048f9c502e71f866cce54566a36a9b1d186d" -> "sha256:4be64cc3eb0257828a7571593196d4b90d110fdb2379ca43317406d7138111ba" [label=""];
  "sha256:4be64cc3eb0257828a7571593196d4b90d110fdb2379ca43317406d7138111ba" -> "sha256:3e4ed8898a158b1b2b1db76816e7185735f542dd961e6fb47993aec88aadd731" [label=""];
  "sha256:3e4ed8898a158b1b2b1db76816e7185735f542dd961e6fb47993aec88aadd731" -> "sha256:6cc987cc53c2de3dc2c6138b296ba59c692092ebfaecbbffbe6a3d31f3370b5f" [label=""];
  "sha256:6cc987cc53c2de3dc2c6138b296ba59c692092ebfaecbbffbe6a3d31f3370b5f" -> "sha256:15c443afcd54d543f2ea7ba15fc70babe555837404d1de63099b86ac8770946a" [label=""];
  "sha256:15c443afcd54d543f2ea7ba15fc70babe555837404d1de63099b86ac8770946a" -> "sha256:eddf2fa8b2da2be0fa2335771fcd5b0c1e5e2fa720349cd4d58f6bb8eeddddff" [label=""];
  "sha256:eddf2fa8b2da2be0fa2335771fcd5b0c1e5e2fa720349cd4d58f6bb8eeddddff" -> "sha256:a05b79aefcb6befbaaa47bedbccb78dc8c59e36e13622e40cb7d99b813ade005" [label=""];
  "sha256:a05b79aefcb6befbaaa47bedbccb78dc8c59e36e13622e40cb7d99b813ade005" -> "sha256:d223102ddb349428f29c96d412c8a00140fa5500f82b0f063f7ec840adaf3e60" [label=""];
  "sha256:ccb301c47a2e1f09f95d59445aecdf0adc966cd07a1a823f5360c6cdfe9c0d02" -> "sha256:d223102ddb349428f29c96d412c8a00140fa5500f82b0f063f7ec840adaf3e60" [label=""];
  "sha256:d223102ddb349428f29c96d412c8a00140fa5500f82b0f063f7ec840adaf3e60" -> "sha256:40a8fcb5fe2f9d05844b007f5b0df37e80eeed25cbfbdc3b13224cb57e41e26c" [label=""];
  "sha256:ccb301c47a2e1f09f95d59445aecdf0adc966cd07a1a823f5360c6cdfe9c0d02" -> "sha256:40a8fcb5fe2f9d05844b007f5b0df37e80eeed25cbfbdc3b13224cb57e41e26c" [label=""];
  "sha256:40a8fcb5fe2f9d05844b007f5b0df37e80eeed25cbfbdc3b13224cb57e41e26c" -> "sha256:5a2f1f9006fb328d28db2c36c6d8f66ba5b904b5287c3f3d53bd0d82c7631cb7" [label=""];
}

