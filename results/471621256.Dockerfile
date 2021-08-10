[app/sources/471621256.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:41db5a46efb59d6f427617cac52e52ceeee3a6083f039b9a1e182e9786a9e584" [label="/bin/sh -c apt-get update &&     apt-get -y install openjdk-8-jre-headless &&     apt-get -y install libc6 &&     apt-get clean" shape="box"];
  "sha256:1062a37a3216d85f9f4452a954720b19ef2fe4436e15d304cbbfa31a33b84071" [label="/bin/sh -c addgroup --gid 1000 appuser &&     adduser --uid 1000 --gid 1000 appuser &&     mkdir -p /app &&     mkdir -p /data" shape="box"];
  "sha256:6731d26179f2fdfaf143acbea7a38d031cc3e6a4e6a9c787a2eac2714ab8c76a" [label="local://context" shape="ellipse"];
  "sha256:8f18b1ee279e623ae58f66472c5187906365a82437384e49b3bdafeb2b8a900a" [label="copy{src=/target/lib, dest=/app/lib}" shape="note"];
  "sha256:2ee1159dbe8e3216af588e54eb75e065342cf479219fe54c6c278ae18425c803" [label="copy{src=/target/dependency, dest=/app/bin}" shape="note"];
  "sha256:9080db6ff417ecc3adb2040538ec4939100e74f0a03b1a5d5daa55f4775f83d9" [label="copy{src=/target/dependency/META-INF, dest=/app/bin/META-INF}" shape="note"];
  "sha256:dba8ab3fa457a0bae50112f6812f29ceb315ed9a45d046cc94e66a1a09bbabf8" [label="/bin/sh -c chown -R appuser:appuser /app &&     chown -R appuser:appuser /data &&     find /app -type d -exec chmod 550 {} + &&     find /app -type f -exec chmod 660 {} + &&     chmod 770 /data" shape="box"];
  "sha256:f5768a92480e4ec059bf3a57548828f8a841bc92325ebf949da894c858bd0d30" [label="mkdir{path=/data}" shape="note"];
  "sha256:b96cd63d609b1653f9a933c02835e3a230d5537e1f46b046067fc855700a37b6" [label="sha256:b96cd63d609b1653f9a933c02835e3a230d5537e1f46b046067fc855700a37b6" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:41db5a46efb59d6f427617cac52e52ceeee3a6083f039b9a1e182e9786a9e584" [label=""];
  "sha256:41db5a46efb59d6f427617cac52e52ceeee3a6083f039b9a1e182e9786a9e584" -> "sha256:1062a37a3216d85f9f4452a954720b19ef2fe4436e15d304cbbfa31a33b84071" [label=""];
  "sha256:1062a37a3216d85f9f4452a954720b19ef2fe4436e15d304cbbfa31a33b84071" -> "sha256:8f18b1ee279e623ae58f66472c5187906365a82437384e49b3bdafeb2b8a900a" [label=""];
  "sha256:6731d26179f2fdfaf143acbea7a38d031cc3e6a4e6a9c787a2eac2714ab8c76a" -> "sha256:8f18b1ee279e623ae58f66472c5187906365a82437384e49b3bdafeb2b8a900a" [label=""];
  "sha256:8f18b1ee279e623ae58f66472c5187906365a82437384e49b3bdafeb2b8a900a" -> "sha256:2ee1159dbe8e3216af588e54eb75e065342cf479219fe54c6c278ae18425c803" [label=""];
  "sha256:6731d26179f2fdfaf143acbea7a38d031cc3e6a4e6a9c787a2eac2714ab8c76a" -> "sha256:2ee1159dbe8e3216af588e54eb75e065342cf479219fe54c6c278ae18425c803" [label=""];
  "sha256:2ee1159dbe8e3216af588e54eb75e065342cf479219fe54c6c278ae18425c803" -> "sha256:9080db6ff417ecc3adb2040538ec4939100e74f0a03b1a5d5daa55f4775f83d9" [label=""];
  "sha256:6731d26179f2fdfaf143acbea7a38d031cc3e6a4e6a9c787a2eac2714ab8c76a" -> "sha256:9080db6ff417ecc3adb2040538ec4939100e74f0a03b1a5d5daa55f4775f83d9" [label=""];
  "sha256:9080db6ff417ecc3adb2040538ec4939100e74f0a03b1a5d5daa55f4775f83d9" -> "sha256:dba8ab3fa457a0bae50112f6812f29ceb315ed9a45d046cc94e66a1a09bbabf8" [label=""];
  "sha256:dba8ab3fa457a0bae50112f6812f29ceb315ed9a45d046cc94e66a1a09bbabf8" -> "sha256:f5768a92480e4ec059bf3a57548828f8a841bc92325ebf949da894c858bd0d30" [label=""];
  "sha256:f5768a92480e4ec059bf3a57548828f8a841bc92325ebf949da894c858bd0d30" -> "sha256:b96cd63d609b1653f9a933c02835e3a230d5537e1f46b046067fc855700a37b6" [label=""];
}

