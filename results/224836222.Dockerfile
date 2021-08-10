[app/sources/224836222.Dockerfile]
digraph {
  "sha256:c031005684821b636d7d2e6a86136a9d94827c2abde4035ee4011a5e188634a3" [label="docker-image://docker.io/library/tomcat:9.0.12-jre8-alpine" shape="ellipse"];
  "sha256:593c3c75d6c63ddb1cb5ebc2db15b4ecab5dd75360f453b6aad6d775d0a24cdc" [label="local://context" shape="ellipse"];
  "sha256:e14d00040fee3fd7a05d6ec2d35b79a25bbdb7665047b158491f1463a82b852d" [label="copy{src=/target/cass.war, dest=/usr/local/tomcat/webapps/ROOT.war}" shape="note"];
  "sha256:0d4901ba9b8c1405fc01796756d326479da348cc2d25f35fb80851a0fea2ec1c" [label="/bin/sh -c rm -rf /usr/local/tomcat/webapps/ROOT" shape="box"];
  "sha256:4576b18f05d0979600c2c4eddabc47c4ee2cc154ba246481475129fdbb7912fb" [label="/bin/sh -c mkdir /usr/local/tomcat/etc" shape="box"];
  "sha256:508fc360dd4ac4fdbad2f65ae96acf9437d2b802e56c4edfa2a853a516397278" [label="sha256:508fc360dd4ac4fdbad2f65ae96acf9437d2b802e56c4edfa2a853a516397278" shape="plaintext"];
  "sha256:c031005684821b636d7d2e6a86136a9d94827c2abde4035ee4011a5e188634a3" -> "sha256:e14d00040fee3fd7a05d6ec2d35b79a25bbdb7665047b158491f1463a82b852d" [label=""];
  "sha256:593c3c75d6c63ddb1cb5ebc2db15b4ecab5dd75360f453b6aad6d775d0a24cdc" -> "sha256:e14d00040fee3fd7a05d6ec2d35b79a25bbdb7665047b158491f1463a82b852d" [label=""];
  "sha256:e14d00040fee3fd7a05d6ec2d35b79a25bbdb7665047b158491f1463a82b852d" -> "sha256:0d4901ba9b8c1405fc01796756d326479da348cc2d25f35fb80851a0fea2ec1c" [label=""];
  "sha256:0d4901ba9b8c1405fc01796756d326479da348cc2d25f35fb80851a0fea2ec1c" -> "sha256:4576b18f05d0979600c2c4eddabc47c4ee2cc154ba246481475129fdbb7912fb" [label=""];
  "sha256:4576b18f05d0979600c2c4eddabc47c4ee2cc154ba246481475129fdbb7912fb" -> "sha256:508fc360dd4ac4fdbad2f65ae96acf9437d2b802e56c4edfa2a853a516397278" [label=""];
}

