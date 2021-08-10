[app/sources/360543368.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:f85f84a7bfbb609aad2efd197406168f8668f2ee9b369290515f7a9f3588a072" [label="/bin/sh -c apt-get update && apt-get install curl -y" shape="box"];
  "sha256:561d85db325d015f2272d57e5fd04a366142b86093b9863f9a71df3f4b4526ff" [label="/bin/sh -c curl https://monitoringagent.blob.core.windows.net/agent007/monitoring-installer | sh -s cmBS5j5hvkrc-0mv2uLVtol8kdhAzw4uAVSy9QrbSRUBCKtRyK5-jzfisrDUfntmQpgkNupCQPu5GIG23be1FXw" shape="box"];
  "sha256:a1ffeb64ccbd5d4f9e284be55ccbd5ec34b52f5fd09aa694e58a08fe46105a60" [label="/bin/sh -c echo 'repo: agent007' >> /home/monitoring_agent/config.yml" shape="box"];
  "sha256:72e2239058e10ceb9bdc3d4bfaff509ef431bcf2c131fbaeb3cad2900111bea7" [label="/bin/sh -c echo 'debw-mon-inst-007' > /etc/monitoring_agent/server.key" shape="box"];
  "sha256:c9308aa92ae202a93c8541ed8e7f6407c80538a8ee587cd667ef6618c91c9eab" [label="/bin/sh -c /home/monitoring_agent/monitoring-agent --first-time" shape="box"];
  "sha256:9f500d5021b5ee5dc4b21e361ca1e6e34e14bb5a70920e1b261514b5027f7a26" [label="sha256:9f500d5021b5ee5dc4b21e361ca1e6e34e14bb5a70920e1b261514b5027f7a26" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:f85f84a7bfbb609aad2efd197406168f8668f2ee9b369290515f7a9f3588a072" [label=""];
  "sha256:f85f84a7bfbb609aad2efd197406168f8668f2ee9b369290515f7a9f3588a072" -> "sha256:561d85db325d015f2272d57e5fd04a366142b86093b9863f9a71df3f4b4526ff" [label=""];
  "sha256:561d85db325d015f2272d57e5fd04a366142b86093b9863f9a71df3f4b4526ff" -> "sha256:a1ffeb64ccbd5d4f9e284be55ccbd5ec34b52f5fd09aa694e58a08fe46105a60" [label=""];
  "sha256:a1ffeb64ccbd5d4f9e284be55ccbd5ec34b52f5fd09aa694e58a08fe46105a60" -> "sha256:72e2239058e10ceb9bdc3d4bfaff509ef431bcf2c131fbaeb3cad2900111bea7" [label=""];
  "sha256:72e2239058e10ceb9bdc3d4bfaff509ef431bcf2c131fbaeb3cad2900111bea7" -> "sha256:c9308aa92ae202a93c8541ed8e7f6407c80538a8ee587cd667ef6618c91c9eab" [label=""];
  "sha256:c9308aa92ae202a93c8541ed8e7f6407c80538a8ee587cd667ef6618c91c9eab" -> "sha256:9f500d5021b5ee5dc4b21e361ca1e6e34e14bb5a70920e1b261514b5027f7a26" [label=""];
}

