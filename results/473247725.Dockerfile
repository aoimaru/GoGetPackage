[app/sources/473247725.Dockerfile]
digraph {
  "sha256:4696760d590b25da411ffe962b0b06ad4d415eea0e6ca763077fcca33e405f0c" [label="docker-image://docker.io/phusion/baseimage:0.9.15" shape="ellipse"];
  "sha256:7acd040919abd748cd37878bc2537f41612083750f9c97ad9afac77d919358da" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7d55ac9fdb9ce949ba0d245d517d1c840a3373943d16c6adcab1694665b6b240" [label="/bin/sh -c apt-get install -y spamassassin" shape="box"];
  "sha256:ce8af97035b6a542ef1cffec55342e262598e710d070a37e084c01c6bd954051" [label="/bin/sh -c groupadd spamd &&     useradd -g spamd -s /bin/false -d /var/log/spamassassin spamd &&     mkdir -p /var/log/spamassassin &&     chown -R spamd:spamd /var/log/spamassassin" shape="box"];
  "sha256:997e263236ffb4303a64e5768d11f9aaeee2e2b39daef32b7e166ef1387477c1" [label="local://context" shape="ellipse"];
  "sha256:142c4996e5a5e4ecff8e409442cf45bdfa6e94da0bcb7055999bfb247362217c" [label="copy{src=/spamd.sh, dest=/tmp/spamd.sh}" shape="note"];
  "sha256:ec3eeff89e431deaa2746900e357c76bd5593772067d40e107b6195cd8dce0c5" [label="/bin/sh -c mkdir /etc/service/spamd &&     mv /tmp/spamd.sh /etc/service/spamd/run &&     chmod +x /etc/service/spamd/run" shape="box"];
  "sha256:87ee8cfad76c9569f56253432caeb68e3b814b2570bde22576303f79b4290905" [label="copy{src=/local.cf, dest=/etc/spamassassin/local.cf}" shape="note"];
  "sha256:470b47f2f5f9d2c6d59eb84a76a4734913d62d270bc550cf23df5b16d605cfff" [label="copy{src=/spam-learn, dest=/etc/cron.daily/spam-learn}" shape="note"];
  "sha256:3fd6e6a4c03503f99350bfcd9c54abafbcdf8aa4c93aa515d857aa8b2d24bdb3" [label="sha256:3fd6e6a4c03503f99350bfcd9c54abafbcdf8aa4c93aa515d857aa8b2d24bdb3" shape="plaintext"];
  "sha256:4696760d590b25da411ffe962b0b06ad4d415eea0e6ca763077fcca33e405f0c" -> "sha256:7acd040919abd748cd37878bc2537f41612083750f9c97ad9afac77d919358da" [label=""];
  "sha256:7acd040919abd748cd37878bc2537f41612083750f9c97ad9afac77d919358da" -> "sha256:7d55ac9fdb9ce949ba0d245d517d1c840a3373943d16c6adcab1694665b6b240" [label=""];
  "sha256:7d55ac9fdb9ce949ba0d245d517d1c840a3373943d16c6adcab1694665b6b240" -> "sha256:ce8af97035b6a542ef1cffec55342e262598e710d070a37e084c01c6bd954051" [label=""];
  "sha256:ce8af97035b6a542ef1cffec55342e262598e710d070a37e084c01c6bd954051" -> "sha256:142c4996e5a5e4ecff8e409442cf45bdfa6e94da0bcb7055999bfb247362217c" [label=""];
  "sha256:997e263236ffb4303a64e5768d11f9aaeee2e2b39daef32b7e166ef1387477c1" -> "sha256:142c4996e5a5e4ecff8e409442cf45bdfa6e94da0bcb7055999bfb247362217c" [label=""];
  "sha256:142c4996e5a5e4ecff8e409442cf45bdfa6e94da0bcb7055999bfb247362217c" -> "sha256:ec3eeff89e431deaa2746900e357c76bd5593772067d40e107b6195cd8dce0c5" [label=""];
  "sha256:ec3eeff89e431deaa2746900e357c76bd5593772067d40e107b6195cd8dce0c5" -> "sha256:87ee8cfad76c9569f56253432caeb68e3b814b2570bde22576303f79b4290905" [label=""];
  "sha256:997e263236ffb4303a64e5768d11f9aaeee2e2b39daef32b7e166ef1387477c1" -> "sha256:87ee8cfad76c9569f56253432caeb68e3b814b2570bde22576303f79b4290905" [label=""];
  "sha256:87ee8cfad76c9569f56253432caeb68e3b814b2570bde22576303f79b4290905" -> "sha256:470b47f2f5f9d2c6d59eb84a76a4734913d62d270bc550cf23df5b16d605cfff" [label=""];
  "sha256:997e263236ffb4303a64e5768d11f9aaeee2e2b39daef32b7e166ef1387477c1" -> "sha256:470b47f2f5f9d2c6d59eb84a76a4734913d62d270bc550cf23df5b16d605cfff" [label=""];
  "sha256:470b47f2f5f9d2c6d59eb84a76a4734913d62d270bc550cf23df5b16d605cfff" -> "sha256:3fd6e6a4c03503f99350bfcd9c54abafbcdf8aa4c93aa515d857aa8b2d24bdb3" [label=""];
}

