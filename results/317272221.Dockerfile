[app/sources/317272221.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:ab2b8cbc3c32779d8c9f94932c2259158c966e00b2f1b5cda5e52aeff518e739" [label="/bin/sh -c set -ex     && apt-get update -qq     && apt-get install -y --no-install-recommends          ca-certificates          curl          gcc          git          libssl-dev          netbase          openssh-client          python3-dev          python3-pip          python3-setuptools     && python3 -m pip install -U pip     && apt-get autoremove -yqq --purge     && apt-get clean     && rm -rf          /tmp/*          /usr/share/doc          /usr/share/doc-base          /usr/share/man          /var/lib/apt/lists/*          /var/log/*          /var/tmp/*" shape="box"];
  "sha256:7cab04f6a2bad3d72e43ffcb5b4b860e817d0aa0a68bb4f44f54cad6e7bd0625" [label="mkdir{path=/var/pegleg}" shape="note"];
  "sha256:5a596fe8ec1a94f1abc9b112f66567fd830fdc708de30da68489b29530f04043" [label="local://context" shape="ellipse"];
  "sha256:2ce918e5f91f6f4a5f2867d3c1130da5758c863528220352809934d31b004802" [label="copy{src=/requirements.txt, dest=/opt/pegleg/requirements.txt}" shape="note"];
  "sha256:38420b29bfa92360ff0e767c0c6c1382e9082afc6fa769471e720ef6690184a7" [label="/bin/sh -c pip3 install --no-cache-dir -r /opt/pegleg/requirements.txt" shape="box"];
  "sha256:e6399a0d3f18ad876caeb1eb4fa286c225873b7841d3f9797ae782f43db1383f" [label="copy{src=/tools/install-cfssl.sh, dest=/opt/pegleg/tools/install-cfssl.sh}" shape="note"];
  "sha256:7f7b8ce058ca12bbb952726f11aaf4ddc89d799f04bced51edf74ffcb1920bd2" [label="/bin/sh -c /opt/pegleg/tools/install-cfssl.sh ${CFSSLURL}" shape="box"];
  "sha256:28145cf6f76095c4e3392fa554c056e988fbeeb52e59d5d603793e2fc0c28e31" [label="copy{src=/, dest=/opt/pegleg}" shape="note"];
  "sha256:8cf28b0bcb8bfaf6a828132f53ea8bd108d0b00e5fc9b1e986f71090f2ccf9b7" [label="/bin/sh -c pip3 install -e /opt/pegleg" shape="box"];
  "sha256:d6653bfda2031b7ceb16241b2ea5e90b5e189e2e9ec31c8d7bb933176059376c" [label="sha256:d6653bfda2031b7ceb16241b2ea5e90b5e189e2e9ec31c8d7bb933176059376c" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:ab2b8cbc3c32779d8c9f94932c2259158c966e00b2f1b5cda5e52aeff518e739" [label=""];
  "sha256:ab2b8cbc3c32779d8c9f94932c2259158c966e00b2f1b5cda5e52aeff518e739" -> "sha256:7cab04f6a2bad3d72e43ffcb5b4b860e817d0aa0a68bb4f44f54cad6e7bd0625" [label=""];
  "sha256:7cab04f6a2bad3d72e43ffcb5b4b860e817d0aa0a68bb4f44f54cad6e7bd0625" -> "sha256:2ce918e5f91f6f4a5f2867d3c1130da5758c863528220352809934d31b004802" [label=""];
  "sha256:5a596fe8ec1a94f1abc9b112f66567fd830fdc708de30da68489b29530f04043" -> "sha256:2ce918e5f91f6f4a5f2867d3c1130da5758c863528220352809934d31b004802" [label=""];
  "sha256:2ce918e5f91f6f4a5f2867d3c1130da5758c863528220352809934d31b004802" -> "sha256:38420b29bfa92360ff0e767c0c6c1382e9082afc6fa769471e720ef6690184a7" [label=""];
  "sha256:38420b29bfa92360ff0e767c0c6c1382e9082afc6fa769471e720ef6690184a7" -> "sha256:e6399a0d3f18ad876caeb1eb4fa286c225873b7841d3f9797ae782f43db1383f" [label=""];
  "sha256:5a596fe8ec1a94f1abc9b112f66567fd830fdc708de30da68489b29530f04043" -> "sha256:e6399a0d3f18ad876caeb1eb4fa286c225873b7841d3f9797ae782f43db1383f" [label=""];
  "sha256:e6399a0d3f18ad876caeb1eb4fa286c225873b7841d3f9797ae782f43db1383f" -> "sha256:7f7b8ce058ca12bbb952726f11aaf4ddc89d799f04bced51edf74ffcb1920bd2" [label=""];
  "sha256:7f7b8ce058ca12bbb952726f11aaf4ddc89d799f04bced51edf74ffcb1920bd2" -> "sha256:28145cf6f76095c4e3392fa554c056e988fbeeb52e59d5d603793e2fc0c28e31" [label=""];
  "sha256:5a596fe8ec1a94f1abc9b112f66567fd830fdc708de30da68489b29530f04043" -> "sha256:28145cf6f76095c4e3392fa554c056e988fbeeb52e59d5d603793e2fc0c28e31" [label=""];
  "sha256:28145cf6f76095c4e3392fa554c056e988fbeeb52e59d5d603793e2fc0c28e31" -> "sha256:8cf28b0bcb8bfaf6a828132f53ea8bd108d0b00e5fc9b1e986f71090f2ccf9b7" [label=""];
  "sha256:8cf28b0bcb8bfaf6a828132f53ea8bd108d0b00e5fc9b1e986f71090f2ccf9b7" -> "sha256:d6653bfda2031b7ceb16241b2ea5e90b5e189e2e9ec31c8d7bb933176059376c" [label=""];
}

