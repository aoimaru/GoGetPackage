[app/sources/209343581.Dockerfile]
digraph {
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" [label="docker-image://docker.io/library/buildpack-deps:jessie-curl" shape="ellipse"];
  "sha256:c003b385a97f509843a532d7a1e817de1a10173db8d86e8195d5edf29678791b" [label="/bin/sh -c set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ||         gpg --keyserver pgp.mit.edu --recv-keys \"$key\" ||         gpg --keyserver keyserver.pgp.com --recv-keys \"$key\" ;     done" shape="box"];
  "sha256:c334a4cf701d8b548188a4e9aa75490118dabcbbbfc48dd2dba47108610aa285" [label="/bin/sh -c wget --no-verbose https://dl.influxdata.com/influxdb/nightlies/influxdb_nightly_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/nightlies/influxdb_nightly_amd64.deb &&     gpg --batch --verify influxdb_nightly_amd64.deb.asc influxdb_nightly_amd64.deb &&     dpkg -i influxdb_nightly_amd64.deb &&     rm -f influxdb_nightly_amd64.deb*" shape="box"];
  "sha256:d1871da69cf6c174fccdb20b476dc88e7069880aae6277451e575f41b63cf3c3" [label="local://context" shape="ellipse"];
  "sha256:c0d8eb66547f2187ecece64aca5f4723cb053e35052cec1e2e56f6ca890d723e" [label="copy{src=/influxdb.conf, dest=/etc/influxdb/influxdb.conf}" shape="note"];
  "sha256:17085eb2b9cc6b9c59df4a65beffba17009ab58d157eb9f011540a73ae2dd10a" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:9a5942269d1afc78c95140f931936885b027547635054992f6d5e493a9cdb1e6" [label="copy{src=/init-influxdb.sh, dest=/init-influxdb.sh}" shape="note"];
  "sha256:9692be2a8ee07f8d5d42b09780b98c759cf1c3b2cd4fdaaf16c041dbeb63951e" [label="sha256:9692be2a8ee07f8d5d42b09780b98c759cf1c3b2cd4fdaaf16c041dbeb63951e" shape="plaintext"];
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" -> "sha256:c003b385a97f509843a532d7a1e817de1a10173db8d86e8195d5edf29678791b" [label=""];
  "sha256:c003b385a97f509843a532d7a1e817de1a10173db8d86e8195d5edf29678791b" -> "sha256:c334a4cf701d8b548188a4e9aa75490118dabcbbbfc48dd2dba47108610aa285" [label=""];
  "sha256:c334a4cf701d8b548188a4e9aa75490118dabcbbbfc48dd2dba47108610aa285" -> "sha256:c0d8eb66547f2187ecece64aca5f4723cb053e35052cec1e2e56f6ca890d723e" [label=""];
  "sha256:d1871da69cf6c174fccdb20b476dc88e7069880aae6277451e575f41b63cf3c3" -> "sha256:c0d8eb66547f2187ecece64aca5f4723cb053e35052cec1e2e56f6ca890d723e" [label=""];
  "sha256:c0d8eb66547f2187ecece64aca5f4723cb053e35052cec1e2e56f6ca890d723e" -> "sha256:17085eb2b9cc6b9c59df4a65beffba17009ab58d157eb9f011540a73ae2dd10a" [label=""];
  "sha256:d1871da69cf6c174fccdb20b476dc88e7069880aae6277451e575f41b63cf3c3" -> "sha256:17085eb2b9cc6b9c59df4a65beffba17009ab58d157eb9f011540a73ae2dd10a" [label=""];
  "sha256:17085eb2b9cc6b9c59df4a65beffba17009ab58d157eb9f011540a73ae2dd10a" -> "sha256:9a5942269d1afc78c95140f931936885b027547635054992f6d5e493a9cdb1e6" [label=""];
  "sha256:d1871da69cf6c174fccdb20b476dc88e7069880aae6277451e575f41b63cf3c3" -> "sha256:9a5942269d1afc78c95140f931936885b027547635054992f6d5e493a9cdb1e6" [label=""];
  "sha256:9a5942269d1afc78c95140f931936885b027547635054992f6d5e493a9cdb1e6" -> "sha256:9692be2a8ee07f8d5d42b09780b98c759cf1c3b2cd4fdaaf16c041dbeb63951e" [label=""];
}

