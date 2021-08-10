[app/sources/248714817.Dockerfile]
digraph {
  "sha256:73c9314b282b1976f5fb2c44db6a466fcf951da56ce8543d82aacd95c0de9444" [label="docker-image://docker.io/library/centos@sha256:4f6d8f794af3574eca603b965fc0b63fdf852be29c17d3ab4cad7ec2272b82bd" shape="ellipse"];
  "sha256:3f630e822a30988ff42893aafa59d1badc872a2a14d9b08ab08614070c883626" [label="/bin/sh -c yum install -y wget &&     yum install -y system-config-services &&     yum install -y curl &&     wget --no-cookies         --no-check-certificate         --header  \"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie\"         --output-document jdk.rpm         http://download.oracle.com/otn-pub/java/jdk/8u66-b17/jdk-8u66-linux-x64.rpm &&     yum --nogpg localinstall -y jdk.rpm &&     rm -f jdk.rpm" shape="box"];
  "sha256:4fa0b5c203193046f0add8e39fc4fa9d6aec707159d4197f68b0d1351557e485" [label="sha256:4fa0b5c203193046f0add8e39fc4fa9d6aec707159d4197f68b0d1351557e485" shape="plaintext"];
  "sha256:73c9314b282b1976f5fb2c44db6a466fcf951da56ce8543d82aacd95c0de9444" -> "sha256:3f630e822a30988ff42893aafa59d1badc872a2a14d9b08ab08614070c883626" [label=""];
  "sha256:3f630e822a30988ff42893aafa59d1badc872a2a14d9b08ab08614070c883626" -> "sha256:4fa0b5c203193046f0add8e39fc4fa9d6aec707159d4197f68b0d1351557e485" [label=""];
}

