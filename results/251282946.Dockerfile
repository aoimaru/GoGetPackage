[app/sources/251282946.Dockerfile]
digraph {
  "sha256:d3392e0ad448469a6a843fe577e1ecab47b068fe8ae4a74d56e1ec2a4118fc2b" [label="docker-image://docker.io/vitess/bootstrap:common@sha256:dad26440060d6cd24a682956384a7d8246e6e7098dd0a03eddc17a0e97145a30" shape="ellipse"];
  "sha256:48c417d9915206837be05055c79458815f7de6581b57e783bbc1aad348800047" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends     mariadb-server     libmariadbclient-dev     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fc3fbb64808ae2252784306812cf02a130b8de49364a5e314ee4fd44e8010fa5" [label="mkdir{path=/vt/src/vitess.io/vitess}" shape="note"];
  "sha256:67107bb8623eabba7f60c9e521454d6c005c2471453143e24fc0b24dbc758462" [label="/bin/sh -c ./bootstrap.sh" shape="box"];
  "sha256:045bbd58fae5cedaa66214049338478f82fcf1111069e3bda798071ed9caabb7" [label="sha256:045bbd58fae5cedaa66214049338478f82fcf1111069e3bda798071ed9caabb7" shape="plaintext"];
  "sha256:d3392e0ad448469a6a843fe577e1ecab47b068fe8ae4a74d56e1ec2a4118fc2b" -> "sha256:48c417d9915206837be05055c79458815f7de6581b57e783bbc1aad348800047" [label=""];
  "sha256:48c417d9915206837be05055c79458815f7de6581b57e783bbc1aad348800047" -> "sha256:fc3fbb64808ae2252784306812cf02a130b8de49364a5e314ee4fd44e8010fa5" [label=""];
  "sha256:fc3fbb64808ae2252784306812cf02a130b8de49364a5e314ee4fd44e8010fa5" -> "sha256:67107bb8623eabba7f60c9e521454d6c005c2471453143e24fc0b24dbc758462" [label=""];
  "sha256:67107bb8623eabba7f60c9e521454d6c005c2471453143e24fc0b24dbc758462" -> "sha256:045bbd58fae5cedaa66214049338478f82fcf1111069e3bda798071ed9caabb7" [label=""];
}

