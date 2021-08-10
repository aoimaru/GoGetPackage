[app/sources/259598291.Dockerfile]
digraph {
  "sha256:7c6cf2cfde079973925ff8186942cc8e237fa2252a5463dc9c78ff79216ee47c" [label="docker-image://docker.io/scoringengine/base:latest" shape="ellipse"];
  "sha256:6f190a657fb37bf99636ab50e7b7d248d8cfd09510d374702c753ef00458f240" [label="local://context" shape="ellipse"];
  "sha256:f25332e88251c8428b039ee7579e68fdc7da7151c8467f04871eb2c3a6cca64c" [label="copy{src=/tests, dest=/app/tests}" shape="note"];
  "sha256:983af625a1decbfb9854a2cbcaf2f21214db3dddd60a287eaae2eb349e89f2d3" [label="/bin/sh -c apt-get update &&   apt-get install -y curl &&   rm -rf /var/lib/apt/lists/* &&   curl -s -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 -o /usr/bin/cc-test-reporter &&   chmod +x /usr/bin/cc-test-reporter" shape="box"];
  "sha256:277af33e8401ac6e98cb3905dcd76c964ef1edad3cc7ce51537940fd947d7f06" [label="copy{src=/bin, dest=/app/bin}" shape="note"];
  "sha256:c725b463714c629d442dfd3bcea4635fd6831cedcf4e4bcfe2e81888d22932e5" [label="copy{src=/.flake8, dest=/app/.flake8}" shape="note"];
  "sha256:3840807f819dfc5b362a5f0252b7b8fe516906dc33b343a09bb032a37a75fc4c" [label="/bin/sh -c mkdir /app/artifacts &&   chown engine:engine /app/artifacts" shape="box"];
  "sha256:e4a4d4eff7707c15a781e3092be2da9f0ef717491372ddec5ec8c13fb205e7c4" [label="/bin/sh -c pip install -r /app/tests/requirements.txt" shape="box"];
  "sha256:35ada8713b80211cf2ca6cd46fb0ad40dc29b55716121ddda4ace5b57b26ab54" [label="sha256:35ada8713b80211cf2ca6cd46fb0ad40dc29b55716121ddda4ace5b57b26ab54" shape="plaintext"];
  "sha256:7c6cf2cfde079973925ff8186942cc8e237fa2252a5463dc9c78ff79216ee47c" -> "sha256:f25332e88251c8428b039ee7579e68fdc7da7151c8467f04871eb2c3a6cca64c" [label=""];
  "sha256:6f190a657fb37bf99636ab50e7b7d248d8cfd09510d374702c753ef00458f240" -> "sha256:f25332e88251c8428b039ee7579e68fdc7da7151c8467f04871eb2c3a6cca64c" [label=""];
  "sha256:f25332e88251c8428b039ee7579e68fdc7da7151c8467f04871eb2c3a6cca64c" -> "sha256:983af625a1decbfb9854a2cbcaf2f21214db3dddd60a287eaae2eb349e89f2d3" [label=""];
  "sha256:983af625a1decbfb9854a2cbcaf2f21214db3dddd60a287eaae2eb349e89f2d3" -> "sha256:277af33e8401ac6e98cb3905dcd76c964ef1edad3cc7ce51537940fd947d7f06" [label=""];
  "sha256:6f190a657fb37bf99636ab50e7b7d248d8cfd09510d374702c753ef00458f240" -> "sha256:277af33e8401ac6e98cb3905dcd76c964ef1edad3cc7ce51537940fd947d7f06" [label=""];
  "sha256:277af33e8401ac6e98cb3905dcd76c964ef1edad3cc7ce51537940fd947d7f06" -> "sha256:c725b463714c629d442dfd3bcea4635fd6831cedcf4e4bcfe2e81888d22932e5" [label=""];
  "sha256:6f190a657fb37bf99636ab50e7b7d248d8cfd09510d374702c753ef00458f240" -> "sha256:c725b463714c629d442dfd3bcea4635fd6831cedcf4e4bcfe2e81888d22932e5" [label=""];
  "sha256:c725b463714c629d442dfd3bcea4635fd6831cedcf4e4bcfe2e81888d22932e5" -> "sha256:3840807f819dfc5b362a5f0252b7b8fe516906dc33b343a09bb032a37a75fc4c" [label=""];
  "sha256:3840807f819dfc5b362a5f0252b7b8fe516906dc33b343a09bb032a37a75fc4c" -> "sha256:e4a4d4eff7707c15a781e3092be2da9f0ef717491372ddec5ec8c13fb205e7c4" [label=""];
  "sha256:e4a4d4eff7707c15a781e3092be2da9f0ef717491372ddec5ec8c13fb205e7c4" -> "sha256:35ada8713b80211cf2ca6cd46fb0ad40dc29b55716121ddda4ace5b57b26ab54" [label=""];
}

