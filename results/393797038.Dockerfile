[app/sources/393797038.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:50a893126056c156237b61457e8ced389b40aec6f5786d45903d4808ba9e299a" [label="/bin/sh -c ln -s /bin/true /usr/local/bin/start" shape="box"];
  "sha256:87365a462f92e12e90f40101425c0969ee2a711599668b7dcdc3bc98163a0eb0" [label="/bin/sh -c apt-get update \t&& apt-get install -y --no-install-recommends \t\tca-certificates \t\twget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:65cee43121b121f75b146af57058ca2ebd046655613fb79f20698d11f0dc4020" [label="/bin/sh -c set -eux; \twget -O /tmp/plex.deb \"$PLEX_URL\" --progress=dot:giga; \techo \"$PLEX_SHA1 */tmp/plex.deb\" | sha1sum -c -; \tapt-get update; \tapt-get install /tmp/plex.deb; \trm -rf /var/lib/apt/lists/*; \trm /tmp/plex.deb" shape="box"];
  "sha256:ab4173626af82b4133aad26809971366ec71ca54c67e1d1cd82fcc7b38ace60a" [label="/bin/sh -c mkdir -p \"$PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR\" && chmod -R a+rwX \"$PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR\"" shape="box"];
  "sha256:d371113caf711ef097df2cb638685854368789a939484bd9da19d142a912f180" [label="local://context" shape="ellipse"];
  "sha256:8123c17b129432a50b0838e92f24cb1cca064f7551ae694433fe95412873ce70" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:b98f2eef48a940552c94e623144e32ce3a5b7fe0e1a91fb311f736b0dc2751b9" [label="sha256:b98f2eef48a940552c94e623144e32ce3a5b7fe0e1a91fb311f736b0dc2751b9" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:50a893126056c156237b61457e8ced389b40aec6f5786d45903d4808ba9e299a" [label=""];
  "sha256:50a893126056c156237b61457e8ced389b40aec6f5786d45903d4808ba9e299a" -> "sha256:87365a462f92e12e90f40101425c0969ee2a711599668b7dcdc3bc98163a0eb0" [label=""];
  "sha256:87365a462f92e12e90f40101425c0969ee2a711599668b7dcdc3bc98163a0eb0" -> "sha256:65cee43121b121f75b146af57058ca2ebd046655613fb79f20698d11f0dc4020" [label=""];
  "sha256:65cee43121b121f75b146af57058ca2ebd046655613fb79f20698d11f0dc4020" -> "sha256:ab4173626af82b4133aad26809971366ec71ca54c67e1d1cd82fcc7b38ace60a" [label=""];
  "sha256:ab4173626af82b4133aad26809971366ec71ca54c67e1d1cd82fcc7b38ace60a" -> "sha256:8123c17b129432a50b0838e92f24cb1cca064f7551ae694433fe95412873ce70" [label=""];
  "sha256:d371113caf711ef097df2cb638685854368789a939484bd9da19d142a912f180" -> "sha256:8123c17b129432a50b0838e92f24cb1cca064f7551ae694433fe95412873ce70" [label=""];
  "sha256:8123c17b129432a50b0838e92f24cb1cca064f7551ae694433fe95412873ce70" -> "sha256:b98f2eef48a940552c94e623144e32ce3a5b7fe0e1a91fb311f736b0dc2751b9" [label=""];
}

