[app/sources/252769491.Dockerfile]
digraph {
  "sha256:93694ff93f4c31839686a264b33c68dbb2ad2632cb72be871e7a814970d99b5c" [label="local://context" shape="ellipse"];
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" [label="docker-image://docker.io/ansibleplaybookbundle/apb-base:latest" shape="ellipse"];
  "sha256:7972d5b9a061bf1c272286b7205697bb5a21f86829045b4d4a7f3b7d7622dd9e" [label="copy{src=/playbooks, dest=/opt/apb/actions}" shape="note"];
  "sha256:e68a00e5e4ae9d79ab4deb1bfcc79028118abe1a40ff057586948a7e7cdeef3e" [label="copy{src=/roles, dest=/opt/ansible/roles}" shape="note"];
  "sha256:e83f399b054f64598225a88eb37cd67deb28bc8b4577f39e8725c88438a27c75" [label="/bin/sh -c chmod -R g=u /opt/{ansible,apb}" shape="box"];
  "sha256:151c81e0cb5f89751404c9caa0010558522a20f36e669e958d922a993279f388" [label="sha256:151c81e0cb5f89751404c9caa0010558522a20f36e669e958d922a993279f388" shape="plaintext"];
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" -> "sha256:7972d5b9a061bf1c272286b7205697bb5a21f86829045b4d4a7f3b7d7622dd9e" [label=""];
  "sha256:93694ff93f4c31839686a264b33c68dbb2ad2632cb72be871e7a814970d99b5c" -> "sha256:7972d5b9a061bf1c272286b7205697bb5a21f86829045b4d4a7f3b7d7622dd9e" [label=""];
  "sha256:7972d5b9a061bf1c272286b7205697bb5a21f86829045b4d4a7f3b7d7622dd9e" -> "sha256:e68a00e5e4ae9d79ab4deb1bfcc79028118abe1a40ff057586948a7e7cdeef3e" [label=""];
  "sha256:93694ff93f4c31839686a264b33c68dbb2ad2632cb72be871e7a814970d99b5c" -> "sha256:e68a00e5e4ae9d79ab4deb1bfcc79028118abe1a40ff057586948a7e7cdeef3e" [label=""];
  "sha256:e68a00e5e4ae9d79ab4deb1bfcc79028118abe1a40ff057586948a7e7cdeef3e" -> "sha256:e83f399b054f64598225a88eb37cd67deb28bc8b4577f39e8725c88438a27c75" [label=""];
  "sha256:e83f399b054f64598225a88eb37cd67deb28bc8b4577f39e8725c88438a27c75" -> "sha256:151c81e0cb5f89751404c9caa0010558522a20f36e669e958d922a993279f388" [label=""];
}

