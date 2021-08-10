[app/sources/132870038.Dockerfile]
digraph {
  "sha256:383726f40d96877cbba97e91d63ded83dc9df6b1efbd87cc63afc4d650d53bae" [label="docker-image://docker.io/counterparty/base:latest" shape="ellipse"];
  "sha256:c9d8307535cabdc945dfa8cb5a041498a9b545b7d0d815a564aaff581a62b44c" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:80735b4c5c1698642a7adb0998b9f9b322a0791d3baab62f7e86d1f855c08156" [label="/bin/sh -c wget -O bitcoin-${BITCOIN_VER}-x86_64-linux-gnu.tar.gz https://bitcoin.org/bin/bitcoin-core-${BITCOIN_VER}/bitcoin-${BITCOIN_VER}-x86_64-linux-gnu.tar.gz" shape="box"];
  "sha256:19f9e04fc4f837cdbecc024049de19c8209774c5a3929816ebc298548fa22ae8" [label="/bin/sh -c myhash=$(sha256sum \"bitcoin-${BITCOIN_VER}-x86_64-linux-gnu.tar.gz\" | cut -d' ' -f1);     if [ \"$myhash\" = \"$BITCOIN_SHASUM\" ] ;         then echo \"checksum ok\";         else echo \"checksum failed for bitcoin-${BITCOIN_VER}-x86_64-linux-gnu.tar.gz\"; exit 255 ;     fi" shape="box"];
  "sha256:4f21e19e85cc201b02139e19fda93dba15897ab312da49391b03f5ba7b7ae17e" [label="/bin/sh -c tar -xvzf bitcoin-${BITCOIN_VER}-x86_64-linux-gnu.tar.gz" shape="box"];
  "sha256:fa2abf382d4520bbb1638982ebc0abdaeee8ea55335557ffd0586697e1533835" [label="/bin/sh -c install -C -m 755 -o root -g root --backup=off bitcoin-${BITCOIN_FOLDER_VER}/bin/* /usr/local/bin/" shape="box"];
  "sha256:dd7f03990cb09c80ad5aaaa2a51253f53b86f254f6e9e1b56682ecd83956b6b5" [label="/bin/sh -c rm bitcoin-${BITCOIN_VER}-x86_64-linux-gnu.tar.gz && rm -rf bitcoin-${BITCOIN_FOLDER_VER}" shape="box"];
  "sha256:c6fee710dfcedf078555f23f71e414c5c7346a6ef1d38f37bd6cddf745f7166d" [label="/bin/sh -c mkdir -p /root/.bitcoin/" shape="box"];
  "sha256:09041789c1315c844ded61d2d90aaec543d77abb412e8a9062f4b0664d8e6c78" [label="local://context" shape="ellipse"];
  "sha256:4eb597558dfdf0194af7794339283f1b28fe0ed196da7eac19dbe87e657ad987" [label="copy{src=/bitcoin.conf, dest=/root/.bitcoin/}" shape="note"];
  "sha256:eb4a5541b7ee811eabdfba19544ea3d0789d773f57ae077d06aeb16410a6c43c" [label="copy{src=/start.sh, dest=/usr/local/bin/start.sh}" shape="note"];
  "sha256:029bbabbc6b6b2da1cfff5996268133b78e14e5fba862e6775b235b78d330f27" [label="/bin/sh -c chmod a+x /usr/local/bin/start.sh" shape="box"];
  "sha256:c6bc68e6110ab6e91256d7e9df9b3ee5373010c4e69c42f585c0e54533cad4d4" [label="sha256:c6bc68e6110ab6e91256d7e9df9b3ee5373010c4e69c42f585c0e54533cad4d4" shape="plaintext"];
  "sha256:383726f40d96877cbba97e91d63ded83dc9df6b1efbd87cc63afc4d650d53bae" -> "sha256:c9d8307535cabdc945dfa8cb5a041498a9b545b7d0d815a564aaff581a62b44c" [label=""];
  "sha256:c9d8307535cabdc945dfa8cb5a041498a9b545b7d0d815a564aaff581a62b44c" -> "sha256:80735b4c5c1698642a7adb0998b9f9b322a0791d3baab62f7e86d1f855c08156" [label=""];
  "sha256:80735b4c5c1698642a7adb0998b9f9b322a0791d3baab62f7e86d1f855c08156" -> "sha256:19f9e04fc4f837cdbecc024049de19c8209774c5a3929816ebc298548fa22ae8" [label=""];
  "sha256:19f9e04fc4f837cdbecc024049de19c8209774c5a3929816ebc298548fa22ae8" -> "sha256:4f21e19e85cc201b02139e19fda93dba15897ab312da49391b03f5ba7b7ae17e" [label=""];
  "sha256:4f21e19e85cc201b02139e19fda93dba15897ab312da49391b03f5ba7b7ae17e" -> "sha256:fa2abf382d4520bbb1638982ebc0abdaeee8ea55335557ffd0586697e1533835" [label=""];
  "sha256:fa2abf382d4520bbb1638982ebc0abdaeee8ea55335557ffd0586697e1533835" -> "sha256:dd7f03990cb09c80ad5aaaa2a51253f53b86f254f6e9e1b56682ecd83956b6b5" [label=""];
  "sha256:dd7f03990cb09c80ad5aaaa2a51253f53b86f254f6e9e1b56682ecd83956b6b5" -> "sha256:c6fee710dfcedf078555f23f71e414c5c7346a6ef1d38f37bd6cddf745f7166d" [label=""];
  "sha256:c6fee710dfcedf078555f23f71e414c5c7346a6ef1d38f37bd6cddf745f7166d" -> "sha256:4eb597558dfdf0194af7794339283f1b28fe0ed196da7eac19dbe87e657ad987" [label=""];
  "sha256:09041789c1315c844ded61d2d90aaec543d77abb412e8a9062f4b0664d8e6c78" -> "sha256:4eb597558dfdf0194af7794339283f1b28fe0ed196da7eac19dbe87e657ad987" [label=""];
  "sha256:4eb597558dfdf0194af7794339283f1b28fe0ed196da7eac19dbe87e657ad987" -> "sha256:eb4a5541b7ee811eabdfba19544ea3d0789d773f57ae077d06aeb16410a6c43c" [label=""];
  "sha256:09041789c1315c844ded61d2d90aaec543d77abb412e8a9062f4b0664d8e6c78" -> "sha256:eb4a5541b7ee811eabdfba19544ea3d0789d773f57ae077d06aeb16410a6c43c" [label=""];
  "sha256:eb4a5541b7ee811eabdfba19544ea3d0789d773f57ae077d06aeb16410a6c43c" -> "sha256:029bbabbc6b6b2da1cfff5996268133b78e14e5fba862e6775b235b78d330f27" [label=""];
  "sha256:029bbabbc6b6b2da1cfff5996268133b78e14e5fba862e6775b235b78d330f27" -> "sha256:c6bc68e6110ab6e91256d7e9df9b3ee5373010c4e69c42f585c0e54533cad4d4" [label=""];
}

