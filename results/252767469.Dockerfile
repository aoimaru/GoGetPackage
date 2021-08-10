[app/sources/252767469.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:e9627b00eac1cda32f1f2bbd0cd860e4925859adaa2e47ae402983aa0dc4fbe6" [label="/bin/sh -c echo \"Etc/UTC\" > /etc/timezone" shape="box"];
  "sha256:3e56b165b994aabcdecba2911779f7737244875983d91ba56e54d1194bb347c5" [label="/bin/sh -c dpkg-reconfigure tzdata" shape="box"];
  "sha256:98962fa1363b16460ee8988f1efd385135a5751471baa0b776d063691c8d4191" [label="/bin/sh -c apt-get update; apt-get install -y --fix-missing ntp" shape="box"];
  "sha256:b6e330dfa44a5984d36edc43e8eeba5de9149c28c9878977cd51e47444d93123" [label="local://context" shape="ellipse"];
  "sha256:99d5800ae0bfea11df0c6b40566db5b3e165677dfcbae9051c12688ed302c3fe" [label="copy{src=/assets/ntp.conf, dest=/etc/ntp.conf}" shape="note"];
  "sha256:b9f9eeb04fc642eae0cf309ae8b992ba383ced26961eae753067f330dcba0e22" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:4d60d35db8fbdd91b2544fc65a5cd7b5abc7373265ff95365e5ab542166b56a2" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:7821fe2a6c878e043167e8ee34da9b8587f933fb76d70d72583c58c6ef6ade87" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:534e3374dfc613da860b4f84426e212b7164390bc5e53788478d2e13445f9761" [label="sha256:534e3374dfc613da860b4f84426e212b7164390bc5e53788478d2e13445f9761" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:e9627b00eac1cda32f1f2bbd0cd860e4925859adaa2e47ae402983aa0dc4fbe6" [label=""];
  "sha256:e9627b00eac1cda32f1f2bbd0cd860e4925859adaa2e47ae402983aa0dc4fbe6" -> "sha256:3e56b165b994aabcdecba2911779f7737244875983d91ba56e54d1194bb347c5" [label=""];
  "sha256:3e56b165b994aabcdecba2911779f7737244875983d91ba56e54d1194bb347c5" -> "sha256:98962fa1363b16460ee8988f1efd385135a5751471baa0b776d063691c8d4191" [label=""];
  "sha256:98962fa1363b16460ee8988f1efd385135a5751471baa0b776d063691c8d4191" -> "sha256:99d5800ae0bfea11df0c6b40566db5b3e165677dfcbae9051c12688ed302c3fe" [label=""];
  "sha256:b6e330dfa44a5984d36edc43e8eeba5de9149c28c9878977cd51e47444d93123" -> "sha256:99d5800ae0bfea11df0c6b40566db5b3e165677dfcbae9051c12688ed302c3fe" [label=""];
  "sha256:99d5800ae0bfea11df0c6b40566db5b3e165677dfcbae9051c12688ed302c3fe" -> "sha256:b9f9eeb04fc642eae0cf309ae8b992ba383ced26961eae753067f330dcba0e22" [label=""];
  "sha256:b9f9eeb04fc642eae0cf309ae8b992ba383ced26961eae753067f330dcba0e22" -> "sha256:4d60d35db8fbdd91b2544fc65a5cd7b5abc7373265ff95365e5ab542166b56a2" [label=""];
  "sha256:4d60d35db8fbdd91b2544fc65a5cd7b5abc7373265ff95365e5ab542166b56a2" -> "sha256:7821fe2a6c878e043167e8ee34da9b8587f933fb76d70d72583c58c6ef6ade87" [label=""];
  "sha256:7821fe2a6c878e043167e8ee34da9b8587f933fb76d70d72583c58c6ef6ade87" -> "sha256:534e3374dfc613da860b4f84426e212b7164390bc5e53788478d2e13445f9761" [label=""];
}

