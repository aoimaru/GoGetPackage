[app/sources/134993521.Dockerfile]
digraph {
  "sha256:8885de162ac41b363eb1f862fd6ff05cb0d7c4c55b69862021cc43bf86a7178e" [label="local://context" shape="ellipse"];
  "sha256:2039ade92e97817839ceb8bd1166eaa2e56df9c18c530c974fe90b287fe8688c" [label="docker-image://docker.io/library/sentry:8.22" shape="ellipse"];
  "sha256:c5935f63582d57a25ab63999b4d0a59ceac8fad1492142274d31f3b3099e6b55" [label="/bin/sh -c apt-get update &&     apt-get install wget -y" shape="box"];
  "sha256:fdf7e9ce8fb2a7b4394549f7b2384e4058c23c1383530478b7562500ea5fd6a2" [label="/bin/sh -c wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add - &&     echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' >> /etc/apt/sources.list.d/postgresql.list &&     apt-get update &&     apt-get install postgresql-client -y" shape="box"];
  "sha256:cec76dedc6678c654743ef273279591ce6bb6e2f6c4effd1a49da1fbee724451" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:403f0941de8be3b7afa3fecc7e7753f060a6f356f3f42f751e2b9863d5a8d37b" [label="copy{src=/initialize.py, dest=/initialize.py}" shape="note"];
  "sha256:b678714cf34dc82232ac6b1885e84cf439f71f0b87fe8eb83b86d1e587ad9724" [label="copy{src=/initialize.json, dest=/initialize.json}" shape="note"];
  "sha256:2286a75935aa82acb122b2d3fe9a1c3c3534a823ec9b54c599626d9708bf9b0d" [label="copy{src=/sentry.conf.py, dest=/sentry.conf.py}" shape="note"];
  "sha256:e8c446684583c320f9606161f5969db7fd0655e8465c0b975354c902c72f37c7" [label="copy{src=/config.yml, dest=/config.yml}" shape="note"];
  "sha256:fde69c7d3f9edd88dd61cbe124ee347d0a2ede2c5603b81e6222f3711ec66d41" [label="/bin/sh -c if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi &&     if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi" shape="box"];
  "sha256:fd6b6a3be8f8c5be814cd71601fed37ad00a6af124096770f974910f46f236b4" [label="sha256:fd6b6a3be8f8c5be814cd71601fed37ad00a6af124096770f974910f46f236b4" shape="plaintext"];
  "sha256:2039ade92e97817839ceb8bd1166eaa2e56df9c18c530c974fe90b287fe8688c" -> "sha256:c5935f63582d57a25ab63999b4d0a59ceac8fad1492142274d31f3b3099e6b55" [label=""];
  "sha256:c5935f63582d57a25ab63999b4d0a59ceac8fad1492142274d31f3b3099e6b55" -> "sha256:fdf7e9ce8fb2a7b4394549f7b2384e4058c23c1383530478b7562500ea5fd6a2" [label=""];
  "sha256:fdf7e9ce8fb2a7b4394549f7b2384e4058c23c1383530478b7562500ea5fd6a2" -> "sha256:cec76dedc6678c654743ef273279591ce6bb6e2f6c4effd1a49da1fbee724451" [label=""];
  "sha256:8885de162ac41b363eb1f862fd6ff05cb0d7c4c55b69862021cc43bf86a7178e" -> "sha256:cec76dedc6678c654743ef273279591ce6bb6e2f6c4effd1a49da1fbee724451" [label=""];
  "sha256:cec76dedc6678c654743ef273279591ce6bb6e2f6c4effd1a49da1fbee724451" -> "sha256:403f0941de8be3b7afa3fecc7e7753f060a6f356f3f42f751e2b9863d5a8d37b" [label=""];
  "sha256:8885de162ac41b363eb1f862fd6ff05cb0d7c4c55b69862021cc43bf86a7178e" -> "sha256:403f0941de8be3b7afa3fecc7e7753f060a6f356f3f42f751e2b9863d5a8d37b" [label=""];
  "sha256:403f0941de8be3b7afa3fecc7e7753f060a6f356f3f42f751e2b9863d5a8d37b" -> "sha256:b678714cf34dc82232ac6b1885e84cf439f71f0b87fe8eb83b86d1e587ad9724" [label=""];
  "sha256:8885de162ac41b363eb1f862fd6ff05cb0d7c4c55b69862021cc43bf86a7178e" -> "sha256:b678714cf34dc82232ac6b1885e84cf439f71f0b87fe8eb83b86d1e587ad9724" [label=""];
  "sha256:b678714cf34dc82232ac6b1885e84cf439f71f0b87fe8eb83b86d1e587ad9724" -> "sha256:2286a75935aa82acb122b2d3fe9a1c3c3534a823ec9b54c599626d9708bf9b0d" [label=""];
  "sha256:8885de162ac41b363eb1f862fd6ff05cb0d7c4c55b69862021cc43bf86a7178e" -> "sha256:2286a75935aa82acb122b2d3fe9a1c3c3534a823ec9b54c599626d9708bf9b0d" [label=""];
  "sha256:2286a75935aa82acb122b2d3fe9a1c3c3534a823ec9b54c599626d9708bf9b0d" -> "sha256:e8c446684583c320f9606161f5969db7fd0655e8465c0b975354c902c72f37c7" [label=""];
  "sha256:8885de162ac41b363eb1f862fd6ff05cb0d7c4c55b69862021cc43bf86a7178e" -> "sha256:e8c446684583c320f9606161f5969db7fd0655e8465c0b975354c902c72f37c7" [label=""];
  "sha256:e8c446684583c320f9606161f5969db7fd0655e8465c0b975354c902c72f37c7" -> "sha256:fde69c7d3f9edd88dd61cbe124ee347d0a2ede2c5603b81e6222f3711ec66d41" [label=""];
  "sha256:fde69c7d3f9edd88dd61cbe124ee347d0a2ede2c5603b81e6222f3711ec66d41" -> "sha256:fd6b6a3be8f8c5be814cd71601fed37ad00a6af124096770f974910f46f236b4" [label=""];
}

