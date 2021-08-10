[app/sources/235654180.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:ee3abb06f237715f7063502d1249ffbb6f70e2c68054d53451c5d26705fdf338" [label="/bin/sh -c apt-get update &&     apt-get install -y curl unzip zip inotify-tools &&     rm -rf /var/lib/apt/lists/* &&     curl -L -o /tmp/glassfish-4.1.zip http://download.java.net/glassfish/4.1/release/glassfish-4.1.zip &&     unzip /tmp/glassfish-4.1.zip -d /usr/local &&     rm -f /tmp/glassfish-4.1.zip" shape="box"];
  "sha256:8023f7a5c0310dcd2763e33d31bba1a3c9a2fc83627360f08b6f59e18146f714" [label="mkdir{path=/usr/local/glassfish4}" shape="note"];
  "sha256:ec4a5424c18ae10c8607219b2fbfadd694ea20ae1c8fbd21fc6b9d7a05914413" [label="local://context" shape="ellipse"];
  "sha256:da20b6348c73ea644241425729c43a6817cc65024a66897b77ddd95cb7d7bbb1" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3281685eb33076ce882eebaea9ccef244be91333bb1054f8cfeb99dd2bf81667" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:5e5bab4bcc04d9813a891673fb4ea2eb610af27ff4f85ff1fe979a25dd275bf4" [label="sha256:5e5bab4bcc04d9813a891673fb4ea2eb610af27ff4f85ff1fe979a25dd275bf4" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:ee3abb06f237715f7063502d1249ffbb6f70e2c68054d53451c5d26705fdf338" [label=""];
  "sha256:ee3abb06f237715f7063502d1249ffbb6f70e2c68054d53451c5d26705fdf338" -> "sha256:8023f7a5c0310dcd2763e33d31bba1a3c9a2fc83627360f08b6f59e18146f714" [label=""];
  "sha256:8023f7a5c0310dcd2763e33d31bba1a3c9a2fc83627360f08b6f59e18146f714" -> "sha256:da20b6348c73ea644241425729c43a6817cc65024a66897b77ddd95cb7d7bbb1" [label=""];
  "sha256:ec4a5424c18ae10c8607219b2fbfadd694ea20ae1c8fbd21fc6b9d7a05914413" -> "sha256:da20b6348c73ea644241425729c43a6817cc65024a66897b77ddd95cb7d7bbb1" [label=""];
  "sha256:da20b6348c73ea644241425729c43a6817cc65024a66897b77ddd95cb7d7bbb1" -> "sha256:3281685eb33076ce882eebaea9ccef244be91333bb1054f8cfeb99dd2bf81667" [label=""];
  "sha256:3281685eb33076ce882eebaea9ccef244be91333bb1054f8cfeb99dd2bf81667" -> "sha256:5e5bab4bcc04d9813a891673fb4ea2eb610af27ff4f85ff1fe979a25dd275bf4" [label=""];
}

