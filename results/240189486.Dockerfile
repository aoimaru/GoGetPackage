[app/sources/240189486.Dockerfile]
digraph {
  "sha256:45b8324e1d0f13ea928c0fe8097969de2c408ca2a58ac4e2637cd3188ee9bfb4" [label="local://context" shape="ellipse"];
  "sha256:d0d6f65cd00ffc17ad3705bde971af4be0bfb4266bc57689ee940c2aebdc99cf" [label="docker-image://docker.io/library/elixir:1.5" shape="ellipse"];
  "sha256:ac5cb984e4646b620ce1cbc638bfdd9e47e205f217ab5aba0f569c86bc9bad7e" [label="/bin/sh -c apt-get -y -q install git" shape="box"];
  "sha256:f013d9210a4f86bb32111679d3fabb19c5b2e67005f98fe8c148026d9b4f3e1b" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash -" shape="box"];
  "sha256:29f8e20786f9915a82e02cc485411d5f004b089e68ff1dcb585c1f7704e99114" [label="/bin/sh -c apt-get install -y -q nodejs" shape="box"];
  "sha256:40a087dc667ae20eb7177a892d130aaa69d9eaf21134d315051668e66839b55d" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c73aa532335f97af64fc74b8418e9d048f049b9abf038da79d10b0ed98e431f4" [label="mkdir{path=/app}" shape="note"];
  "sha256:7275322aafe124609e284caed26c1494c770c994b1ba98c2df57be0da233c21f" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:19732c8f2e0c41fcc381b9b5996ef702f9e169e54620ab1741239090c7c66d8a" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:06f6675617ebcf4f6374ade198565107f66983f850b3acdd4544ddc7a080af00" [label="/bin/sh -c mix deps.get --only-prod" shape="box"];
  "sha256:6e98e029d424539facad44b70ae3d47506e7b1ddbb49bc8af0cec5665de871e6" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b2a871543c82a0f7ff97743c546e3e697ebc5601410e16ec0182fb1e9a972f2f" [label="/bin/sh -c ./build_release.sh" shape="box"];
  "sha256:bad064f2bb7cf32ecb692a0c4ce0e312a063bdfba773092d763020c862e750a2" [label="sha256:bad064f2bb7cf32ecb692a0c4ce0e312a063bdfba773092d763020c862e750a2" shape="plaintext"];
  "sha256:d0d6f65cd00ffc17ad3705bde971af4be0bfb4266bc57689ee940c2aebdc99cf" -> "sha256:ac5cb984e4646b620ce1cbc638bfdd9e47e205f217ab5aba0f569c86bc9bad7e" [label=""];
  "sha256:ac5cb984e4646b620ce1cbc638bfdd9e47e205f217ab5aba0f569c86bc9bad7e" -> "sha256:f013d9210a4f86bb32111679d3fabb19c5b2e67005f98fe8c148026d9b4f3e1b" [label=""];
  "sha256:f013d9210a4f86bb32111679d3fabb19c5b2e67005f98fe8c148026d9b4f3e1b" -> "sha256:29f8e20786f9915a82e02cc485411d5f004b089e68ff1dcb585c1f7704e99114" [label=""];
  "sha256:29f8e20786f9915a82e02cc485411d5f004b089e68ff1dcb585c1f7704e99114" -> "sha256:40a087dc667ae20eb7177a892d130aaa69d9eaf21134d315051668e66839b55d" [label=""];
  "sha256:45b8324e1d0f13ea928c0fe8097969de2c408ca2a58ac4e2637cd3188ee9bfb4" -> "sha256:40a087dc667ae20eb7177a892d130aaa69d9eaf21134d315051668e66839b55d" [label=""];
  "sha256:40a087dc667ae20eb7177a892d130aaa69d9eaf21134d315051668e66839b55d" -> "sha256:c73aa532335f97af64fc74b8418e9d048f049b9abf038da79d10b0ed98e431f4" [label=""];
  "sha256:c73aa532335f97af64fc74b8418e9d048f049b9abf038da79d10b0ed98e431f4" -> "sha256:7275322aafe124609e284caed26c1494c770c994b1ba98c2df57be0da233c21f" [label=""];
  "sha256:7275322aafe124609e284caed26c1494c770c994b1ba98c2df57be0da233c21f" -> "sha256:19732c8f2e0c41fcc381b9b5996ef702f9e169e54620ab1741239090c7c66d8a" [label=""];
  "sha256:19732c8f2e0c41fcc381b9b5996ef702f9e169e54620ab1741239090c7c66d8a" -> "sha256:06f6675617ebcf4f6374ade198565107f66983f850b3acdd4544ddc7a080af00" [label=""];
  "sha256:06f6675617ebcf4f6374ade198565107f66983f850b3acdd4544ddc7a080af00" -> "sha256:6e98e029d424539facad44b70ae3d47506e7b1ddbb49bc8af0cec5665de871e6" [label=""];
  "sha256:6e98e029d424539facad44b70ae3d47506e7b1ddbb49bc8af0cec5665de871e6" -> "sha256:b2a871543c82a0f7ff97743c546e3e697ebc5601410e16ec0182fb1e9a972f2f" [label=""];
  "sha256:b2a871543c82a0f7ff97743c546e3e697ebc5601410e16ec0182fb1e9a972f2f" -> "sha256:bad064f2bb7cf32ecb692a0c4ce0e312a063bdfba773092d763020c862e750a2" [label=""];
}

