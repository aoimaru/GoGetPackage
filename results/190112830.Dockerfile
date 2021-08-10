[app/sources/190112830.Dockerfile]
digraph {
  "sha256:3c1831742e59fa4833e143079ccd398bf8836dc82718872a5466d055d03b4a19" [label="docker-image://docker.io/malex984/dockapp:base" shape="ellipse"];
  "sha256:3730e1e3436b3f9361ad4397abd6d0d25790cf9c88193ac67a208c5affd12fb0" [label="local://context" shape="ellipse"];
  "sha256:67ac15f82fd51afd97eda90cb4f5dd70ad1d47a938ac74e9e848f42d2076e0d6" [label="copy{src=/menu.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:b3bd4bc8364f4a793bee9d6f77863ac630901f069b46338ba3c0406a462945c0" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3aaab9873dd91155f809d1e6773f781d103f644d1d3df49f1124aeabd115fed9" [label="sha256:3aaab9873dd91155f809d1e6773f781d103f644d1d3df49f1124aeabd115fed9" shape="plaintext"];
  "sha256:3c1831742e59fa4833e143079ccd398bf8836dc82718872a5466d055d03b4a19" -> "sha256:67ac15f82fd51afd97eda90cb4f5dd70ad1d47a938ac74e9e848f42d2076e0d6" [label=""];
  "sha256:3730e1e3436b3f9361ad4397abd6d0d25790cf9c88193ac67a208c5affd12fb0" -> "sha256:67ac15f82fd51afd97eda90cb4f5dd70ad1d47a938ac74e9e848f42d2076e0d6" [label=""];
  "sha256:67ac15f82fd51afd97eda90cb4f5dd70ad1d47a938ac74e9e848f42d2076e0d6" -> "sha256:b3bd4bc8364f4a793bee9d6f77863ac630901f069b46338ba3c0406a462945c0" [label=""];
  "sha256:b3bd4bc8364f4a793bee9d6f77863ac630901f069b46338ba3c0406a462945c0" -> "sha256:3aaab9873dd91155f809d1e6773f781d103f644d1d3df49f1124aeabd115fed9" [label=""];
}

