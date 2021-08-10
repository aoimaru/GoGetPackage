[app/sources/255577306.Dockerfile]
digraph {
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" [label="docker-image://docker.io/openshift/base-centos7:latest" shape="ellipse"];
  "sha256:e8405988f755446946bbf66be8321893101b6a23a991721dbad7d7d2c85b7031" [label="/bin/sh -c yum update -y && yum clean all" shape="box"];
  "sha256:aab3ba58f122f8ea9f913429fc360df79d69cde34c9d94103ea28a1c9712c2ac" [label="/bin/sh -c yum install -y wget && yum clean all" shape="box"];
  "sha256:576cb197d90ff68c7694ce7f5dbc2eabc90b83813e49bbaed9c795856e6e3119" [label="/bin/sh -c yum install -y http://packages.erlang-solutions.com/erlang-solutions-${ERLANG_SOLUTIONS_VERSION}.noarch.rpm && yum clean all" shape="box"];
  "sha256:7dd33ea2d31617264008786a44949c09e41b52bae189bb2b02ce12ce610b154a" [label="/bin/sh -c yum install -y erlang && yum clean all" shape="box"];
  "sha256:a2853a94fb7d9e40316cf58caeb3d024dae0b3f4e2a555d2ab1e302f38136f91" [label="/bin/sh -c yum install -y http://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-${RABBITMQ_VERSION}-1.noarch.rpm && yum clean all" shape="box"];
  "sha256:4334af72d86d809adbf3de2a4158de5c64b34a894c6bd48984c68dfaee8e529f" [label="/bin/sh -c echo \"[{rabbit,[{loopback_users,[]}]}].\" > /etc/rabbitmq/rabbitmq.config" shape="box"];
  "sha256:49bc5aa41bc3abb8992b7426e0c67a6dd16cefffa4fd9ff4d9c721061e0598f5" [label="/bin/sh -c rm -rf /var/lib/rabbitmq/mnesia" shape="box"];
  "sha256:a31cd2e855fb1ae6f7266ccff54c7b41b0a956a4bb1da885c8ebd46ee1925178" [label="/bin/sh -c mkdir -p /var/lib/rabbitmq /etc/rabbitmq \t&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq \t&& chmod 777 /var/lib/rabbitmq /etc/rabbitmq" shape="box"];
  "sha256:f83ef3bb8c330af2e9041b278dd6466feaea0f92df683277920d25d7d33bf182" [label="/bin/sh -c chown -R rabbitmq:rabbitmq /opt/app-root" shape="box"];
  "sha256:517d1ced101e8451b33159c00ca31af379f655115ba32bf3703ed255582a76a4" [label="/bin/sh -c ls -la /var/lib/rabbitmq/" shape="box"];
  "sha256:7e0fb13fc89b0b24a77b6085550048275c04285223dbc1be0fbaa51db7e0198f" [label="local://context" shape="ellipse"];
  "sha256:bc4372a267daf0e834af8539029e35d89319710264182428372c2a57957c818c" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:fab02c5c37e03961e3eafb22a999f4c4057b6d05234e2ce5650cb05e09686288" [label="sha256:fab02c5c37e03961e3eafb22a999f4c4057b6d05234e2ce5650cb05e09686288" shape="plaintext"];
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" -> "sha256:e8405988f755446946bbf66be8321893101b6a23a991721dbad7d7d2c85b7031" [label=""];
  "sha256:e8405988f755446946bbf66be8321893101b6a23a991721dbad7d7d2c85b7031" -> "sha256:aab3ba58f122f8ea9f913429fc360df79d69cde34c9d94103ea28a1c9712c2ac" [label=""];
  "sha256:aab3ba58f122f8ea9f913429fc360df79d69cde34c9d94103ea28a1c9712c2ac" -> "sha256:576cb197d90ff68c7694ce7f5dbc2eabc90b83813e49bbaed9c795856e6e3119" [label=""];
  "sha256:576cb197d90ff68c7694ce7f5dbc2eabc90b83813e49bbaed9c795856e6e3119" -> "sha256:7dd33ea2d31617264008786a44949c09e41b52bae189bb2b02ce12ce610b154a" [label=""];
  "sha256:7dd33ea2d31617264008786a44949c09e41b52bae189bb2b02ce12ce610b154a" -> "sha256:a2853a94fb7d9e40316cf58caeb3d024dae0b3f4e2a555d2ab1e302f38136f91" [label=""];
  "sha256:a2853a94fb7d9e40316cf58caeb3d024dae0b3f4e2a555d2ab1e302f38136f91" -> "sha256:4334af72d86d809adbf3de2a4158de5c64b34a894c6bd48984c68dfaee8e529f" [label=""];
  "sha256:4334af72d86d809adbf3de2a4158de5c64b34a894c6bd48984c68dfaee8e529f" -> "sha256:49bc5aa41bc3abb8992b7426e0c67a6dd16cefffa4fd9ff4d9c721061e0598f5" [label=""];
  "sha256:49bc5aa41bc3abb8992b7426e0c67a6dd16cefffa4fd9ff4d9c721061e0598f5" -> "sha256:a31cd2e855fb1ae6f7266ccff54c7b41b0a956a4bb1da885c8ebd46ee1925178" [label=""];
  "sha256:a31cd2e855fb1ae6f7266ccff54c7b41b0a956a4bb1da885c8ebd46ee1925178" -> "sha256:f83ef3bb8c330af2e9041b278dd6466feaea0f92df683277920d25d7d33bf182" [label=""];
  "sha256:f83ef3bb8c330af2e9041b278dd6466feaea0f92df683277920d25d7d33bf182" -> "sha256:517d1ced101e8451b33159c00ca31af379f655115ba32bf3703ed255582a76a4" [label=""];
  "sha256:517d1ced101e8451b33159c00ca31af379f655115ba32bf3703ed255582a76a4" -> "sha256:bc4372a267daf0e834af8539029e35d89319710264182428372c2a57957c818c" [label=""];
  "sha256:7e0fb13fc89b0b24a77b6085550048275c04285223dbc1be0fbaa51db7e0198f" -> "sha256:bc4372a267daf0e834af8539029e35d89319710264182428372c2a57957c818c" [label=""];
  "sha256:bc4372a267daf0e834af8539029e35d89319710264182428372c2a57957c818c" -> "sha256:fab02c5c37e03961e3eafb22a999f4c4057b6d05234e2ce5650cb05e09686288" [label=""];
}

