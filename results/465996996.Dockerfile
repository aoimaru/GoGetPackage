[app/sources/465996996.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a57205cffec763531c0b279de93690ee6f816dc59113c791b50a25e25ccc4861" [label="/bin/sh -c apt-get update &&     apt-get install -y openjdk-8-jdk &&     apt-get install -y --no-install-recommends     apt-utils     build-essential     cmake     git     wget     nano     software-properties-common" shape="box"];
  "sha256:4200cca020894eb905188502e3314ee2905720955787202a52951c9ac2b3cbb6" [label="mkdir{path=/x}" shape="note"];
  "sha256:8e41661ed3abf4884b079cda864a203b599a62dd18bdf90aeef512d5a603b814" [label="local://context" shape="ellipse"];
  "sha256:7956bd97c1ea9214f40592015c071725221df30b22a97e163263f13e9750fa1b" [label="copy{src=/, dest=/x/}" shape="note"];
  "sha256:02f380105db1a91a9fadbeb4979ec883f62dce7e7dd4673137be99160fa7815e" [label="/bin/sh -c chmod 777 run.sh" shape="box"];
  "sha256:997f154413b9613ab18b78cb2915c4284cc176b2e7c0ad6e4cf71fc6b0c4521b" [label="/bin/sh -c chmod 777 compile.sh" shape="box"];
  "sha256:f1860e05dd158af3142a31bec0d8850f681bbcf9a615cee5e01c9fc9a7d28cff" [label="/bin/sh -c sh compile.sh" shape="box"];
  "sha256:f1bcb042ae14f5c34190ff32702ca5254695a936d7b16bc53ba2510be11fb444" [label="sha256:f1bcb042ae14f5c34190ff32702ca5254695a936d7b16bc53ba2510be11fb444" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a57205cffec763531c0b279de93690ee6f816dc59113c791b50a25e25ccc4861" [label=""];
  "sha256:a57205cffec763531c0b279de93690ee6f816dc59113c791b50a25e25ccc4861" -> "sha256:4200cca020894eb905188502e3314ee2905720955787202a52951c9ac2b3cbb6" [label=""];
  "sha256:4200cca020894eb905188502e3314ee2905720955787202a52951c9ac2b3cbb6" -> "sha256:7956bd97c1ea9214f40592015c071725221df30b22a97e163263f13e9750fa1b" [label=""];
  "sha256:8e41661ed3abf4884b079cda864a203b599a62dd18bdf90aeef512d5a603b814" -> "sha256:7956bd97c1ea9214f40592015c071725221df30b22a97e163263f13e9750fa1b" [label=""];
  "sha256:7956bd97c1ea9214f40592015c071725221df30b22a97e163263f13e9750fa1b" -> "sha256:02f380105db1a91a9fadbeb4979ec883f62dce7e7dd4673137be99160fa7815e" [label=""];
  "sha256:02f380105db1a91a9fadbeb4979ec883f62dce7e7dd4673137be99160fa7815e" -> "sha256:997f154413b9613ab18b78cb2915c4284cc176b2e7c0ad6e4cf71fc6b0c4521b" [label=""];
  "sha256:997f154413b9613ab18b78cb2915c4284cc176b2e7c0ad6e4cf71fc6b0c4521b" -> "sha256:f1860e05dd158af3142a31bec0d8850f681bbcf9a615cee5e01c9fc9a7d28cff" [label=""];
  "sha256:f1860e05dd158af3142a31bec0d8850f681bbcf9a615cee5e01c9fc9a7d28cff" -> "sha256:f1bcb042ae14f5c34190ff32702ca5254695a936d7b16bc53ba2510be11fb444" [label=""];
}

