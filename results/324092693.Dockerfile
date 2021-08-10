[app/sources/324092693.Dockerfile]
digraph {
  "sha256:b2a96f23b24bdec827c9a9fd35d01b04a3f506ce1bfaff9dcddf0724f0db4cc6" [label="local://context" shape="ellipse"];
  "sha256:4cf71e660f6b6999134952258bfb61da46813eae0da33ea7e147ef20104edd76" [label="docker-image://docker.io/oclock/static-nginx-nodejs:latest" shape="ellipse"];
  "sha256:e276f80c26a71851f324ccec4774cf0ff262f623f51031ea57a335aafd58e8e3" [label="/bin/sh -c apk update &&     apk add --no-cache --update alpine-sdk python yarn" shape="box"];
  "sha256:c00eb1b09fbe7e1061edad28b88f8021cf2540c55998f9de1c3a10d3625c35ed" [label="/bin/sh -c apk add vips-dev fftw-dev build-base     --update-cache     --repository http://dl-3.alpinelinux.org/alpine/edge/testing/     --repository http://dl-3.alpinelinux.org/alpine/edge/main     --allow-untrusted" shape="box"];
  "sha256:de1af57565ef286a18ff7b927ea21ff546108ad554c86694f621aba9655239c0" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:cf2ee71388ee6ca809ca1cdf159403b0b2a106989b1ae92ca97d4464a7f0a0bd" [label="mkdir{path=/src}" shape="note"];
  "sha256:bc37ada5472b000327fb54bc41466ca5476b3a99b3cc5be2da564118cfae3678" [label="/bin/sh -c yarn global add node-gyp &&     yarn --pure-lockfile --non-interactive" shape="box"];
  "sha256:99a7174406956d1000176ae784175557a982cadcc09a5d732011fc3ce6e9cc5a" [label="/bin/sh -c rm -rf public .cache &&     ./node_modules/.bin/gatsby build &&     mkdir -p /var/www &&     sh -c \"mv /src/public/* /var/www/\"" shape="box"];
  "sha256:8d059d1e626b57963bbcd61aeeb3710a1ead03c8c3945b2e2819b6ca10d1a92f" [label="sha256:8d059d1e626b57963bbcd61aeeb3710a1ead03c8c3945b2e2819b6ca10d1a92f" shape="plaintext"];
  "sha256:4cf71e660f6b6999134952258bfb61da46813eae0da33ea7e147ef20104edd76" -> "sha256:e276f80c26a71851f324ccec4774cf0ff262f623f51031ea57a335aafd58e8e3" [label=""];
  "sha256:e276f80c26a71851f324ccec4774cf0ff262f623f51031ea57a335aafd58e8e3" -> "sha256:c00eb1b09fbe7e1061edad28b88f8021cf2540c55998f9de1c3a10d3625c35ed" [label=""];
  "sha256:c00eb1b09fbe7e1061edad28b88f8021cf2540c55998f9de1c3a10d3625c35ed" -> "sha256:de1af57565ef286a18ff7b927ea21ff546108ad554c86694f621aba9655239c0" [label=""];
  "sha256:b2a96f23b24bdec827c9a9fd35d01b04a3f506ce1bfaff9dcddf0724f0db4cc6" -> "sha256:de1af57565ef286a18ff7b927ea21ff546108ad554c86694f621aba9655239c0" [label=""];
  "sha256:de1af57565ef286a18ff7b927ea21ff546108ad554c86694f621aba9655239c0" -> "sha256:cf2ee71388ee6ca809ca1cdf159403b0b2a106989b1ae92ca97d4464a7f0a0bd" [label=""];
  "sha256:cf2ee71388ee6ca809ca1cdf159403b0b2a106989b1ae92ca97d4464a7f0a0bd" -> "sha256:bc37ada5472b000327fb54bc41466ca5476b3a99b3cc5be2da564118cfae3678" [label=""];
  "sha256:bc37ada5472b000327fb54bc41466ca5476b3a99b3cc5be2da564118cfae3678" -> "sha256:99a7174406956d1000176ae784175557a982cadcc09a5d732011fc3ce6e9cc5a" [label=""];
  "sha256:99a7174406956d1000176ae784175557a982cadcc09a5d732011fc3ce6e9cc5a" -> "sha256:8d059d1e626b57963bbcd61aeeb3710a1ead03c8c3945b2e2819b6ca10d1a92f" [label=""];
}

