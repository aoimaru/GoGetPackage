[app/sources/356318838.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:2e98637cd7a8c842d6d5815cf231d06ac2b6c3dbf1c22e4b753141fa416bd108" [label="/bin/sh -c echo mail > /etc/hostname     && chown root:root /etc/hosts" shape="box"];
  "sha256:afe5d4c4c26fa3809031202b4229473e1d8a168950622b3eb1c9887daf100170" [label="/bin/sh -c echo \"postfix postfix/main_mailer_type string Internet site\" > preseed.txt     && echo \"postfix postfix/mailname string mail.example.com\" >> preseed.txt     && debconf-set-selections preseed.txt     && apt-get update     && apt-get install -y postfix syslog-ng syslog-ng-core --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && postconf -e myhostname=\"mail.example.com\"     && postconf -e mydestination=\"mail.example.com, example.com, localhost.localdomain, localhost\"     && postconf -e mail_spool_directory=\"/var/spool/mail/\"     && postconf -e mailbox_command=\"\"     && postconf -e mynetworks=\"127.0.0.0/8 172.16.0.0/12 [::1]/128 [fe80::]/64\"     && postconf -e smtpd_recipient_restrictions=\"permit_sasl_authenticated permit_mynetworks defer_unauth_destination\"     && postconf -e smtpd_relay_restrictions=\"permit_sasl_authenticated permit_mynetworks defer_unauth_destination\"" shape="box"];
  "sha256:f9642059e2f03e7b4e449fd4f9c6dfe73b6025da223a7718bd91741fd89d5f34" [label="/bin/sh -c useradd -s /bin/bash someone     && mkdir /var/spool/mail/someone     && chown someone:mail /var/spool/mail/someone     && chown root:root /etc/aliases     && newaliases" shape="box"];
  "sha256:cb9c21b51a28d80d3c46e3ff3a280898e80fcb44d1a1cf599609716d8ab3927a" [label="/bin/sh -c sed -i -E 's/^(\\s*)system\\(\\);/\\1unix-stream(\"\\/dev\\/log\");/' /etc/syslog-ng/syslog-ng.conf    && sed -i 's/^#\\(SYSLOGNG_OPTS=\"--no-caps\"\\)/\\1/g' /etc/default/syslog-ng" shape="box"];
  "sha256:26108eefa6825b7581f5a56aac9edd21b3a480e5122db6dd5b283c700078ac02" [label="sha256:26108eefa6825b7581f5a56aac9edd21b3a480e5122db6dd5b283c700078ac02" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:2e98637cd7a8c842d6d5815cf231d06ac2b6c3dbf1c22e4b753141fa416bd108" [label=""];
  "sha256:2e98637cd7a8c842d6d5815cf231d06ac2b6c3dbf1c22e4b753141fa416bd108" -> "sha256:afe5d4c4c26fa3809031202b4229473e1d8a168950622b3eb1c9887daf100170" [label=""];
  "sha256:afe5d4c4c26fa3809031202b4229473e1d8a168950622b3eb1c9887daf100170" -> "sha256:f9642059e2f03e7b4e449fd4f9c6dfe73b6025da223a7718bd91741fd89d5f34" [label=""];
  "sha256:f9642059e2f03e7b4e449fd4f9c6dfe73b6025da223a7718bd91741fd89d5f34" -> "sha256:cb9c21b51a28d80d3c46e3ff3a280898e80fcb44d1a1cf599609716d8ab3927a" [label=""];
  "sha256:cb9c21b51a28d80d3c46e3ff3a280898e80fcb44d1a1cf599609716d8ab3927a" -> "sha256:26108eefa6825b7581f5a56aac9edd21b3a480e5122db6dd5b283c700078ac02" [label=""];
}

