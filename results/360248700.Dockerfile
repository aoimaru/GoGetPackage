[app/sources/360248700.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:b2842ccc10a94f0393832d1c42ddbd0d182a161cd4a931f70c90082ea1f6a268" [label="/bin/sh -c apt-get -qqy update &&     apt-get -qqy install curl openjdk-8-jre-headless unzip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6f91307c493a2560efa7dbcf539ddd4a23651434940fd7d3a771292eadf6d4a8" [label="/bin/sh -c curl -L https://saucelabs.com/downloads/sc-4.5.3-linux.tar.gz |     tar xz -C /usr/local --strip=1 sc-4.5.3-linux/bin/sc &&     chown root:root /usr/local/bin/sc &&     chmod 0755 /usr/local/bin/sc" shape="box"];
  "sha256:0ff75f5b4e8f5de411e92bcc841677838b6c29c37ba035fbfa0876bcf090aab5" [label="sha256:0ff75f5b4e8f5de411e92bcc841677838b6c29c37ba035fbfa0876bcf090aab5" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:b2842ccc10a94f0393832d1c42ddbd0d182a161cd4a931f70c90082ea1f6a268" [label=""];
  "sha256:b2842ccc10a94f0393832d1c42ddbd0d182a161cd4a931f70c90082ea1f6a268" -> "sha256:6f91307c493a2560efa7dbcf539ddd4a23651434940fd7d3a771292eadf6d4a8" [label=""];
  "sha256:6f91307c493a2560efa7dbcf539ddd4a23651434940fd7d3a771292eadf6d4a8" -> "sha256:0ff75f5b4e8f5de411e92bcc841677838b6c29c37ba035fbfa0876bcf090aab5" [label=""];
}

