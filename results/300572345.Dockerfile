[app/sources/300572345.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:ca9027b5a74552c017b459b70ae2958c29ee14f6f591bf66e7e7b801a295f672" [label="mkdir{path=/app}" shape="note"];
  "sha256:7b721db57416aebb297c3eb0a77e820a43b85df6f01e91dcd8e1b2cc3fb6f50a" [label="/bin/sh -c apt-get update && apt-get install -y curl openssl &&     curl -L -o pact-stub-server.gz https://github.com/uglyog/pact-stub-server/releases/download/v$VERSION/pact-stub-server-linux-x86_64-$VERSION.gz &&     gunzip pact-stub-server.gz &&     chmod +x pact-stub-server &&     apt-get purge -y curl && apt-get -y --purge autoremove &&     rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/*" shape="box"];
  "sha256:aebbdb5a6c40b9560ebaf9191a2b7691430baf0597ee2fcf366aea68295c9d69" [label="sha256:aebbdb5a6c40b9560ebaf9191a2b7691430baf0597ee2fcf366aea68295c9d69" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:ca9027b5a74552c017b459b70ae2958c29ee14f6f591bf66e7e7b801a295f672" [label=""];
  "sha256:ca9027b5a74552c017b459b70ae2958c29ee14f6f591bf66e7e7b801a295f672" -> "sha256:7b721db57416aebb297c3eb0a77e820a43b85df6f01e91dcd8e1b2cc3fb6f50a" [label=""];
  "sha256:7b721db57416aebb297c3eb0a77e820a43b85df6f01e91dcd8e1b2cc3fb6f50a" -> "sha256:aebbdb5a6c40b9560ebaf9191a2b7691430baf0597ee2fcf366aea68295c9d69" [label=""];
}

