[app/sources/252794361.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:ceb24dcbfc6f8f3176cd1197903dd7396575ed2b5f2ca3ac91b3606d82399191" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:455a5110dfe32ff33f26e008880c58aabb2d90a907f6eccfa36c6cfff7672b2a" [label="/bin/sh -c apt-get update && apt-get install -y php5-cli php5-curl php5-gd php5-mcrypt php5-mongo php5-mssql php5-mysqlnd php5-pgsql php5-redis php5-sqlite" shape="box"];
  "sha256:40e08d0deb4624d0d269c2dedd74168d87b13d4caa7c8155ee7a459d7c76fab9" [label="/bin/sh -c apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:362049162714189c77d5ea6b0ec3e737f0386dad5a4b2fdf4ffa2f990176a7e1" [label="mkdir{path=/app}" shape="note"];
  "sha256:8c8b08be8b7271078e2491c6205fafd567cd7dff18096dc500301502cf2be867" [label="sha256:8c8b08be8b7271078e2491c6205fafd567cd7dff18096dc500301502cf2be867" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:ceb24dcbfc6f8f3176cd1197903dd7396575ed2b5f2ca3ac91b3606d82399191" [label=""];
  "sha256:ceb24dcbfc6f8f3176cd1197903dd7396575ed2b5f2ca3ac91b3606d82399191" -> "sha256:455a5110dfe32ff33f26e008880c58aabb2d90a907f6eccfa36c6cfff7672b2a" [label=""];
  "sha256:455a5110dfe32ff33f26e008880c58aabb2d90a907f6eccfa36c6cfff7672b2a" -> "sha256:40e08d0deb4624d0d269c2dedd74168d87b13d4caa7c8155ee7a459d7c76fab9" [label=""];
  "sha256:40e08d0deb4624d0d269c2dedd74168d87b13d4caa7c8155ee7a459d7c76fab9" -> "sha256:362049162714189c77d5ea6b0ec3e737f0386dad5a4b2fdf4ffa2f990176a7e1" [label=""];
  "sha256:362049162714189c77d5ea6b0ec3e737f0386dad5a4b2fdf4ffa2f990176a7e1" -> "sha256:8c8b08be8b7271078e2491c6205fafd567cd7dff18096dc500301502cf2be867" [label=""];
}

