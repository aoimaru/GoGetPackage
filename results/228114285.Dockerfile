[app/sources/228114285.Dockerfile]
digraph {
  "sha256:4ec8b1122ee501c17bc24a9246825c95d1c6ddf045fe8f17fd35e5d8214db321" [label="local://context" shape="ellipse"];
  "sha256:f490e30173ff6dfc5dab5744cc77e61c726e7b5f250625d08c6822e0e119f302" [label="docker-image://docker.io/robbertkl/base-s6:latest" shape="ellipse"];
  "sha256:6dcc9e3c0369069a36eb64c4b5e1f6e051d808afffee727c2c4436fe8c8682a7" [label="/bin/sh -c cleaninstall     dovecot-core     dovecot-imapd     dovecot-managesieved     dovecot-sieve     geoip-database     inotify-tools     opendkim     opendmarc     postfix     postfix-policyd-spf-python     python3-authres" shape="box"];
  "sha256:e4c9f1d3f54d80bb0c3d14f2f2b6ef217aef09de48f5d91bd7579421662658f4" [label="/bin/sh -c rm -rf /etc/dovecot/*" shape="box"];
  "sha256:9f661dc42d27bf4a28620f77dcba62a3b898b75169bf8add154646b7a97e4c3e" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:474a23e89d6db39d10eb2eba41c0ab5bcc38d5490211f7d92455a4c2ab3d4c8d" [label="/bin/sh -c groupadd -g 5000 vmail     && useradd -u 5000 -g vmail -s /usr/sbin/nologin -d /nonexistent vmail     && usermod -a -G opendkim,opendmarc postfix     && bash -c \"mkdir -p /var/spool/postfix/{opendkim,opendmarc}\"     && chown opendkim: /var/spool/postfix/opendkim     && chown opendmarc: /var/spool/postfix/opendmarc     && bash -c \"touch /var/log/mail.{err,log}\"     && echo /var/log/mail.err >> /etc/services.d/logs/stderr     && echo /var/log/mail.log >> /etc/services.d/logs/stdout" shape="box"];
  "sha256:26e296da5c99aed95a58a917723e768737815cbb98b87892aa4087ea44badd3c" [label="/bin/sh -c mkdir /data     && mkdir /data/dkim     && mkdir /data/mail     && chown vmail:vmail /data/mail     && touch /data/users     && chmod 666 /data/users     && touch /data/virtual" shape="box"];
  "sha256:2760c4ba2c31999b0f4f83733ece14bd2c990c7e88e26fb9aeba74acf5f37bfc" [label="sha256:2760c4ba2c31999b0f4f83733ece14bd2c990c7e88e26fb9aeba74acf5f37bfc" shape="plaintext"];
  "sha256:f490e30173ff6dfc5dab5744cc77e61c726e7b5f250625d08c6822e0e119f302" -> "sha256:6dcc9e3c0369069a36eb64c4b5e1f6e051d808afffee727c2c4436fe8c8682a7" [label=""];
  "sha256:6dcc9e3c0369069a36eb64c4b5e1f6e051d808afffee727c2c4436fe8c8682a7" -> "sha256:e4c9f1d3f54d80bb0c3d14f2f2b6ef217aef09de48f5d91bd7579421662658f4" [label=""];
  "sha256:e4c9f1d3f54d80bb0c3d14f2f2b6ef217aef09de48f5d91bd7579421662658f4" -> "sha256:9f661dc42d27bf4a28620f77dcba62a3b898b75169bf8add154646b7a97e4c3e" [label=""];
  "sha256:4ec8b1122ee501c17bc24a9246825c95d1c6ddf045fe8f17fd35e5d8214db321" -> "sha256:9f661dc42d27bf4a28620f77dcba62a3b898b75169bf8add154646b7a97e4c3e" [label=""];
  "sha256:9f661dc42d27bf4a28620f77dcba62a3b898b75169bf8add154646b7a97e4c3e" -> "sha256:474a23e89d6db39d10eb2eba41c0ab5bcc38d5490211f7d92455a4c2ab3d4c8d" [label=""];
  "sha256:474a23e89d6db39d10eb2eba41c0ab5bcc38d5490211f7d92455a4c2ab3d4c8d" -> "sha256:26e296da5c99aed95a58a917723e768737815cbb98b87892aa4087ea44badd3c" [label=""];
  "sha256:26e296da5c99aed95a58a917723e768737815cbb98b87892aa4087ea44badd3c" -> "sha256:2760c4ba2c31999b0f4f83733ece14bd2c990c7e88e26fb9aeba74acf5f37bfc" [label=""];
}

