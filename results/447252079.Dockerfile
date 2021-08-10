[app/sources/447252079.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:380abb61c53f06c5aa5f6b47f6735d1aa508a6ee61019b805da195e31570a1fb" [label="/bin/sh -c apt-get update -qq && apt-get install --no-install-recommends -y -qq         m4 automake autoconf time wget rsync git gcc-multilib build-essential unzip         libgtksourceview-3.0-dev         texlive-latex-extra texlive-fonts-recommended texlive-xetex latexmk         xindy python3-pip python3-setuptools python3-pexpect python3-bs4         texlive-science tipa" shape="box"];
  "sha256:2b170f91b82234ef39b605249e861b52f0a79014c631a1eb341ed6191e9588ca" [label="/bin/sh -c pip3 install sphinx==1.7.8 sphinx_rtd_theme==0.2.5b2                  antlr4-python3-runtime==4.7.1 sphinxcontrib-bibtex==0.4.0" shape="box"];
  "sha256:7539e4dc2b926bc21926ce1ecf3e4d72934aa365c305aaaaf90ee6f5a4402ad0" [label="/bin/sh -c wget https://github.com/ocaml/opam/releases/download/2.0.3/opam-2.0.3-x86_64-linux -O /usr/bin/opam && chmod 755 /usr/bin/opam" shape="box"];
  "sha256:61f2b52218f3a75c2ee14dab9ee6d1c88396228689c183b69e9e704f49682a4d" [label="/bin/sh -c opam init -a --disable-sandboxing --compiler=\"$COMPILER\" default https://opam.ocaml.org && eval $(opam env) && opam update &&     opam install $BASE_OPAM $COQIDE_OPAM $CI_OPAM" shape="box"];
  "sha256:dc1941361ca094192feae1d90e6864e2145d3f57c9435315b0e6966e73208541" [label="/bin/sh -c opam switch create \"${COMPILER}+32bit\" && eval $(opam env) &&     opam install $BASE_OPAM" shape="box"];
  "sha256:7b8d7d6173809b84760e54110c6a12ac47485b3dd0cbb91c417db6fd64963d1b" [label="/bin/sh -c opam switch create \"${COMPILER_EDGE}+flambda\" && eval $(opam env) &&     opam install $BASE_OPAM $BASE_OPAM_EDGE $COQIDE_OPAM_EDGE $CI_OPAM" shape="box"];
  "sha256:ddbcca034d9cfd23250fff071c547dc190fe70006ceff0d89920f844c1fa858f" [label="/bin/sh -c opam clean -a -c" shape="box"];
  "sha256:73cedc8b75f66a3f9a78d608c3a321296131a416bebdfbde336e175b91093bcf" [label="sha256:73cedc8b75f66a3f9a78d608c3a321296131a416bebdfbde336e175b91093bcf" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:380abb61c53f06c5aa5f6b47f6735d1aa508a6ee61019b805da195e31570a1fb" [label=""];
  "sha256:380abb61c53f06c5aa5f6b47f6735d1aa508a6ee61019b805da195e31570a1fb" -> "sha256:2b170f91b82234ef39b605249e861b52f0a79014c631a1eb341ed6191e9588ca" [label=""];
  "sha256:2b170f91b82234ef39b605249e861b52f0a79014c631a1eb341ed6191e9588ca" -> "sha256:7539e4dc2b926bc21926ce1ecf3e4d72934aa365c305aaaaf90ee6f5a4402ad0" [label=""];
  "sha256:7539e4dc2b926bc21926ce1ecf3e4d72934aa365c305aaaaf90ee6f5a4402ad0" -> "sha256:61f2b52218f3a75c2ee14dab9ee6d1c88396228689c183b69e9e704f49682a4d" [label=""];
  "sha256:61f2b52218f3a75c2ee14dab9ee6d1c88396228689c183b69e9e704f49682a4d" -> "sha256:dc1941361ca094192feae1d90e6864e2145d3f57c9435315b0e6966e73208541" [label=""];
  "sha256:dc1941361ca094192feae1d90e6864e2145d3f57c9435315b0e6966e73208541" -> "sha256:7b8d7d6173809b84760e54110c6a12ac47485b3dd0cbb91c417db6fd64963d1b" [label=""];
  "sha256:7b8d7d6173809b84760e54110c6a12ac47485b3dd0cbb91c417db6fd64963d1b" -> "sha256:ddbcca034d9cfd23250fff071c547dc190fe70006ceff0d89920f844c1fa858f" [label=""];
  "sha256:ddbcca034d9cfd23250fff071c547dc190fe70006ceff0d89920f844c1fa858f" -> "sha256:73cedc8b75f66a3f9a78d608c3a321296131a416bebdfbde336e175b91093bcf" [label=""];
}

