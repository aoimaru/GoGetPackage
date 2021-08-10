[app/sources/274899766.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:20d491a256a11b5455e028ef807dd5d2ad0b8ad40fda29892914047b6ca545d9" [label="/bin/sh -c apt-get update &&     apt-get install -y make zlib1g-dev build-essential ruby ruby-dev &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:33a85f19385b6b1ecc2c2de64c7e331bb85f23e2ea5b574dfe0166936abe9c79" [label="/bin/sh -c gem install sinatra json --no-rdoc --no-ri" shape="box"];
  "sha256:30d5bde2ac58894e8630a9010951fbcdeee23badaa4d1bcb8331051b113322e8" [label="local://context" shape="ellipse"];
  "sha256:8482abb9750c9149a7819308c80b442b17c61cc7d2adeee1ce4ef638e518f522" [label="copy{src=/app.rb, dest=/usr/src/app.rb}" shape="note"];
  "sha256:c67fea6f245b57fd23ab71ee5900444bc5fd9220e986f5ba17af62b634270428" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:f7cced8020e984077e826767bd355474e8e7b6ed275ac6e0be5dfb183afa2cfc" [label="sha256:f7cced8020e984077e826767bd355474e8e7b6ed275ac6e0be5dfb183afa2cfc" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:20d491a256a11b5455e028ef807dd5d2ad0b8ad40fda29892914047b6ca545d9" [label=""];
  "sha256:20d491a256a11b5455e028ef807dd5d2ad0b8ad40fda29892914047b6ca545d9" -> "sha256:33a85f19385b6b1ecc2c2de64c7e331bb85f23e2ea5b574dfe0166936abe9c79" [label=""];
  "sha256:33a85f19385b6b1ecc2c2de64c7e331bb85f23e2ea5b574dfe0166936abe9c79" -> "sha256:8482abb9750c9149a7819308c80b442b17c61cc7d2adeee1ce4ef638e518f522" [label=""];
  "sha256:30d5bde2ac58894e8630a9010951fbcdeee23badaa4d1bcb8331051b113322e8" -> "sha256:8482abb9750c9149a7819308c80b442b17c61cc7d2adeee1ce4ef638e518f522" [label=""];
  "sha256:8482abb9750c9149a7819308c80b442b17c61cc7d2adeee1ce4ef638e518f522" -> "sha256:c67fea6f245b57fd23ab71ee5900444bc5fd9220e986f5ba17af62b634270428" [label=""];
  "sha256:c67fea6f245b57fd23ab71ee5900444bc5fd9220e986f5ba17af62b634270428" -> "sha256:f7cced8020e984077e826767bd355474e8e7b6ed275ac6e0be5dfb183afa2cfc" [label=""];
}

