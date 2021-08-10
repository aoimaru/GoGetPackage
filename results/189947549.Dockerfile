[app/sources/189947549.Dockerfile]
digraph {
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" [label="docker-image://docker.io/library/ubuntu:15.04" shape="ellipse"];
  "sha256:46353bc98d03cb654af0af624b1529d273d0a2f911ae18b7949daf6e85a19e06" [label="/bin/sh -c apt-get update && apt-get install -y openjdk-8-jdk" shape="box"];
  "sha256:f88a1315ed025c62d4a4e2654dcdd9cd390ef171305a2fcf36c883b2f8a29fec" [label="/bin/sh -c apt-get update && apt-get install -y maven git curl" shape="box"];
  "sha256:cf79eefb2b1a966be021920e6283ceaff77edfb616b55257f61cec2cdcc69105" [label="mkdir{path=/root/dev/agi/bin}" shape="note"];
  "sha256:5ca49b2d0c499a4792c767caa0c1bda8befb65e064b52514a3dbd576ee293850" [label="sha256:5ca49b2d0c499a4792c767caa0c1bda8befb65e064b52514a3dbd576ee293850" shape="plaintext"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" -> "sha256:46353bc98d03cb654af0af624b1529d273d0a2f911ae18b7949daf6e85a19e06" [label=""];
  "sha256:46353bc98d03cb654af0af624b1529d273d0a2f911ae18b7949daf6e85a19e06" -> "sha256:f88a1315ed025c62d4a4e2654dcdd9cd390ef171305a2fcf36c883b2f8a29fec" [label=""];
  "sha256:f88a1315ed025c62d4a4e2654dcdd9cd390ef171305a2fcf36c883b2f8a29fec" -> "sha256:cf79eefb2b1a966be021920e6283ceaff77edfb616b55257f61cec2cdcc69105" [label=""];
  "sha256:cf79eefb2b1a966be021920e6283ceaff77edfb616b55257f61cec2cdcc69105" -> "sha256:5ca49b2d0c499a4792c767caa0c1bda8befb65e064b52514a3dbd576ee293850" [label=""];
}

