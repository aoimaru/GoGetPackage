[app/sources/462962950.Dockerfile]
digraph {
  "sha256:ae2020a45535426709b85e223d690b5fc553a42bcddb1a5ec250d714b813ce13" [label="local://context" shape="ellipse"];
  "sha256:98aa3dd15b926a5929bddff42f4ec93ae03bdd9f8aa11db3201ae18ba1d488aa" [label="docker-image://docker.io/library/node:8.11.2-slim" shape="ellipse"];
  "sha256:29161176aec69362adad10f62cfab80d7a63941ac30fe54e6d01a9fbdb988f00" [label="/bin/sh -c sed -i '/jessie-updates/d' /etc/apt/sources.list" shape="box"];
  "sha256:a39ebacf9024170f274c9f207214391d60d84c6973c31669555fafe67478a391" [label="/bin/sh -c apt-get update && apt-get install git -y" shape="box"];
  "sha256:62806ac694833cb594ca34102f629a39d765cb96500f689baea5ba2cdfbd961d" [label="/bin/sh -c npm i npm@6.4.1 -g" shape="box"];
  "sha256:c182f7a469b2c7af1b3f56eb5681b5df72fc97116dd1822b4f2940a04161338b" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:079bda55509786e3caf2901e4fec07c99e0d059a8731d86b140ab51e2246ecde" [label="copy{src=/package*.json, dest=/app/}" shape="note"];
  "sha256:94d307b6e6cbcfc9a527f1112af3fe96f4d56b235db3312fea435a59f0dbf208" [label="mkdir{path=/app}" shape="note"];
  "sha256:79a5f413ddddca7bcbd85367a2ba46e56ad295f83a171bdb24da25581b1ede42" [label="/bin/sh -c npm set audit false ;    npm install" shape="box"];
  "sha256:ff5867565019382bbe0d88db2ebee77818fe3fba4ee070305ccf5699461cdc73" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d25b451caa27dc57af426d01a89ef43f67ad5980f85c5ef8fb382d599a64b2b7" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:2c5320ad7efcf86027e942b4bab7ac0e4ed1855478115a4c214591213d74fc71" [label="sha256:2c5320ad7efcf86027e942b4bab7ac0e4ed1855478115a4c214591213d74fc71" shape="plaintext"];
  "sha256:98aa3dd15b926a5929bddff42f4ec93ae03bdd9f8aa11db3201ae18ba1d488aa" -> "sha256:29161176aec69362adad10f62cfab80d7a63941ac30fe54e6d01a9fbdb988f00" [label=""];
  "sha256:29161176aec69362adad10f62cfab80d7a63941ac30fe54e6d01a9fbdb988f00" -> "sha256:a39ebacf9024170f274c9f207214391d60d84c6973c31669555fafe67478a391" [label=""];
  "sha256:a39ebacf9024170f274c9f207214391d60d84c6973c31669555fafe67478a391" -> "sha256:62806ac694833cb594ca34102f629a39d765cb96500f689baea5ba2cdfbd961d" [label=""];
  "sha256:62806ac694833cb594ca34102f629a39d765cb96500f689baea5ba2cdfbd961d" -> "sha256:c182f7a469b2c7af1b3f56eb5681b5df72fc97116dd1822b4f2940a04161338b" [label=""];
  "sha256:c182f7a469b2c7af1b3f56eb5681b5df72fc97116dd1822b4f2940a04161338b" -> "sha256:079bda55509786e3caf2901e4fec07c99e0d059a8731d86b140ab51e2246ecde" [label=""];
  "sha256:ae2020a45535426709b85e223d690b5fc553a42bcddb1a5ec250d714b813ce13" -> "sha256:079bda55509786e3caf2901e4fec07c99e0d059a8731d86b140ab51e2246ecde" [label=""];
  "sha256:079bda55509786e3caf2901e4fec07c99e0d059a8731d86b140ab51e2246ecde" -> "sha256:94d307b6e6cbcfc9a527f1112af3fe96f4d56b235db3312fea435a59f0dbf208" [label=""];
  "sha256:94d307b6e6cbcfc9a527f1112af3fe96f4d56b235db3312fea435a59f0dbf208" -> "sha256:79a5f413ddddca7bcbd85367a2ba46e56ad295f83a171bdb24da25581b1ede42" [label=""];
  "sha256:79a5f413ddddca7bcbd85367a2ba46e56ad295f83a171bdb24da25581b1ede42" -> "sha256:ff5867565019382bbe0d88db2ebee77818fe3fba4ee070305ccf5699461cdc73" [label=""];
  "sha256:ae2020a45535426709b85e223d690b5fc553a42bcddb1a5ec250d714b813ce13" -> "sha256:ff5867565019382bbe0d88db2ebee77818fe3fba4ee070305ccf5699461cdc73" [label=""];
  "sha256:ff5867565019382bbe0d88db2ebee77818fe3fba4ee070305ccf5699461cdc73" -> "sha256:d25b451caa27dc57af426d01a89ef43f67ad5980f85c5ef8fb382d599a64b2b7" [label=""];
  "sha256:d25b451caa27dc57af426d01a89ef43f67ad5980f85c5ef8fb382d599a64b2b7" -> "sha256:2c5320ad7efcf86027e942b4bab7ac0e4ed1855478115a4c214591213d74fc71" [label=""];
}

