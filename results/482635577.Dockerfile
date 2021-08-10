[app/sources/482635577.Dockerfile]
digraph {
  "sha256:e4b5d6aaad9fac05da37b9f404dafb786c7bb9311db76c38de772c873b82c04e" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:77122727f2f0c031878b259b4b51cef11b0108d25494d66bfcc3f0ac2223c2a3" [label="/bin/sh -c apt-get update && apt-get install -y curl &&     curl -o /etc/apt/sources.list.d/stackdriver.list https://repo.stackdriver.com/jessie.list &&     curl --silent https://app.stackdriver.com/RPM-GPG-KEY-stackdriver | apt-key add - &&     apt-get update && apt-get install -y stackdriver-agent libhiredis-dev libpq-dev" shape="box"];
  "sha256:69010f3a99f7f618efbf2df9c2eef55cf041b1148446973c5c40cb085b3b2dd1" [label="copy{src=/collectd-gcm.conf.tmpl, dest=/opt/stackdriver/collectd/etc/collectd-gcm.conf.tmpl}" shape="note"];
  "sha256:63736994aa92eaccffe1a61252eb8a1db751a0f91338b401723e275bcdcf688d" [label="copy{src=/collectd.conf.tmpl, dest=/opt/stackdriver/collectd/etc/collectd.conf.tmpl}" shape="note"];
  "sha256:84d6e706256fcecbd61bd63f0ce165e5795742cb27c73d1274b730150370df1a" [label="copy{src=/run-agent.sh, dest=/usr/bin/run-agent.sh}" shape="note"];
  "sha256:f1a3753996b7851149c8f80f73c3a967d7387192b5746e6c1424606594ee57c9" [label="copy{src=/configurator, dest=/opt/configurator}" shape="note"];
  "sha256:03b9a8ae59df15ab187b6cda0683d1833e8baee67a936bc03ed15220f87d3208" [label="sha256:03b9a8ae59df15ab187b6cda0683d1833e8baee67a936bc03ed15220f87d3208" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:77122727f2f0c031878b259b4b51cef11b0108d25494d66bfcc3f0ac2223c2a3" [label=""];
  "sha256:77122727f2f0c031878b259b4b51cef11b0108d25494d66bfcc3f0ac2223c2a3" -> "sha256:69010f3a99f7f618efbf2df9c2eef55cf041b1148446973c5c40cb085b3b2dd1" [label=""];
  "sha256:e4b5d6aaad9fac05da37b9f404dafb786c7bb9311db76c38de772c873b82c04e" -> "sha256:69010f3a99f7f618efbf2df9c2eef55cf041b1148446973c5c40cb085b3b2dd1" [label=""];
  "sha256:69010f3a99f7f618efbf2df9c2eef55cf041b1148446973c5c40cb085b3b2dd1" -> "sha256:63736994aa92eaccffe1a61252eb8a1db751a0f91338b401723e275bcdcf688d" [label=""];
  "sha256:e4b5d6aaad9fac05da37b9f404dafb786c7bb9311db76c38de772c873b82c04e" -> "sha256:63736994aa92eaccffe1a61252eb8a1db751a0f91338b401723e275bcdcf688d" [label=""];
  "sha256:63736994aa92eaccffe1a61252eb8a1db751a0f91338b401723e275bcdcf688d" -> "sha256:84d6e706256fcecbd61bd63f0ce165e5795742cb27c73d1274b730150370df1a" [label=""];
  "sha256:e4b5d6aaad9fac05da37b9f404dafb786c7bb9311db76c38de772c873b82c04e" -> "sha256:84d6e706256fcecbd61bd63f0ce165e5795742cb27c73d1274b730150370df1a" [label=""];
  "sha256:84d6e706256fcecbd61bd63f0ce165e5795742cb27c73d1274b730150370df1a" -> "sha256:f1a3753996b7851149c8f80f73c3a967d7387192b5746e6c1424606594ee57c9" [label=""];
  "sha256:e4b5d6aaad9fac05da37b9f404dafb786c7bb9311db76c38de772c873b82c04e" -> "sha256:f1a3753996b7851149c8f80f73c3a967d7387192b5746e6c1424606594ee57c9" [label=""];
  "sha256:f1a3753996b7851149c8f80f73c3a967d7387192b5746e6c1424606594ee57c9" -> "sha256:03b9a8ae59df15ab187b6cda0683d1833e8baee67a936bc03ed15220f87d3208" [label=""];
}

