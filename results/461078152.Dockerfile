[app/sources/461078152.Dockerfile]
digraph {
  "sha256:0ed785d071216df7e6c4c6e0643889894c6ef7ec07da82381791576f7dd5e212" [label="docker-image://docker.io/library/nginx@sha256:8f335768880da6baf72b70c701002b45f4932acae8d574dedfddaf967fc3ac90" shape="ellipse"];
  "sha256:e0f0379b16e2a31142fd29a1a4177ec061471c79e7396abd5bc43acb0c1d1877" [label="local://context" shape="ellipse"];
  "sha256:c9e52c3b4c83899746d5d6fa9996de3529e804b43f42eebe3361df9c516efe0f" [label="copy{src=/index2.html, dest=/usr/share/nginx/html/index2.html}" shape="note"];
  "sha256:4c9ee9c43b5c3d2e61fd36e0879fc0603d06cefb5aaceda809fe553efc874b21" [label="/bin/sh -c chmod +r /usr/share/nginx/html/index2.html" shape="box"];
  "sha256:514d5f1dee5865a6e8bff295891cf1e358ec3563dc96003530dd12a1b5105844" [label="copy{src=/auto-reload-nginx.sh, dest=/home/auto-reload-nginx.sh}" shape="note"];
  "sha256:efd2c674e2643bfdb7a2348b08af34f466e3881334fab8aa934b91dc3a7fe1e0" [label="/bin/sh -c chmod +x /home/auto-reload-nginx.sh" shape="box"];
  "sha256:23047b1e0331a1d4e3d3a0b22ca95c700e1bae94edeb0e29f36f01c9ccfbd639" [label="/bin/sh -c apt-get update && apt-get install -y inotify-tools" shape="box"];
  "sha256:45238a06f23e76ba120297853116221b748fef273ae2fb0e6f33e9336377a271" [label="sha256:45238a06f23e76ba120297853116221b748fef273ae2fb0e6f33e9336377a271" shape="plaintext"];
  "sha256:0ed785d071216df7e6c4c6e0643889894c6ef7ec07da82381791576f7dd5e212" -> "sha256:c9e52c3b4c83899746d5d6fa9996de3529e804b43f42eebe3361df9c516efe0f" [label=""];
  "sha256:e0f0379b16e2a31142fd29a1a4177ec061471c79e7396abd5bc43acb0c1d1877" -> "sha256:c9e52c3b4c83899746d5d6fa9996de3529e804b43f42eebe3361df9c516efe0f" [label=""];
  "sha256:c9e52c3b4c83899746d5d6fa9996de3529e804b43f42eebe3361df9c516efe0f" -> "sha256:4c9ee9c43b5c3d2e61fd36e0879fc0603d06cefb5aaceda809fe553efc874b21" [label=""];
  "sha256:4c9ee9c43b5c3d2e61fd36e0879fc0603d06cefb5aaceda809fe553efc874b21" -> "sha256:514d5f1dee5865a6e8bff295891cf1e358ec3563dc96003530dd12a1b5105844" [label=""];
  "sha256:e0f0379b16e2a31142fd29a1a4177ec061471c79e7396abd5bc43acb0c1d1877" -> "sha256:514d5f1dee5865a6e8bff295891cf1e358ec3563dc96003530dd12a1b5105844" [label=""];
  "sha256:514d5f1dee5865a6e8bff295891cf1e358ec3563dc96003530dd12a1b5105844" -> "sha256:efd2c674e2643bfdb7a2348b08af34f466e3881334fab8aa934b91dc3a7fe1e0" [label=""];
  "sha256:efd2c674e2643bfdb7a2348b08af34f466e3881334fab8aa934b91dc3a7fe1e0" -> "sha256:23047b1e0331a1d4e3d3a0b22ca95c700e1bae94edeb0e29f36f01c9ccfbd639" [label=""];
  "sha256:23047b1e0331a1d4e3d3a0b22ca95c700e1bae94edeb0e29f36f01c9ccfbd639" -> "sha256:45238a06f23e76ba120297853116221b748fef273ae2fb0e6f33e9336377a271" [label=""];
}

