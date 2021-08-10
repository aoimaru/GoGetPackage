[app/sources/168234884.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:db46cf898fdbc6c1e408e697aee0b878aaa94f4e5fff1ad33883fdf562d20cf0" [label="/bin/sh -c apt-get update && apt-get install -y default-jre wget coreutils" shape="box"];
  "sha256:b730e0fcc5420cd463b5c5550b6e7afc498f5362c03c482f39c303a8524d4920" [label="/bin/sh -c mkdir -p /opt/interproscan &&     cd /opt/interproscan &&     wget ftp://ftp.ebi.ac.uk/pub/software/unix/iprscan/5/5.7-48.0/interproscan-5.7-48.0-64-bit.tar.gz* &&     md5sum -c interproscan*.md5 &&     rm *.md5 &&     tar -pxvzf interproscan*.tar.gz &&     rm *.tar.gz" shape="box"];
  "sha256:6ec5893d2ac2de706f9c3ef35e6161543320b9e2e3c490c7e4d2098bb298f773" [label="/bin/sh -c ln -s /opt/interproscan/interproscan-5.7-48.0 /opt/interproscan/current" shape="box"];
  "sha256:5b3c46f20ea56f9b0222c80e1a4a2c5cdc45bdaa7aeaab02a8d952599d85f3a5" [label="mkdir{path=/opt/interproscan/current}" shape="note"];
  "sha256:71cb285777043999f2f5f685c3a2b3b2f8b4cf6ee4b689b0d5c6b0dce69dc251" [label="/bin/sh -c apt-get install -qqy ncoils blast2" shape="box"];
  "sha256:413690a307b9d9f39da395252872cb22a0ea4c4396b8593fb795c7407ffda015" [label="local://context" shape="ellipse"];
  "sha256:23095319b56ce1363bfb411aa897e5426eb6ba9be9f42ef70aa4d5add6a9105e" [label="copy{src=/interproscan.properties, dest=/opt/interproscan/current/}" shape="note"];
  "sha256:0cedc6e68dddc11fce8dd1bb71a00f071e8e455cb573d4cecfc1da107626ca07" [label="sha256:0cedc6e68dddc11fce8dd1bb71a00f071e8e455cb573d4cecfc1da107626ca07" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:db46cf898fdbc6c1e408e697aee0b878aaa94f4e5fff1ad33883fdf562d20cf0" [label=""];
  "sha256:db46cf898fdbc6c1e408e697aee0b878aaa94f4e5fff1ad33883fdf562d20cf0" -> "sha256:b730e0fcc5420cd463b5c5550b6e7afc498f5362c03c482f39c303a8524d4920" [label=""];
  "sha256:b730e0fcc5420cd463b5c5550b6e7afc498f5362c03c482f39c303a8524d4920" -> "sha256:6ec5893d2ac2de706f9c3ef35e6161543320b9e2e3c490c7e4d2098bb298f773" [label=""];
  "sha256:6ec5893d2ac2de706f9c3ef35e6161543320b9e2e3c490c7e4d2098bb298f773" -> "sha256:5b3c46f20ea56f9b0222c80e1a4a2c5cdc45bdaa7aeaab02a8d952599d85f3a5" [label=""];
  "sha256:5b3c46f20ea56f9b0222c80e1a4a2c5cdc45bdaa7aeaab02a8d952599d85f3a5" -> "sha256:71cb285777043999f2f5f685c3a2b3b2f8b4cf6ee4b689b0d5c6b0dce69dc251" [label=""];
  "sha256:71cb285777043999f2f5f685c3a2b3b2f8b4cf6ee4b689b0d5c6b0dce69dc251" -> "sha256:23095319b56ce1363bfb411aa897e5426eb6ba9be9f42ef70aa4d5add6a9105e" [label=""];
  "sha256:413690a307b9d9f39da395252872cb22a0ea4c4396b8593fb795c7407ffda015" -> "sha256:23095319b56ce1363bfb411aa897e5426eb6ba9be9f42ef70aa4d5add6a9105e" [label=""];
  "sha256:23095319b56ce1363bfb411aa897e5426eb6ba9be9f42ef70aa4d5add6a9105e" -> "sha256:0cedc6e68dddc11fce8dd1bb71a00f071e8e455cb573d4cecfc1da107626ca07" [label=""];
}

