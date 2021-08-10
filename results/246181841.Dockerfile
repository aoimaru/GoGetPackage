[app/sources/246181841.Dockerfile]
digraph {
  "sha256:337c98a594a83ebf864a4b394273755b9cbed59fa58096717973387f84244e43" [label="docker-image://docker.io/opensuse/leap:15" shape="ellipse"];
  "sha256:11e305830467f1bb1663a3d90860b432ce06cfcb6fed50b9e112ae09724d5e2e" [label="/bin/sh -c for filename in $(grep -Rl enabled=1 /etc/zypp/repos.d/); do sed -i \"s|http://download.opensuse.org/|${PACKAGE_MIRROR}|\" $filename; done && zypper refresh && zypper up -y && zypper install -y tar gzip which unzip" shape="box"];
  "sha256:71748393f5d3e4d61582f5ac195f712833ef38dad9c05ba6648c8a2ab216c263" [label="sha256:71748393f5d3e4d61582f5ac195f712833ef38dad9c05ba6648c8a2ab216c263" shape="plaintext"];
  "sha256:337c98a594a83ebf864a4b394273755b9cbed59fa58096717973387f84244e43" -> "sha256:11e305830467f1bb1663a3d90860b432ce06cfcb6fed50b9e112ae09724d5e2e" [label=""];
  "sha256:11e305830467f1bb1663a3d90860b432ce06cfcb6fed50b9e112ae09724d5e2e" -> "sha256:71748393f5d3e4d61582f5ac195f712833ef38dad9c05ba6648c8a2ab216c263" [label=""];
}

