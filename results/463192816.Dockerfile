[app/sources/463192816.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:3cbf3e6c1c5848dab0c4d9a1349243acfd4373028cf7140a3ee7c6067efd81e0" [label="local://context" shape="ellipse"];
  "sha256:1f8a6c1f2977a2dc63c2e016e9b83297fcdc30274d043b1fbbac2f24b9ce1af8" [label="copy{src=/docker/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:91dd1822f9092413bf43a639f09da5871e0efdd07c92b91576e94e15c569cc31" [label="copy{src=/docker/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:43e0d6a7ae057b8f4134787b410f877a43913f43161ee593ad7a16912ad665d0" [label="/bin/sh -c apk add --update openssl make git" shape="box"];
  "sha256:24267c049e074ddccf58c89e669f6b8bccf55a5803bc7971d747757101133b0f" [label="copy{src=/install-hugo.sh, dest=/install-hugo.sh}" shape="note"];
  "sha256:157b77f212a872c6e01ef2576b864a776c9e4d9debf63a18a91290d2eada3fb6" [label="/bin/sh -c /install-hugo.sh" shape="box"];
  "sha256:8d4762d8c280df1f3a5e6f25838c1cda91eb68ccbcc7d66e2fca0be8cbed3b0f" [label="copy{src=/, dest=/go/src/go.nlx.io/nlx/docs}" shape="note"];
  "sha256:89b6fd39ec8f8538ab49f76cfd400ad324af9f7db99901fa573168ce4e056e1a" [label="mkdir{path=/go/src/go.nlx.io/nlx/docs}" shape="note"];
  "sha256:8dfc6ebad7dde1f05dffef4163c15df57ef47133e858b1cee7c51d7cf57cc456" [label="/bin/sh -c make" shape="box"];
  "sha256:8852060b72a3d700e47eecacde5b18d1c807bedcbfddb15c9b1f71fd2829b61a" [label="copy{src=/go/src/go.nlx.io/nlx/docs/public, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:a2153965d2979e8ef0707510a728d3692becb0ca069fa34d3cf75274a72c5e58" [label="/bin/sh -c adduser -D -u 1001 appuser" shape="box"];
  "sha256:20b7a817145bb3055cd9542e5a575346a86c0f56884938e19f8e489a1a8ce5c6" [label="/bin/sh -c touch /var/run/nginx.pid &&     chown -R appuser /var/run/nginx.pid &&     chown -R appuser /var/cache/nginx" shape="box"];
  "sha256:4a0263872b9e0abe6cdc609a5549eca3c19cbdc46de2fcce8446c2fd88366336" [label="sha256:4a0263872b9e0abe6cdc609a5549eca3c19cbdc46de2fcce8446c2fd88366336" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:1f8a6c1f2977a2dc63c2e016e9b83297fcdc30274d043b1fbbac2f24b9ce1af8" [label=""];
  "sha256:3cbf3e6c1c5848dab0c4d9a1349243acfd4373028cf7140a3ee7c6067efd81e0" -> "sha256:1f8a6c1f2977a2dc63c2e016e9b83297fcdc30274d043b1fbbac2f24b9ce1af8" [label=""];
  "sha256:1f8a6c1f2977a2dc63c2e016e9b83297fcdc30274d043b1fbbac2f24b9ce1af8" -> "sha256:91dd1822f9092413bf43a639f09da5871e0efdd07c92b91576e94e15c569cc31" [label=""];
  "sha256:3cbf3e6c1c5848dab0c4d9a1349243acfd4373028cf7140a3ee7c6067efd81e0" -> "sha256:91dd1822f9092413bf43a639f09da5871e0efdd07c92b91576e94e15c569cc31" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:43e0d6a7ae057b8f4134787b410f877a43913f43161ee593ad7a16912ad665d0" [label=""];
  "sha256:43e0d6a7ae057b8f4134787b410f877a43913f43161ee593ad7a16912ad665d0" -> "sha256:24267c049e074ddccf58c89e669f6b8bccf55a5803bc7971d747757101133b0f" [label=""];
  "sha256:3cbf3e6c1c5848dab0c4d9a1349243acfd4373028cf7140a3ee7c6067efd81e0" -> "sha256:24267c049e074ddccf58c89e669f6b8bccf55a5803bc7971d747757101133b0f" [label=""];
  "sha256:24267c049e074ddccf58c89e669f6b8bccf55a5803bc7971d747757101133b0f" -> "sha256:157b77f212a872c6e01ef2576b864a776c9e4d9debf63a18a91290d2eada3fb6" [label=""];
  "sha256:157b77f212a872c6e01ef2576b864a776c9e4d9debf63a18a91290d2eada3fb6" -> "sha256:8d4762d8c280df1f3a5e6f25838c1cda91eb68ccbcc7d66e2fca0be8cbed3b0f" [label=""];
  "sha256:3cbf3e6c1c5848dab0c4d9a1349243acfd4373028cf7140a3ee7c6067efd81e0" -> "sha256:8d4762d8c280df1f3a5e6f25838c1cda91eb68ccbcc7d66e2fca0be8cbed3b0f" [label=""];
  "sha256:8d4762d8c280df1f3a5e6f25838c1cda91eb68ccbcc7d66e2fca0be8cbed3b0f" -> "sha256:89b6fd39ec8f8538ab49f76cfd400ad324af9f7db99901fa573168ce4e056e1a" [label=""];
  "sha256:89b6fd39ec8f8538ab49f76cfd400ad324af9f7db99901fa573168ce4e056e1a" -> "sha256:8dfc6ebad7dde1f05dffef4163c15df57ef47133e858b1cee7c51d7cf57cc456" [label=""];
  "sha256:91dd1822f9092413bf43a639f09da5871e0efdd07c92b91576e94e15c569cc31" -> "sha256:8852060b72a3d700e47eecacde5b18d1c807bedcbfddb15c9b1f71fd2829b61a" [label=""];
  "sha256:8dfc6ebad7dde1f05dffef4163c15df57ef47133e858b1cee7c51d7cf57cc456" -> "sha256:8852060b72a3d700e47eecacde5b18d1c807bedcbfddb15c9b1f71fd2829b61a" [label=""];
  "sha256:8852060b72a3d700e47eecacde5b18d1c807bedcbfddb15c9b1f71fd2829b61a" -> "sha256:a2153965d2979e8ef0707510a728d3692becb0ca069fa34d3cf75274a72c5e58" [label=""];
  "sha256:a2153965d2979e8ef0707510a728d3692becb0ca069fa34d3cf75274a72c5e58" -> "sha256:20b7a817145bb3055cd9542e5a575346a86c0f56884938e19f8e489a1a8ce5c6" [label=""];
  "sha256:20b7a817145bb3055cd9542e5a575346a86c0f56884938e19f8e489a1a8ce5c6" -> "sha256:4a0263872b9e0abe6cdc609a5549eca3c19cbdc46de2fcce8446c2fd88366336" [label=""];
}

