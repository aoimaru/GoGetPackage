[app/sources/456422738.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8a3bce70798d093caa52671e781c53a47d48b49acdf9598a7c0d756050f4a4be" [label="/bin/sh -c apt-get update && \tapt-get -y install wget && \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:db68d80c8858ccbe62006a6b9c84a35429d4394c12d395de338ad646bd6ea722" [label="/bin/sh -c mkdir -p /data /minecraft" shape="box"];
  "sha256:1883fb134aea23eea201ba92864993e430f4113079d87fa6b9637c85f880041a" [label="mkdir{path=/minecraft}" shape="note"];
  "sha256:e76433ed188f1b12bda8d8a90fb2f1098a09cfac596b5e54334355ac417093bc" [label="/bin/sh -c wget -q -O - https://jenkins.pmmp.io/job/PHP-7.2-Aggregate/lastSuccessfulBuild/artifact/PHP-7.2-Linux-x86_64.tar.gz > /minecraft/PHP-7.2-Linux-x86_64.tar.gz &&   cd /minecraft && \ttar -xvf PHP-7.2-Linux-x86_64.tar.gz && \trm PHP-7.2-Linux-x86_64.tar.gz" shape="box"];
  "sha256:cda550686b212ae5824b831c30cadadd8e210599676d9bb97c6162783d60291a" [label="/bin/sh -c wget -q -O - https://github.com/pmmp/PocketMine-MP/releases/download/3.4.3/PocketMine-MP.phar > /minecraft/PocketMine-MP.phar" shape="box"];
  "sha256:33bdf8c9ec0591cefa55fc70d5cb4cb567f0a0af0bf2bd6540ca4bf402c0264d" [label="/bin/sh -c wget -q -O - https://raw.githubusercontent.com/pmmp/PocketMine-MP/master/start.sh > /minecraft/start.sh &&   chmod +x /minecraft/start.sh" shape="box"];
  "sha256:a79fb996bb1f19d82e34b4b05002a7e462b3a995c530f1acad448ce777c59c37" [label="local://context" shape="ellipse"];
  "sha256:217f73080c7abf549e237b888a775063d43ecc306e44c2276a6f0a26e6965dad" [label="copy{src=/server.properties, dest=/data/server.properties}" shape="note"];
  "sha256:5c8b4999d5644b08ee301c602cac3e5a26ea568ceff0b24e07aea313b5444710" [label="copy{src=/pocketmine.yml, dest=/data/pocketmine.yml}" shape="note"];
  "sha256:903bee905be62aca01852ab9f71010a55dc5ea7977b1f3b9cfaefe369413b45e" [label="/bin/sh -c touch /data/banned-ips.txt && \ttouch /data/banned-players.txt && \ttouch /data/ops.txt && \tmkdir -p /data/players && \ttouch /data/white-list.txt && \tmkdir -p /data/worlds && \tmkdir -p /data/plugins && \tmkdir -p /data/resource_packs && \ttouch /data/server.log" shape="box"];
  "sha256:6dc47f0060a1f17d3eb3dd281b6e339dee350dcfa893e37f2d1b9ef3cb724cca" [label="/bin/sh -c ln -s /data/banned-ips.txt /minecraft/banned-ips.txt && \tln -s /data/banned-players.txt /minecraft/banned-players.txt && \tln -s /data/ops.txt /minecraft/ops.txt && \tln -s /data/players /minecraft/players && \tln -s /data/pocketmine.yml /minecraft/pocketmine.yml && \tln -s /data/server.properties /minecraft/server.properties && \tln -s /data/white-list.txt /minecraft/white-list.txt && \tln -s /data/worlds /minecraft/worlds && \tln -s /data/plugins /minecraft/plugins && \tln -s /data/resource_packs /minecraft/resource_packs && \tln -s /data/server.log /minecraft/server.log" shape="box"];
  "sha256:50962a33df7fc738b93d1f2aee867a042e1750650ac08e14ba6a8563a54be5cf" [label="sha256:50962a33df7fc738b93d1f2aee867a042e1750650ac08e14ba6a8563a54be5cf" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:8a3bce70798d093caa52671e781c53a47d48b49acdf9598a7c0d756050f4a4be" [label=""];
  "sha256:8a3bce70798d093caa52671e781c53a47d48b49acdf9598a7c0d756050f4a4be" -> "sha256:db68d80c8858ccbe62006a6b9c84a35429d4394c12d395de338ad646bd6ea722" [label=""];
  "sha256:db68d80c8858ccbe62006a6b9c84a35429d4394c12d395de338ad646bd6ea722" -> "sha256:1883fb134aea23eea201ba92864993e430f4113079d87fa6b9637c85f880041a" [label=""];
  "sha256:1883fb134aea23eea201ba92864993e430f4113079d87fa6b9637c85f880041a" -> "sha256:e76433ed188f1b12bda8d8a90fb2f1098a09cfac596b5e54334355ac417093bc" [label=""];
  "sha256:e76433ed188f1b12bda8d8a90fb2f1098a09cfac596b5e54334355ac417093bc" -> "sha256:cda550686b212ae5824b831c30cadadd8e210599676d9bb97c6162783d60291a" [label=""];
  "sha256:cda550686b212ae5824b831c30cadadd8e210599676d9bb97c6162783d60291a" -> "sha256:33bdf8c9ec0591cefa55fc70d5cb4cb567f0a0af0bf2bd6540ca4bf402c0264d" [label=""];
  "sha256:33bdf8c9ec0591cefa55fc70d5cb4cb567f0a0af0bf2bd6540ca4bf402c0264d" -> "sha256:217f73080c7abf549e237b888a775063d43ecc306e44c2276a6f0a26e6965dad" [label=""];
  "sha256:a79fb996bb1f19d82e34b4b05002a7e462b3a995c530f1acad448ce777c59c37" -> "sha256:217f73080c7abf549e237b888a775063d43ecc306e44c2276a6f0a26e6965dad" [label=""];
  "sha256:217f73080c7abf549e237b888a775063d43ecc306e44c2276a6f0a26e6965dad" -> "sha256:5c8b4999d5644b08ee301c602cac3e5a26ea568ceff0b24e07aea313b5444710" [label=""];
  "sha256:a79fb996bb1f19d82e34b4b05002a7e462b3a995c530f1acad448ce777c59c37" -> "sha256:5c8b4999d5644b08ee301c602cac3e5a26ea568ceff0b24e07aea313b5444710" [label=""];
  "sha256:5c8b4999d5644b08ee301c602cac3e5a26ea568ceff0b24e07aea313b5444710" -> "sha256:903bee905be62aca01852ab9f71010a55dc5ea7977b1f3b9cfaefe369413b45e" [label=""];
  "sha256:903bee905be62aca01852ab9f71010a55dc5ea7977b1f3b9cfaefe369413b45e" -> "sha256:6dc47f0060a1f17d3eb3dd281b6e339dee350dcfa893e37f2d1b9ef3cb724cca" [label=""];
  "sha256:6dc47f0060a1f17d3eb3dd281b6e339dee350dcfa893e37f2d1b9ef3cb724cca" -> "sha256:50962a33df7fc738b93d1f2aee867a042e1750650ac08e14ba6a8563a54be5cf" [label=""];
}

