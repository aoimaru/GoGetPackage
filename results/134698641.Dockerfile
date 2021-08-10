[app/sources/134698641.Dockerfile]
digraph {
  "sha256:b61636d633132611f37106112eae272f02456c81f88d8276fe0038b23bf3083a" [label="docker-image://docker.io/drupalci/web-base:latest" shape="ellipse"];
  "sha256:c17288b9afc4e02f059c7f487b6ea9c1f2f7bef61c8232b5d47851bd3e568b9e" [label="/bin/sh -c sudo php-build -i development --pear 5.4.31 $HOME/.phpenv/versions/5.4.31" shape="box"];
  "sha256:adc901a1576626c88014121e00b230061fed31682790a9a1d13f8b71427110fa" [label="/bin/sh -c sudo chown -R root:root $HOME/.phpenv" shape="box"];
  "sha256:4886765ecf5c3f9641c4ea1c312e700f15917ddf9ef9c42f1371c14616443909" [label="/bin/sh -c phpenv rehash" shape="box"];
  "sha256:5dcb5f68890e6b5b3c819ee96767d48880985b09d7dfda2f5d8d165bebaa070f" [label="/bin/sh -c phpenv global 5.4.31" shape="box"];
  "sha256:11b58e03b388c476cb0d604c112c6f75e9dc6fafbd242ccb92d769723121b99c" [label="/bin/sh -c echo | pecl install mongo" shape="box"];
  "sha256:0a674ccab02777e74fe86a6d6d9f2c1c6380958469b5c5eb22553c69f3140a3f" [label="/bin/sh -c find /root/.phpenv/ -iname php.ini -exec sh -c 'echo \"date.timezone=UTC\" >> {}' \\;" shape="box"];
  "sha256:0e3a84c45c3a6372ccc71dfe544c667608e789e92c5e1ac3c633d66cfd580196" [label="sha256:0e3a84c45c3a6372ccc71dfe544c667608e789e92c5e1ac3c633d66cfd580196" shape="plaintext"];
  "sha256:b61636d633132611f37106112eae272f02456c81f88d8276fe0038b23bf3083a" -> "sha256:c17288b9afc4e02f059c7f487b6ea9c1f2f7bef61c8232b5d47851bd3e568b9e" [label=""];
  "sha256:c17288b9afc4e02f059c7f487b6ea9c1f2f7bef61c8232b5d47851bd3e568b9e" -> "sha256:adc901a1576626c88014121e00b230061fed31682790a9a1d13f8b71427110fa" [label=""];
  "sha256:adc901a1576626c88014121e00b230061fed31682790a9a1d13f8b71427110fa" -> "sha256:4886765ecf5c3f9641c4ea1c312e700f15917ddf9ef9c42f1371c14616443909" [label=""];
  "sha256:4886765ecf5c3f9641c4ea1c312e700f15917ddf9ef9c42f1371c14616443909" -> "sha256:5dcb5f68890e6b5b3c819ee96767d48880985b09d7dfda2f5d8d165bebaa070f" [label=""];
  "sha256:5dcb5f68890e6b5b3c819ee96767d48880985b09d7dfda2f5d8d165bebaa070f" -> "sha256:11b58e03b388c476cb0d604c112c6f75e9dc6fafbd242ccb92d769723121b99c" [label=""];
  "sha256:11b58e03b388c476cb0d604c112c6f75e9dc6fafbd242ccb92d769723121b99c" -> "sha256:0a674ccab02777e74fe86a6d6d9f2c1c6380958469b5c5eb22553c69f3140a3f" [label=""];
  "sha256:0a674ccab02777e74fe86a6d6d9f2c1c6380958469b5c5eb22553c69f3140a3f" -> "sha256:0e3a84c45c3a6372ccc71dfe544c667608e789e92c5e1ac3c633d66cfd580196" [label=""];
}

