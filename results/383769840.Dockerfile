[app/sources/383769840.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:e267087ff06c17bf6d302b41b1b0734513a6b18787dedeed17d03b1355bb5e5e" [label="local://context" shape="ellipse"];
  "sha256:342aee93f9d27b0d5d7171d54f6402a95d98788ace4ddbfa0e6fbef2a8a88550" [label="copy{src=/distribution/target/dms-distribution-0.1-bin.tar.gz, dest=/}" shape="note"];
  "sha256:a9e108f10d5639916ab9dd5c6b691b097664f0382c3c63d0a70d70186ee474db" [label="/bin/sh -c apt update && apt install -y python3 python3-pip openjdk-8-jdk && pip3 install requests && mkdir -p /root/drat/deploy && tar xvfz dms-distribution-0.1-bin.tar.gz -C /root/drat/deploy/ && echo 'alias fmquery=\"java -Dorg.apache.oodt.cas.filemgr.properties=$FILEMGR_HOME/etc/filemgr.properties -Djava.ext.dirs=.$FILEMGR_HOME/lib org.apache.oodt.cas.filemgr.tools.QueryTool --url $FILEMGR_URL --lucene -query \"' >> /root/.bashrc && echo 'alias fmdel=\"java -Dorg.apache.oodt.cas.filemgr.properties=$FILEMGR_HOME/etc/filemgr.properties -Djava.ext.dirs=$FILEMGR_URL/lib org.apache.oodt.cas.filemgr.tools.DeleteProduct --fileManagerUrl $FILEMGR_URL --read\"' >> /root/.bashrc && echo 'alias metdump=\"java -Djava.ext.dirs=$FILEMGR_HOME/lib org.apache.oodt.cas.filemgr.tools.MetadataDumper --url $FILEMGR_URL --out . --productId \"' >> /root/.bashrc" shape="box"];
  "sha256:c5015afdd28b84585830382a9d07d648e6f3b4464494f65ffe9196d1d78046ca" [label="sha256:c5015afdd28b84585830382a9d07d648e6f3b4464494f65ffe9196d1d78046ca" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:342aee93f9d27b0d5d7171d54f6402a95d98788ace4ddbfa0e6fbef2a8a88550" [label=""];
  "sha256:e267087ff06c17bf6d302b41b1b0734513a6b18787dedeed17d03b1355bb5e5e" -> "sha256:342aee93f9d27b0d5d7171d54f6402a95d98788ace4ddbfa0e6fbef2a8a88550" [label=""];
  "sha256:342aee93f9d27b0d5d7171d54f6402a95d98788ace4ddbfa0e6fbef2a8a88550" -> "sha256:a9e108f10d5639916ab9dd5c6b691b097664f0382c3c63d0a70d70186ee474db" [label=""];
  "sha256:a9e108f10d5639916ab9dd5c6b691b097664f0382c3c63d0a70d70186ee474db" -> "sha256:c5015afdd28b84585830382a9d07d648e6f3b4464494f65ffe9196d1d78046ca" [label=""];
}

