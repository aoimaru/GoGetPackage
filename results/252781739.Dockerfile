[app/sources/252781739.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:00aa67a1ccaf49ac59b87635e6dd9f24da37adb9b08e8480c4a7785f9adb8009" [label="/bin/sh -c useradd -m vlc; apt-get update; apt-get install -y vlc=$VLCVERSION; rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bc21258bc0ad5525c42099471bb560d1838fb8ed587885370c3d49491849a219" [label="local://context" shape="ellipse"];
  "sha256:d1867002f486e712b8936c815f4c20faffc51e5ba15a5560d7d17708d2912f1f" [label="copy{src=/start-vlc.sh, dest=/tmp/}" shape="note"];
  "sha256:ce90af646f5a3cd93fa55f41145ad784e651e2078f2495e80aa02682e9b6ef56" [label="sha256:ce90af646f5a3cd93fa55f41145ad784e651e2078f2495e80aa02682e9b6ef56" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:00aa67a1ccaf49ac59b87635e6dd9f24da37adb9b08e8480c4a7785f9adb8009" [label=""];
  "sha256:00aa67a1ccaf49ac59b87635e6dd9f24da37adb9b08e8480c4a7785f9adb8009" -> "sha256:d1867002f486e712b8936c815f4c20faffc51e5ba15a5560d7d17708d2912f1f" [label=""];
  "sha256:bc21258bc0ad5525c42099471bb560d1838fb8ed587885370c3d49491849a219" -> "sha256:d1867002f486e712b8936c815f4c20faffc51e5ba15a5560d7d17708d2912f1f" [label=""];
  "sha256:d1867002f486e712b8936c815f4c20faffc51e5ba15a5560d7d17708d2912f1f" -> "sha256:ce90af646f5a3cd93fa55f41145ad784e651e2078f2495e80aa02682e9b6ef56" [label=""];
}

