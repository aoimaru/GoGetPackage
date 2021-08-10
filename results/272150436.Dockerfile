[app/sources/272150436.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:d9618021f67dd24cb79ed0885242df9286a6ec28569bc19c9a41e6f5036a7d05" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:c46ad8e84532c7dccddbadf9b06fa3df5c883fc8c56062f68784eca53f55daf9" [label="/bin/sh -c apt-get -y install curl openvpn" shape="box"];
  "sha256:749225edf2951777a0ae8167dff6269f18e8c78dd4e9f86c545525d3492fa2fc" [label="/bin/sh -c mkdir -p /usr/src/vpn-conf" shape="box"];
  "sha256:089c21d837bb09d26602d083772f6cb9356d1571cb753535b87a6e0a0cc2ade7" [label="local://context" shape="ellipse"];
  "sha256:f0f1ce6aa9a79d60847f729cd56829344ce180091b8c045f4c4d82fb510bb7ac" [label="copy{src=/vpn-conf, dest=/usr/src/vpn-conf/}" shape="note"];
  "sha256:15b6b897c0acdf7cc8add1c325e17c37912c737e3f01f2a2a30e9b37161154e0" [label="mkdir{path=/usr/src/vpn-conf}" shape="note"];
  "sha256:d3a17e1e35151def8bd40c0fb75a293dfe3788991b19a11a686cce343e254989" [label="/bin/sh -c npm i -g --unsafe webtorrent-webui" shape="box"];
  "sha256:38ed65513cd63d2783af75f1d4f0db6a2023c37feaeccb55056d7f1c0a6da575" [label="copy{src=/init.sh, dest=/usr/src/vpn-conf}" shape="note"];
  "sha256:751d5cbb093b667048367f4ce93e78dc852dc94d51652f79c7bfef8a0d73c21d" [label="sha256:751d5cbb093b667048367f4ce93e78dc852dc94d51652f79c7bfef8a0d73c21d" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:d9618021f67dd24cb79ed0885242df9286a6ec28569bc19c9a41e6f5036a7d05" [label=""];
  "sha256:d9618021f67dd24cb79ed0885242df9286a6ec28569bc19c9a41e6f5036a7d05" -> "sha256:c46ad8e84532c7dccddbadf9b06fa3df5c883fc8c56062f68784eca53f55daf9" [label=""];
  "sha256:c46ad8e84532c7dccddbadf9b06fa3df5c883fc8c56062f68784eca53f55daf9" -> "sha256:749225edf2951777a0ae8167dff6269f18e8c78dd4e9f86c545525d3492fa2fc" [label=""];
  "sha256:749225edf2951777a0ae8167dff6269f18e8c78dd4e9f86c545525d3492fa2fc" -> "sha256:f0f1ce6aa9a79d60847f729cd56829344ce180091b8c045f4c4d82fb510bb7ac" [label=""];
  "sha256:089c21d837bb09d26602d083772f6cb9356d1571cb753535b87a6e0a0cc2ade7" -> "sha256:f0f1ce6aa9a79d60847f729cd56829344ce180091b8c045f4c4d82fb510bb7ac" [label=""];
  "sha256:f0f1ce6aa9a79d60847f729cd56829344ce180091b8c045f4c4d82fb510bb7ac" -> "sha256:15b6b897c0acdf7cc8add1c325e17c37912c737e3f01f2a2a30e9b37161154e0" [label=""];
  "sha256:15b6b897c0acdf7cc8add1c325e17c37912c737e3f01f2a2a30e9b37161154e0" -> "sha256:d3a17e1e35151def8bd40c0fb75a293dfe3788991b19a11a686cce343e254989" [label=""];
  "sha256:d3a17e1e35151def8bd40c0fb75a293dfe3788991b19a11a686cce343e254989" -> "sha256:38ed65513cd63d2783af75f1d4f0db6a2023c37feaeccb55056d7f1c0a6da575" [label=""];
  "sha256:089c21d837bb09d26602d083772f6cb9356d1571cb753535b87a6e0a0cc2ade7" -> "sha256:38ed65513cd63d2783af75f1d4f0db6a2023c37feaeccb55056d7f1c0a6da575" [label=""];
  "sha256:38ed65513cd63d2783af75f1d4f0db6a2023c37feaeccb55056d7f1c0a6da575" -> "sha256:751d5cbb093b667048367f4ce93e78dc852dc94d51652f79c7bfef8a0d73c21d" [label=""];
}

