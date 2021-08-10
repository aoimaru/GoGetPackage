[app/sources/284083942.Dockerfile]
digraph {
  "sha256:95f1c2eb44f777b83627cb11d9ca382136d0ec8e51c0273681be92d5e8b2c3f0" [label="docker-image://docker.io/library/openjdk:10-jre-slim" shape="ellipse"];
  "sha256:772b7044947bc69bd78d38c614d746e7d3bd6c44151cad7dd7bd0e72d85b4804" [label="docker-image://docker.io/library/maven:3.5.3-jdk-10" shape="ellipse"];
  "sha256:0b93c045f93d5d01d6d577cac907e56e0677cb96734f61c0e96f424c46cf43ca" [label="/bin/sh -c mkdir /agent     && mkdir /app" shape="box"];
  "sha256:9862a519510b68f19dd7d6b759b497e87e7f7479a79f1c3e1260ca932840019d" [label="local://context" shape="ellipse"];
  "sha256:d2678e1b53f80972cb52063b20ccc78ad184b1dda22b0a4bc09dd120cd3c180d" [label="copy{src=/testapp, dest=/app}" shape="note"];
  "sha256:68ea207407ace349731c0a3b223d3fa12a613793eaba697b6bd6bd86f5e4b1c4" [label="mkdir{path=/agent}" shape="note"];
  "sha256:6b3cce3e5b9c076700de17470e232bcee2cc61e678653f73690979ed12d920ae" [label="/bin/sh -c git clone https://github.com/${JAVA_AGENT_REPO}.git /agent/apm-agent-java" shape="box"];
  "sha256:6184d1f296246bbe487190c773765a4b03d5d0b3539c4ab3dd79f9a3229cc5a5" [label="/bin/sh -c cd /agent/apm-agent-java   && git fetch -q origin '+refs/pull/*:refs/remotes/origin/pr/*'   && git checkout ${JAVA_AGENT_BRANCH}" shape="box"];
  "sha256:a59d7f0fb975cac646c7b8ad7c6fa66be6ec9dea04063625a4ebaffc5abe74ed" [label="copy{src=/maven-package.sh, dest=/agent}" shape="note"];
  "sha256:835f6fc0308e49b9952e5a806efa7e5951dde952dd8a06dc454b177a7bac39f3" [label="/bin/sh -c ./maven-package.sh \"${JAVA_AGENT_BUILT_VERSION}\"" shape="box"];
  "sha256:bf8cff57a3be75f170d96afdcbdfaac6fad9532f2a35362c6b872aaedf3abbff" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:2435aa87197bfb558bb92429ebb264f5e87686d9704abf1f4a9e31c318d2bd8f" [label="copy{src=/agent/apm-agent.jar, dest=/app}" shape="note"];
  "sha256:9f7d2cde449e8a7d933ce2d98cb34b6c7a620b37bc491ef70fa334f41e55eaf9" [label="/bin/sh -c apt-get -qq update   && apt-get -qq install -y curl   && apt-get -qq clean   && rm -fr /var/lib/apt/lists/*" shape="box"];
  "sha256:997bc393919b61ab5255df62fe2b1a3c5448660754d7f0c1133100529a9bb532" [label="mkdir{path=/app}" shape="note"];
  "sha256:c11f917edb70e3b507dbf42a20ee60310f7d7d951e6db05920a7e27262413941" [label="sha256:c11f917edb70e3b507dbf42a20ee60310f7d7d951e6db05920a7e27262413941" shape="plaintext"];
  "sha256:772b7044947bc69bd78d38c614d746e7d3bd6c44151cad7dd7bd0e72d85b4804" -> "sha256:0b93c045f93d5d01d6d577cac907e56e0677cb96734f61c0e96f424c46cf43ca" [label=""];
  "sha256:0b93c045f93d5d01d6d577cac907e56e0677cb96734f61c0e96f424c46cf43ca" -> "sha256:d2678e1b53f80972cb52063b20ccc78ad184b1dda22b0a4bc09dd120cd3c180d" [label=""];
  "sha256:9862a519510b68f19dd7d6b759b497e87e7f7479a79f1c3e1260ca932840019d" -> "sha256:d2678e1b53f80972cb52063b20ccc78ad184b1dda22b0a4bc09dd120cd3c180d" [label=""];
  "sha256:d2678e1b53f80972cb52063b20ccc78ad184b1dda22b0a4bc09dd120cd3c180d" -> "sha256:68ea207407ace349731c0a3b223d3fa12a613793eaba697b6bd6bd86f5e4b1c4" [label=""];
  "sha256:68ea207407ace349731c0a3b223d3fa12a613793eaba697b6bd6bd86f5e4b1c4" -> "sha256:6b3cce3e5b9c076700de17470e232bcee2cc61e678653f73690979ed12d920ae" [label=""];
  "sha256:6b3cce3e5b9c076700de17470e232bcee2cc61e678653f73690979ed12d920ae" -> "sha256:6184d1f296246bbe487190c773765a4b03d5d0b3539c4ab3dd79f9a3229cc5a5" [label=""];
  "sha256:6184d1f296246bbe487190c773765a4b03d5d0b3539c4ab3dd79f9a3229cc5a5" -> "sha256:a59d7f0fb975cac646c7b8ad7c6fa66be6ec9dea04063625a4ebaffc5abe74ed" [label=""];
  "sha256:9862a519510b68f19dd7d6b759b497e87e7f7479a79f1c3e1260ca932840019d" -> "sha256:a59d7f0fb975cac646c7b8ad7c6fa66be6ec9dea04063625a4ebaffc5abe74ed" [label=""];
  "sha256:a59d7f0fb975cac646c7b8ad7c6fa66be6ec9dea04063625a4ebaffc5abe74ed" -> "sha256:835f6fc0308e49b9952e5a806efa7e5951dde952dd8a06dc454b177a7bac39f3" [label=""];
  "sha256:95f1c2eb44f777b83627cb11d9ca382136d0ec8e51c0273681be92d5e8b2c3f0" -> "sha256:bf8cff57a3be75f170d96afdcbdfaac6fad9532f2a35362c6b872aaedf3abbff" [label=""];
  "sha256:835f6fc0308e49b9952e5a806efa7e5951dde952dd8a06dc454b177a7bac39f3" -> "sha256:bf8cff57a3be75f170d96afdcbdfaac6fad9532f2a35362c6b872aaedf3abbff" [label=""];
  "sha256:bf8cff57a3be75f170d96afdcbdfaac6fad9532f2a35362c6b872aaedf3abbff" -> "sha256:2435aa87197bfb558bb92429ebb264f5e87686d9704abf1f4a9e31c318d2bd8f" [label=""];
  "sha256:835f6fc0308e49b9952e5a806efa7e5951dde952dd8a06dc454b177a7bac39f3" -> "sha256:2435aa87197bfb558bb92429ebb264f5e87686d9704abf1f4a9e31c318d2bd8f" [label=""];
  "sha256:2435aa87197bfb558bb92429ebb264f5e87686d9704abf1f4a9e31c318d2bd8f" -> "sha256:9f7d2cde449e8a7d933ce2d98cb34b6c7a620b37bc491ef70fa334f41e55eaf9" [label=""];
  "sha256:9f7d2cde449e8a7d933ce2d98cb34b6c7a620b37bc491ef70fa334f41e55eaf9" -> "sha256:997bc393919b61ab5255df62fe2b1a3c5448660754d7f0c1133100529a9bb532" [label=""];
  "sha256:997bc393919b61ab5255df62fe2b1a3c5448660754d7f0c1133100529a9bb532" -> "sha256:c11f917edb70e3b507dbf42a20ee60310f7d7d951e6db05920a7e27262413941" [label=""];
}

