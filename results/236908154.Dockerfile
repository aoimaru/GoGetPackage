[app/sources/236908154.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:30cefd9ae5cb6467fe00f38f6d721f85a42fc3d9ed538448f701b00bcde0e7eb" [label="mkdir{path=/usr/src/myapp}" shape="note"];
  "sha256:ea672d913e4857abcb04f790ee66690399c2fdabb46661784ef0dc7698163535" [label="/bin/sh -c apt-get update && apt-get install -y wget zip sqlite3   && wget http://7xls9k.dl1.z0.glb.clouddn.com/tale.zip && unzip -o tale.zip   && rm -f tale.zip   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e02e4561f52646a1d5c19b77675887dd26b5790a27a7fefee556583a57de8d94" [label="sha256:e02e4561f52646a1d5c19b77675887dd26b5790a27a7fefee556583a57de8d94" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:30cefd9ae5cb6467fe00f38f6d721f85a42fc3d9ed538448f701b00bcde0e7eb" [label=""];
  "sha256:30cefd9ae5cb6467fe00f38f6d721f85a42fc3d9ed538448f701b00bcde0e7eb" -> "sha256:ea672d913e4857abcb04f790ee66690399c2fdabb46661784ef0dc7698163535" [label=""];
  "sha256:ea672d913e4857abcb04f790ee66690399c2fdabb46661784ef0dc7698163535" -> "sha256:e02e4561f52646a1d5c19b77675887dd26b5790a27a7fefee556583a57de8d94" [label=""];
}

