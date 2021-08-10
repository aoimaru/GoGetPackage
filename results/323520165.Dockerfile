[app/sources/323520165.Dockerfile]
digraph {
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:34e718f6d89302888115dc2ee5cd971ea1c3d40acb59bbaed41fb1ff60eed189" [label="/bin/sh -c sh -c 'echo -e \"Updated at: 2019-06-03 19:00:00 IST\"'" shape="box"];
  "sha256:16000a4d5ac8e63c5d155d37f243c5ef56243f4f006c911c89f2cc1e99407d90" [label="/bin/sh -c npm -g install gatsby-cli" shape="box"];
  "sha256:8b19a84cd8f081e826a6ce2fe10c581c20829234d22e373ffa374cd92b057267" [label="/bin/sh -c git clone https://github.com/hasura/gatsby-gitbook-starter.git" shape="box"];
  "sha256:1af1e6e571ff4bdabafa016e9d5fc2f3b82a88643f6acf7076e3a0c170b93738" [label="mkdir{path=/gatsby-gitbook-starter}" shape="note"];
  "sha256:607b2999fd83f0d1dd373734acddd061dfeb4b942ef175f767556c3434e40cc0" [label="/bin/sh -c cd /gatsby-gitbook-starter" shape="box"];
  "sha256:273e334fe3c14ddf45a1858fca010d66c5fadd1b3ce09a312ddc3100ddd5691e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c1705f792ed75f7c6b2147d25111121e29890e4cfb0a049533e96d9c391ac93d" [label="/bin/sh -c rm -R content" shape="box"];
  "sha256:7da2d50768f029bb8970d8cdde502c170131a27e8819594b2b647250dd4be910" [label="local://context" shape="ellipse"];
  "sha256:4d8524305ba652a1a29a10ca067d22b599bf245d9fe93c6b45d63701c1caca14" [label="copy{src=/, dest=/gatsby-gitbook-starter/}" shape="note"];
  "sha256:544af588f4eea2cf499af7ff9c523712ca3c6194051d17d48cf3785ab51c39bb" [label="sha256:544af588f4eea2cf499af7ff9c523712ca3c6194051d17d48cf3785ab51c39bb" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:34e718f6d89302888115dc2ee5cd971ea1c3d40acb59bbaed41fb1ff60eed189" [label=""];
  "sha256:34e718f6d89302888115dc2ee5cd971ea1c3d40acb59bbaed41fb1ff60eed189" -> "sha256:16000a4d5ac8e63c5d155d37f243c5ef56243f4f006c911c89f2cc1e99407d90" [label=""];
  "sha256:16000a4d5ac8e63c5d155d37f243c5ef56243f4f006c911c89f2cc1e99407d90" -> "sha256:8b19a84cd8f081e826a6ce2fe10c581c20829234d22e373ffa374cd92b057267" [label=""];
  "sha256:8b19a84cd8f081e826a6ce2fe10c581c20829234d22e373ffa374cd92b057267" -> "sha256:1af1e6e571ff4bdabafa016e9d5fc2f3b82a88643f6acf7076e3a0c170b93738" [label=""];
  "sha256:1af1e6e571ff4bdabafa016e9d5fc2f3b82a88643f6acf7076e3a0c170b93738" -> "sha256:607b2999fd83f0d1dd373734acddd061dfeb4b942ef175f767556c3434e40cc0" [label=""];
  "sha256:607b2999fd83f0d1dd373734acddd061dfeb4b942ef175f767556c3434e40cc0" -> "sha256:273e334fe3c14ddf45a1858fca010d66c5fadd1b3ce09a312ddc3100ddd5691e" [label=""];
  "sha256:273e334fe3c14ddf45a1858fca010d66c5fadd1b3ce09a312ddc3100ddd5691e" -> "sha256:c1705f792ed75f7c6b2147d25111121e29890e4cfb0a049533e96d9c391ac93d" [label=""];
  "sha256:c1705f792ed75f7c6b2147d25111121e29890e4cfb0a049533e96d9c391ac93d" -> "sha256:4d8524305ba652a1a29a10ca067d22b599bf245d9fe93c6b45d63701c1caca14" [label=""];
  "sha256:7da2d50768f029bb8970d8cdde502c170131a27e8819594b2b647250dd4be910" -> "sha256:4d8524305ba652a1a29a10ca067d22b599bf245d9fe93c6b45d63701c1caca14" [label=""];
  "sha256:4d8524305ba652a1a29a10ca067d22b599bf245d9fe93c6b45d63701c1caca14" -> "sha256:544af588f4eea2cf499af7ff9c523712ca3c6194051d17d48cf3785ab51c39bb" [label=""];
}

