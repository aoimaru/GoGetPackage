[app/sources/170617862.Dockerfile]
digraph {
  "sha256:bef6e4d17fe96f126e621b9f5d3511957aee6b71a423c8e49e1bb65f4a90077f" [label="http://download-codeplex.sec.s-msft.com/Download/SourceControlFileDownload.ashx?ProjectName=z3&changeSetId=cee7dd39444c9060186df79c2a2c7f8845de415b" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:647ff634901c2a8f42737fad2d633bd28f797af8e7795d2543cc7577f007eb07" [label="/bin/sh -c apt-get -qq update &&     apt-get -qqy install python2.7 git make gcc g++ libpython2.7-dev python-pyparsing python-llvm unzip" shape="box"];
  "sha256:9e4778e159b9b1663fb65cf513daff2c3878009d905745996c1e33ebb6fbb152" [label="/bin/sh -c cd /opt &&     git clone http://repo.or.cz/tinycc.git tinycc &&     cd tinycc &&     git checkout d5e22108a0dc48899e44a158f91d5b3215eb7fe6 &&     ./configure --disable-static &&     make &&     make install &&     make clean" shape="box"];
  "sha256:7c34d7759ea1a43f497fd2bde3495ddc2d3f9d399cfae7545fcea69e69c9f214" [label="https://github.com/serpilliere/elfesteem/archive/master.zip" shape="ellipse"];
  "sha256:d4ec6de03af0c7473d50282e0a8849842ba00d9240e5a14c9bcbf5d7b4a8570e" [label="copy{src=/master.zip, dest=/opt/elfesteem.zip}" shape="note"];
  "sha256:c8d6ea9c699fd15920ae3b4c17bf6a0d9ef30e0ae62f331732ab1159873568bb" [label="/bin/sh -c cd /opt &&     unzip elfesteem.zip &&     mv elfesteem-master elfesteem &&     cd elfesteem &&     python setup.py install &&     rm -rf /opt/elfesteem.zip" shape="box"];
  "sha256:9b8f6d99828807c0ea8d33bfe7f4e8b24c4c9a65ebab83529911a260edb96713" [label="https://github.com/cea-sec/miasm/archive/master.zip" shape="ellipse"];
  "sha256:1367453b861339ea193efe18a0a2b4af6e285d190d3706b77a8ce68ba2cb120f" [label="copy{src=/master.zip, dest=/opt/miasm-master.zip}" shape="note"];
  "sha256:aa973245324081f9a33dd88b9312fcf77b009837f11f84b9dbc0104b2f2506ab" [label="/bin/sh -c cd /opt &&     unzip miasm-master.zip &&     mv miasm-master miasm2 &&     cd miasm2 &&     python setup.py install &&     rm -rf /opt/miasm-master.zip" shape="box"];
  "sha256:110418205212454896fca047a85d8c192aa6046cd34f785925988ce75fba6088" [label="copy{src=/SourceControlFileDownload.ashx, dest=/opt/z3.zip}" shape="note"];
  "sha256:c8f0ed17678d4fe1369ada46ab762e143ab86f474fae5c89fe66cfa8e23bd811" [label="/bin/sh -c cd /opt &&     mkdir z3 && cd z3 &&     unzip -q ../z3.zip && python scripts/mk_make.py && cd build && make -j 4 && make install &&     rm /opt/z3.zip" shape="box"];
  "sha256:02ab234f0f3c459d897162a1382ad9c7b0dd83e7a0f51393e724f0dc1ef61964" [label="/bin/sh -c apt-get -qq remove --purge make git unzip &&     apt-get -qq autoremove --purge &&     apt-get -qq clean" shape="box"];
  "sha256:05580573c9081f4786bafb52c3d6546693fbf6099b1411df7d7691a1c2251c48" [label="/bin/sh -c useradd miasm2 &&     chown -Rh miasm2 /opt/miasm2" shape="box"];
  "sha256:eb163bc2e48c9505b9e2b9dfff07531f752885cf5bc2d9d47aae745774d58a43" [label="mkdir{path=/opt/miasm2/test}" shape="note"];
  "sha256:865269c2477396f39fb2bb93b7d27942e937fb10b4e5377f5ee24b118b8898e4" [label="sha256:865269c2477396f39fb2bb93b7d27942e937fb10b4e5377f5ee24b118b8898e4" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:647ff634901c2a8f42737fad2d633bd28f797af8e7795d2543cc7577f007eb07" [label=""];
  "sha256:647ff634901c2a8f42737fad2d633bd28f797af8e7795d2543cc7577f007eb07" -> "sha256:9e4778e159b9b1663fb65cf513daff2c3878009d905745996c1e33ebb6fbb152" [label=""];
  "sha256:9e4778e159b9b1663fb65cf513daff2c3878009d905745996c1e33ebb6fbb152" -> "sha256:d4ec6de03af0c7473d50282e0a8849842ba00d9240e5a14c9bcbf5d7b4a8570e" [label=""];
  "sha256:7c34d7759ea1a43f497fd2bde3495ddc2d3f9d399cfae7545fcea69e69c9f214" -> "sha256:d4ec6de03af0c7473d50282e0a8849842ba00d9240e5a14c9bcbf5d7b4a8570e" [label=""];
  "sha256:d4ec6de03af0c7473d50282e0a8849842ba00d9240e5a14c9bcbf5d7b4a8570e" -> "sha256:c8d6ea9c699fd15920ae3b4c17bf6a0d9ef30e0ae62f331732ab1159873568bb" [label=""];
  "sha256:c8d6ea9c699fd15920ae3b4c17bf6a0d9ef30e0ae62f331732ab1159873568bb" -> "sha256:1367453b861339ea193efe18a0a2b4af6e285d190d3706b77a8ce68ba2cb120f" [label=""];
  "sha256:9b8f6d99828807c0ea8d33bfe7f4e8b24c4c9a65ebab83529911a260edb96713" -> "sha256:1367453b861339ea193efe18a0a2b4af6e285d190d3706b77a8ce68ba2cb120f" [label=""];
  "sha256:1367453b861339ea193efe18a0a2b4af6e285d190d3706b77a8ce68ba2cb120f" -> "sha256:aa973245324081f9a33dd88b9312fcf77b009837f11f84b9dbc0104b2f2506ab" [label=""];
  "sha256:aa973245324081f9a33dd88b9312fcf77b009837f11f84b9dbc0104b2f2506ab" -> "sha256:110418205212454896fca047a85d8c192aa6046cd34f785925988ce75fba6088" [label=""];
  "sha256:bef6e4d17fe96f126e621b9f5d3511957aee6b71a423c8e49e1bb65f4a90077f" -> "sha256:110418205212454896fca047a85d8c192aa6046cd34f785925988ce75fba6088" [label=""];
  "sha256:110418205212454896fca047a85d8c192aa6046cd34f785925988ce75fba6088" -> "sha256:c8f0ed17678d4fe1369ada46ab762e143ab86f474fae5c89fe66cfa8e23bd811" [label=""];
  "sha256:c8f0ed17678d4fe1369ada46ab762e143ab86f474fae5c89fe66cfa8e23bd811" -> "sha256:02ab234f0f3c459d897162a1382ad9c7b0dd83e7a0f51393e724f0dc1ef61964" [label=""];
  "sha256:02ab234f0f3c459d897162a1382ad9c7b0dd83e7a0f51393e724f0dc1ef61964" -> "sha256:05580573c9081f4786bafb52c3d6546693fbf6099b1411df7d7691a1c2251c48" [label=""];
  "sha256:05580573c9081f4786bafb52c3d6546693fbf6099b1411df7d7691a1c2251c48" -> "sha256:eb163bc2e48c9505b9e2b9dfff07531f752885cf5bc2d9d47aae745774d58a43" [label=""];
  "sha256:eb163bc2e48c9505b9e2b9dfff07531f752885cf5bc2d9d47aae745774d58a43" -> "sha256:865269c2477396f39fb2bb93b7d27942e937fb10b4e5377f5ee24b118b8898e4" [label=""];
}

