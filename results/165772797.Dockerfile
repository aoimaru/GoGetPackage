[app/sources/165772797.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:306250e7c2656b34c83f98f8266669c6282b3597c795a1de942cab3be7841c65" [label="/bin/sh -c apt-get update && apt-get install -y \tsoftware-properties-common \t--no-install-recommends && \tadd-apt-repository ppa:yubico/stable && \tapt-get update && apt-get install -y \tca-certificates \tcurl \tlibjson0 \tlibusb-1.0-0 \tlibyubikey0 \tpcscd \tprocps \tusbutils \tyubikey-personalization \tyubico-piv-tool \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:89b744c0071e97126dd7c872bbc897fad950216dc0a27c9a0210123054afbd8a" [label="mkdir{path=/root}" shape="note"];
  "sha256:53a92b9d64c342f3cf5ea6d0351ade0f5514bafe86a0914a51c85ef5445f516a" [label="local://context" shape="ellipse"];
  "sha256:188a4d231ef5af46eed7da567626910d758f98710458b5411e0cc6d1107be47c" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:f3774568c78cf7703f51b7d08a60632da5eba1b84090f1cc9e4160f6aac86bca" [label="sha256:f3774568c78cf7703f51b7d08a60632da5eba1b84090f1cc9e4160f6aac86bca" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:306250e7c2656b34c83f98f8266669c6282b3597c795a1de942cab3be7841c65" [label=""];
  "sha256:306250e7c2656b34c83f98f8266669c6282b3597c795a1de942cab3be7841c65" -> "sha256:89b744c0071e97126dd7c872bbc897fad950216dc0a27c9a0210123054afbd8a" [label=""];
  "sha256:89b744c0071e97126dd7c872bbc897fad950216dc0a27c9a0210123054afbd8a" -> "sha256:188a4d231ef5af46eed7da567626910d758f98710458b5411e0cc6d1107be47c" [label=""];
  "sha256:53a92b9d64c342f3cf5ea6d0351ade0f5514bafe86a0914a51c85ef5445f516a" -> "sha256:188a4d231ef5af46eed7da567626910d758f98710458b5411e0cc6d1107be47c" [label=""];
  "sha256:188a4d231ef5af46eed7da567626910d758f98710458b5411e0cc6d1107be47c" -> "sha256:f3774568c78cf7703f51b7d08a60632da5eba1b84090f1cc9e4160f6aac86bca" [label=""];
}

