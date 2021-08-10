[app/sources/168046397.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:8c4e448b548b54dbace4a6058c42eb95a16df884e5f5ec9c6a70ccaeee72c7ac" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:a959555feee92839e3b0b768a4c7cb191b4c821e4a3e1f5519c2fbf19fcf36b7" [label="/bin/sh -c yum install -y epel-release" shape="box"];
  "sha256:3b141f7adf62a9c14de40fef79a6f70b894b4a0962048b989a43a6888b8a0acd" [label="/bin/sh -c yum install -y nano wget inotify-tools rsyslog" shape="box"];
  "sha256:d605f4f6ec2fada78566bd1fe81166f4e4766300eb72173dcd7eafae4157eb73" [label="/bin/sh -c wget -O /etc/yum.repos.d/kamailio.repo http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/CentOS_7/home:kamailio:v4.4.x-rpms.repo" shape="box"];
  "sha256:aace2f977c95fcfb650c12ddae926da3651a5e8aa70e64ff07a87eb92d5754af" [label="/bin/sh -c yum install -y kamailio" shape="box"];
  "sha256:f466b7d42af5790e3dbe1ee9982e0f1fedcf08fee425cd58c8200e92b50f3eb9" [label="/bin/sh -c echo \"local0.*                        -/var/log/kamailio.log\" >> /etc/rsyslog.conf" shape="box"];
  "sha256:ae91bbdc33328631e94f5259298e5a12906f07c7058c08029960cb6bc786fe9b" [label="local://context" shape="ellipse"];
  "sha256:852c21a7a43f061474f1fd3c9a239fea8405b086ddb3bb366459b01c7f853113" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:845fff745540923d7ead57176e3bbb3a21dbcef1691b6e0dc1ffbe2047b1a11c" [label="copy{src=/dispatcher_watch.sh, dest=/}" shape="note"];
  "sha256:87e79547d51c54b4d30eff9b771b460bd51d541e3f2c35edab6355daa922a27a" [label="copy{src=/kamailio.cfg, dest=/etc/kamailio/kamailio.cfg}" shape="note"];
  "sha256:5ea4121a383fea854173468b43b3545519e41b3143d21fa4843c807a3b38c09f" [label="copy{src=/dispatcher.list, dest=/etc/kamailio/dispatcher.list}" shape="note"];
  "sha256:53ce6300d15f15785b73cd3c7ebd62dd52fd611d36a1615e61b91c4cd2b711b7" [label="sha256:53ce6300d15f15785b73cd3c7ebd62dd52fd611d36a1615e61b91c4cd2b711b7" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:8c4e448b548b54dbace4a6058c42eb95a16df884e5f5ec9c6a70ccaeee72c7ac" [label=""];
  "sha256:8c4e448b548b54dbace4a6058c42eb95a16df884e5f5ec9c6a70ccaeee72c7ac" -> "sha256:a959555feee92839e3b0b768a4c7cb191b4c821e4a3e1f5519c2fbf19fcf36b7" [label=""];
  "sha256:a959555feee92839e3b0b768a4c7cb191b4c821e4a3e1f5519c2fbf19fcf36b7" -> "sha256:3b141f7adf62a9c14de40fef79a6f70b894b4a0962048b989a43a6888b8a0acd" [label=""];
  "sha256:3b141f7adf62a9c14de40fef79a6f70b894b4a0962048b989a43a6888b8a0acd" -> "sha256:d605f4f6ec2fada78566bd1fe81166f4e4766300eb72173dcd7eafae4157eb73" [label=""];
  "sha256:d605f4f6ec2fada78566bd1fe81166f4e4766300eb72173dcd7eafae4157eb73" -> "sha256:aace2f977c95fcfb650c12ddae926da3651a5e8aa70e64ff07a87eb92d5754af" [label=""];
  "sha256:aace2f977c95fcfb650c12ddae926da3651a5e8aa70e64ff07a87eb92d5754af" -> "sha256:f466b7d42af5790e3dbe1ee9982e0f1fedcf08fee425cd58c8200e92b50f3eb9" [label=""];
  "sha256:f466b7d42af5790e3dbe1ee9982e0f1fedcf08fee425cd58c8200e92b50f3eb9" -> "sha256:852c21a7a43f061474f1fd3c9a239fea8405b086ddb3bb366459b01c7f853113" [label=""];
  "sha256:ae91bbdc33328631e94f5259298e5a12906f07c7058c08029960cb6bc786fe9b" -> "sha256:852c21a7a43f061474f1fd3c9a239fea8405b086ddb3bb366459b01c7f853113" [label=""];
  "sha256:852c21a7a43f061474f1fd3c9a239fea8405b086ddb3bb366459b01c7f853113" -> "sha256:845fff745540923d7ead57176e3bbb3a21dbcef1691b6e0dc1ffbe2047b1a11c" [label=""];
  "sha256:ae91bbdc33328631e94f5259298e5a12906f07c7058c08029960cb6bc786fe9b" -> "sha256:845fff745540923d7ead57176e3bbb3a21dbcef1691b6e0dc1ffbe2047b1a11c" [label=""];
  "sha256:845fff745540923d7ead57176e3bbb3a21dbcef1691b6e0dc1ffbe2047b1a11c" -> "sha256:87e79547d51c54b4d30eff9b771b460bd51d541e3f2c35edab6355daa922a27a" [label=""];
  "sha256:ae91bbdc33328631e94f5259298e5a12906f07c7058c08029960cb6bc786fe9b" -> "sha256:87e79547d51c54b4d30eff9b771b460bd51d541e3f2c35edab6355daa922a27a" [label=""];
  "sha256:87e79547d51c54b4d30eff9b771b460bd51d541e3f2c35edab6355daa922a27a" -> "sha256:5ea4121a383fea854173468b43b3545519e41b3143d21fa4843c807a3b38c09f" [label=""];
  "sha256:ae91bbdc33328631e94f5259298e5a12906f07c7058c08029960cb6bc786fe9b" -> "sha256:5ea4121a383fea854173468b43b3545519e41b3143d21fa4843c807a3b38c09f" [label=""];
  "sha256:5ea4121a383fea854173468b43b3545519e41b3143d21fa4843c807a3b38c09f" -> "sha256:53ce6300d15f15785b73cd3c7ebd62dd52fd611d36a1615e61b91c4cd2b711b7" [label=""];
}

