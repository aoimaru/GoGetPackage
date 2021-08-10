[app/sources/147811166.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:8f563f7b4bf2449f7a2832c248966f05ad36ed286a4c73d8879f9dd6362a3f60" [label="/bin/sh -c apt-get update &&   apt-get install -y     libgmp10     &&   apt-get autoremove -y &&   apt-get clean -y &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d35ecfff6c27f7bd89c5e2a0174f3455106814b063295bf8aeafa44cdb94ea5d" [label="docker-image://docker.io/library/haskell:8.6" shape="ellipse"];
  "sha256:0fec43d1bd92ffeb0651e4b73cda2554644c76e74563dc9132d851f3eb87a094" [label="mkdir{path=/build}" shape="note"];
  "sha256:0e12a8e7d56802b7772a7e7a23faf0c6ac33045d495ddf1e64a3b46b26cb7128" [label="local://context" shape="ellipse"];
  "sha256:caf44a23ec806028cab81a5dd1105d1628b1fad622b9ade8b9adf21552db71ea" [label="copy{src=/semantic.cabal, dest=/build/}" shape="note"];
  "sha256:8adf392581892291c91b0a063e08477339099827c17737d1294b888ca32ca91d" [label="copy{src=/semantic-core, dest=/build/semantic-core}" shape="note"];
  "sha256:c6ac52759db4c3b91af24951b8dc9495248929b28969fa3454aa5a4bc2e7811b" [label="/bin/sh -c cabal new-update hackage.haskell.org,HEAD" shape="box"];
  "sha256:d355cfd2ad6e9c71facc9ecd9b1ac1e647e293282ff0e926d97f9f12553eb346" [label="/bin/sh -c cabal new-configure semantic semantic-core" shape="box"];
  "sha256:66c0d119ac0f2af5f3875e372be29c2aba1dd8815d0e195f4ee6aa8f9033f78e" [label="/bin/sh -c cabal new-build --only-dependencies" shape="box"];
  "sha256:8961d7aef275e2a1dc62e8d6c32fac53e5f9670b8b3a83d9a45441a48f3b039d" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:b9671b091c5a6613ccfd301b290dc5addf604b2ceda74d251c48b8b7e74ea583" [label="/bin/sh -c cabal new-build --flags=\"release\" semantic:exe:semantic" shape="box"];
  "sha256:2f0a2a1bed97269e17366ad75bd947a99e4cc34a5f5bafb70b0152ae95d52e8f" [label="/bin/sh -c cp $(find dist-newstyle/build/x86_64-linux -name semantic -type f -perm -u=x) /usr/local/bin/semantic" shape="box"];
  "sha256:2f2a1f437f9b571243b41a6bd1d292db315f12a548bc92bd9146c5e6b840c6f9" [label="copy{src=/usr/local/bin/semantic, dest=/usr/local/bin/semantic}" shape="note"];
  "sha256:e55954af0a58772b8a1539235fe02d3abf394e3a1abaaf1cbaf1f4bf989c73bd" [label="sha256:e55954af0a58772b8a1539235fe02d3abf394e3a1abaaf1cbaf1f4bf989c73bd" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:8f563f7b4bf2449f7a2832c248966f05ad36ed286a4c73d8879f9dd6362a3f60" [label=""];
  "sha256:d35ecfff6c27f7bd89c5e2a0174f3455106814b063295bf8aeafa44cdb94ea5d" -> "sha256:0fec43d1bd92ffeb0651e4b73cda2554644c76e74563dc9132d851f3eb87a094" [label=""];
  "sha256:0fec43d1bd92ffeb0651e4b73cda2554644c76e74563dc9132d851f3eb87a094" -> "sha256:caf44a23ec806028cab81a5dd1105d1628b1fad622b9ade8b9adf21552db71ea" [label=""];
  "sha256:0e12a8e7d56802b7772a7e7a23faf0c6ac33045d495ddf1e64a3b46b26cb7128" -> "sha256:caf44a23ec806028cab81a5dd1105d1628b1fad622b9ade8b9adf21552db71ea" [label=""];
  "sha256:caf44a23ec806028cab81a5dd1105d1628b1fad622b9ade8b9adf21552db71ea" -> "sha256:8adf392581892291c91b0a063e08477339099827c17737d1294b888ca32ca91d" [label=""];
  "sha256:0e12a8e7d56802b7772a7e7a23faf0c6ac33045d495ddf1e64a3b46b26cb7128" -> "sha256:8adf392581892291c91b0a063e08477339099827c17737d1294b888ca32ca91d" [label=""];
  "sha256:8adf392581892291c91b0a063e08477339099827c17737d1294b888ca32ca91d" -> "sha256:c6ac52759db4c3b91af24951b8dc9495248929b28969fa3454aa5a4bc2e7811b" [label=""];
  "sha256:c6ac52759db4c3b91af24951b8dc9495248929b28969fa3454aa5a4bc2e7811b" -> "sha256:d355cfd2ad6e9c71facc9ecd9b1ac1e647e293282ff0e926d97f9f12553eb346" [label=""];
  "sha256:d355cfd2ad6e9c71facc9ecd9b1ac1e647e293282ff0e926d97f9f12553eb346" -> "sha256:66c0d119ac0f2af5f3875e372be29c2aba1dd8815d0e195f4ee6aa8f9033f78e" [label=""];
  "sha256:66c0d119ac0f2af5f3875e372be29c2aba1dd8815d0e195f4ee6aa8f9033f78e" -> "sha256:8961d7aef275e2a1dc62e8d6c32fac53e5f9670b8b3a83d9a45441a48f3b039d" [label=""];
  "sha256:0e12a8e7d56802b7772a7e7a23faf0c6ac33045d495ddf1e64a3b46b26cb7128" -> "sha256:8961d7aef275e2a1dc62e8d6c32fac53e5f9670b8b3a83d9a45441a48f3b039d" [label=""];
  "sha256:8961d7aef275e2a1dc62e8d6c32fac53e5f9670b8b3a83d9a45441a48f3b039d" -> "sha256:b9671b091c5a6613ccfd301b290dc5addf604b2ceda74d251c48b8b7e74ea583" [label=""];
  "sha256:b9671b091c5a6613ccfd301b290dc5addf604b2ceda74d251c48b8b7e74ea583" -> "sha256:2f0a2a1bed97269e17366ad75bd947a99e4cc34a5f5bafb70b0152ae95d52e8f" [label=""];
  "sha256:8f563f7b4bf2449f7a2832c248966f05ad36ed286a4c73d8879f9dd6362a3f60" -> "sha256:2f2a1f437f9b571243b41a6bd1d292db315f12a548bc92bd9146c5e6b840c6f9" [label=""];
  "sha256:2f0a2a1bed97269e17366ad75bd947a99e4cc34a5f5bafb70b0152ae95d52e8f" -> "sha256:2f2a1f437f9b571243b41a6bd1d292db315f12a548bc92bd9146c5e6b840c6f9" [label=""];
  "sha256:2f2a1f437f9b571243b41a6bd1d292db315f12a548bc92bd9146c5e6b840c6f9" -> "sha256:e55954af0a58772b8a1539235fe02d3abf394e3a1abaaf1cbaf1f4bf989c73bd" [label=""];
}

