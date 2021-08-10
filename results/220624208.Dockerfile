[app/sources/220624208.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:cc194e6b98dce89b3c270016a9f89ae3ba664c37c86e41f03c5666e64ef30d7b" [label="/bin/sh -c apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dd5a056d0e512ebc8f721229cbe92ae08493a06f33f488e860f1dfdf7d9ecfcc" [label="local://context" shape="ellipse"];
  "sha256:b5a4eb6091daf766d2aee25ae3c29de0585a19dfda1ea524b8cdc16568e2f8ef" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:a5a6575ae6249631ba9024c66cbec5078cfaff8b107c0355ae657c88448702af" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256} ${NEO4J_TARBALL}\" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}" shape="box"];
  "sha256:8d8403c59ad1081d37d6f0415dd7611620bc450dedd4ddbd66d1a06b6871afe6" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:3df28a1cc12d47b6514c2d22806e3b785f9fe402cb8f4af7622c5d45109b71a8" [label="/bin/sh -c mv data /data     && ln --symbolic /data" shape="box"];
  "sha256:936410db3fc4c7dffbac1112447ceb0275890b94961b495303f55d8ec0c563b6" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:65281ab842cec3cbc5ee5e2800e1f57266ee029d348951e91ce80a50e0977d22" [label="sha256:65281ab842cec3cbc5ee5e2800e1f57266ee029d348951e91ce80a50e0977d22" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:cc194e6b98dce89b3c270016a9f89ae3ba664c37c86e41f03c5666e64ef30d7b" [label=""];
  "sha256:cc194e6b98dce89b3c270016a9f89ae3ba664c37c86e41f03c5666e64ef30d7b" -> "sha256:b5a4eb6091daf766d2aee25ae3c29de0585a19dfda1ea524b8cdc16568e2f8ef" [label=""];
  "sha256:dd5a056d0e512ebc8f721229cbe92ae08493a06f33f488e860f1dfdf7d9ecfcc" -> "sha256:b5a4eb6091daf766d2aee25ae3c29de0585a19dfda1ea524b8cdc16568e2f8ef" [label=""];
  "sha256:b5a4eb6091daf766d2aee25ae3c29de0585a19dfda1ea524b8cdc16568e2f8ef" -> "sha256:a5a6575ae6249631ba9024c66cbec5078cfaff8b107c0355ae657c88448702af" [label=""];
  "sha256:a5a6575ae6249631ba9024c66cbec5078cfaff8b107c0355ae657c88448702af" -> "sha256:8d8403c59ad1081d37d6f0415dd7611620bc450dedd4ddbd66d1a06b6871afe6" [label=""];
  "sha256:8d8403c59ad1081d37d6f0415dd7611620bc450dedd4ddbd66d1a06b6871afe6" -> "sha256:3df28a1cc12d47b6514c2d22806e3b785f9fe402cb8f4af7622c5d45109b71a8" [label=""];
  "sha256:3df28a1cc12d47b6514c2d22806e3b785f9fe402cb8f4af7622c5d45109b71a8" -> "sha256:936410db3fc4c7dffbac1112447ceb0275890b94961b495303f55d8ec0c563b6" [label=""];
  "sha256:dd5a056d0e512ebc8f721229cbe92ae08493a06f33f488e860f1dfdf7d9ecfcc" -> "sha256:936410db3fc4c7dffbac1112447ceb0275890b94961b495303f55d8ec0c563b6" [label=""];
  "sha256:936410db3fc4c7dffbac1112447ceb0275890b94961b495303f55d8ec0c563b6" -> "sha256:65281ab842cec3cbc5ee5e2800e1f57266ee029d348951e91ce80a50e0977d22" [label=""];
}

