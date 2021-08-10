[app/sources/261883919.Dockerfile]
digraph {
  "sha256:e701970a0948c2936ba36784bdf76b65393847bc23cbd0823fbae171d8f42e8a" [label="docker-image://docker.io/mozillasecurity/fuzzos:latest" shape="ellipse"];
  "sha256:0e3ece191a215eff58c669223da93061556f9667767b98befcaa9fb06914b11e" [label="mkdir{path=/home/worker/funfuzz}" shape="note"];
  "sha256:504fd42369e4a0c5005e540e40063a83248ba940c5f959f84cc2094099e709d4" [label="local://context" shape="ellipse"];
  "sha256:69b547351a377a231aa763c8fdbd11b23c36e4dbfdef6bfb0fc124dd0600dd66" [label="copy{src=/recipes, dest=/tmp/recipes}" shape="note"];
  "sha256:8a8b3e355e5d4559843a951d049fdbc20a88ab6631c7c556937c7ccdc6d03dae" [label="/bin/sh -c /tmp/recipes/install_prerequisites.sh     && rm -f /tmp/recipes/install_prerequisites.sh     && chown -R worker:worker /home/worker" shape="box"];
  "sha256:cfec04cfec86e6ce27fd39dd9e8a458b17fad151eac4fd722c6cd85814a3c95d" [label="copy{src=/setup.sh, dest=/home/worker}" shape="note"];
  "sha256:dbec587e6e5f02fd11ddb30602261bd76c79c64dbc9bddc7222b80f9f9fa1867" [label="/bin/sh -c \"$HOME/setup.sh\"" shape="box"];
  "sha256:754e1d5864ad70892dbf4e5acb854fa59265e1c8147f57b64dffd5b7764e5521" [label="/bin/sh -c \"$HOME/.bin/cleanup.sh\"" shape="box"];
  "sha256:4bbc337b027a8814a519097ecff6d208418dd9462d1d6be69c1ff8353ec29680" [label="sha256:4bbc337b027a8814a519097ecff6d208418dd9462d1d6be69c1ff8353ec29680" shape="plaintext"];
  "sha256:e701970a0948c2936ba36784bdf76b65393847bc23cbd0823fbae171d8f42e8a" -> "sha256:0e3ece191a215eff58c669223da93061556f9667767b98befcaa9fb06914b11e" [label=""];
  "sha256:0e3ece191a215eff58c669223da93061556f9667767b98befcaa9fb06914b11e" -> "sha256:69b547351a377a231aa763c8fdbd11b23c36e4dbfdef6bfb0fc124dd0600dd66" [label=""];
  "sha256:504fd42369e4a0c5005e540e40063a83248ba940c5f959f84cc2094099e709d4" -> "sha256:69b547351a377a231aa763c8fdbd11b23c36e4dbfdef6bfb0fc124dd0600dd66" [label=""];
  "sha256:69b547351a377a231aa763c8fdbd11b23c36e4dbfdef6bfb0fc124dd0600dd66" -> "sha256:8a8b3e355e5d4559843a951d049fdbc20a88ab6631c7c556937c7ccdc6d03dae" [label=""];
  "sha256:8a8b3e355e5d4559843a951d049fdbc20a88ab6631c7c556937c7ccdc6d03dae" -> "sha256:cfec04cfec86e6ce27fd39dd9e8a458b17fad151eac4fd722c6cd85814a3c95d" [label=""];
  "sha256:504fd42369e4a0c5005e540e40063a83248ba940c5f959f84cc2094099e709d4" -> "sha256:cfec04cfec86e6ce27fd39dd9e8a458b17fad151eac4fd722c6cd85814a3c95d" [label=""];
  "sha256:cfec04cfec86e6ce27fd39dd9e8a458b17fad151eac4fd722c6cd85814a3c95d" -> "sha256:dbec587e6e5f02fd11ddb30602261bd76c79c64dbc9bddc7222b80f9f9fa1867" [label=""];
  "sha256:dbec587e6e5f02fd11ddb30602261bd76c79c64dbc9bddc7222b80f9f9fa1867" -> "sha256:754e1d5864ad70892dbf4e5acb854fa59265e1c8147f57b64dffd5b7764e5521" [label=""];
  "sha256:754e1d5864ad70892dbf4e5acb854fa59265e1c8147f57b64dffd5b7764e5521" -> "sha256:4bbc337b027a8814a519097ecff6d208418dd9462d1d6be69c1ff8353ec29680" [label=""];
}

