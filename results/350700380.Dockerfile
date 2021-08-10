[app/sources/350700380.Dockerfile]
digraph {
  "sha256:1a28bf82064999dcf31d4175a0f7175b011b6bcd9d06d9bbc8e9c9861b02c4d3" [label="local://context" shape="ellipse"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" [label="docker-image://docker.io/library/fedora:23" shape="ellipse"];
  "sha256:0c4d703d49f5f0b6a68b92777a938d0213f057e9d08b49439a3527f512297e4a" [label="/bin/sh -c dnf install -y   apr-util-openssl   authconfig   httpd   krb5-libs   krb5-server   krb5-workstation   mod_auth_gssapi   mod_ssl   && dnf clean all" shape="box"];
  "sha256:264de13bd7f58f13c914ab048517b6ac2444cf7815c0faabc23d968c810c8e17" [label="copy{src=/krb5.conf, dest=/etc/krb5.conf}" shape="note"];
  "sha256:59cd4158cda2374099e13ad239b31096a2bec8aa98a2bc903deb543024c1dbdd" [label="copy{src=/kdc.conf, dest=/var/kerberos/krb5kdc/kdc.conf}" shape="note"];
  "sha256:b73d70362683dd541f75f1c4f468e45831064e575063cabe489a955cd522cae3" [label="copy{src=/kadm5.acl, dest=/var/kerberos/krb5kdc/kadm5.acl}" shape="note"];
  "sha256:89a451287473a0d661089511076d37dbb5f3a45d572000bbe8a6f6cda9416b96" [label="copy{src=/proxy.conf, dest=/etc/httpd/conf.d/proxy.conf}" shape="note"];
  "sha256:80a7da471a8b3f06fc2b03b0c53eaf9238e4f70f6d318d9e51a693646f3609e6" [label="copy{src=/healthz, dest=/var/www/html/healthz}" shape="note"];
  "sha256:90d6b94056c3a555c324984ad151012c4519204550db0bea77652f4defd98f87" [label="copy{src=/configure.sh, dest=/usr/sbin/configure.sh}" shape="note"];
  "sha256:a4a13fffbd39a09f41579f7886fab735b1868360fcd9e971e8b7716ad9aae0d3" [label="sha256:a4a13fffbd39a09f41579f7886fab735b1868360fcd9e971e8b7716ad9aae0d3" shape="plaintext"];
  "sha256:6a6fa6f026fcd2a0c8593dc809c5465ad749da78442eae3a061b41965456c627" -> "sha256:0c4d703d49f5f0b6a68b92777a938d0213f057e9d08b49439a3527f512297e4a" [label=""];
  "sha256:0c4d703d49f5f0b6a68b92777a938d0213f057e9d08b49439a3527f512297e4a" -> "sha256:264de13bd7f58f13c914ab048517b6ac2444cf7815c0faabc23d968c810c8e17" [label=""];
  "sha256:1a28bf82064999dcf31d4175a0f7175b011b6bcd9d06d9bbc8e9c9861b02c4d3" -> "sha256:264de13bd7f58f13c914ab048517b6ac2444cf7815c0faabc23d968c810c8e17" [label=""];
  "sha256:264de13bd7f58f13c914ab048517b6ac2444cf7815c0faabc23d968c810c8e17" -> "sha256:59cd4158cda2374099e13ad239b31096a2bec8aa98a2bc903deb543024c1dbdd" [label=""];
  "sha256:1a28bf82064999dcf31d4175a0f7175b011b6bcd9d06d9bbc8e9c9861b02c4d3" -> "sha256:59cd4158cda2374099e13ad239b31096a2bec8aa98a2bc903deb543024c1dbdd" [label=""];
  "sha256:59cd4158cda2374099e13ad239b31096a2bec8aa98a2bc903deb543024c1dbdd" -> "sha256:b73d70362683dd541f75f1c4f468e45831064e575063cabe489a955cd522cae3" [label=""];
  "sha256:1a28bf82064999dcf31d4175a0f7175b011b6bcd9d06d9bbc8e9c9861b02c4d3" -> "sha256:b73d70362683dd541f75f1c4f468e45831064e575063cabe489a955cd522cae3" [label=""];
  "sha256:b73d70362683dd541f75f1c4f468e45831064e575063cabe489a955cd522cae3" -> "sha256:89a451287473a0d661089511076d37dbb5f3a45d572000bbe8a6f6cda9416b96" [label=""];
  "sha256:1a28bf82064999dcf31d4175a0f7175b011b6bcd9d06d9bbc8e9c9861b02c4d3" -> "sha256:89a451287473a0d661089511076d37dbb5f3a45d572000bbe8a6f6cda9416b96" [label=""];
  "sha256:89a451287473a0d661089511076d37dbb5f3a45d572000bbe8a6f6cda9416b96" -> "sha256:80a7da471a8b3f06fc2b03b0c53eaf9238e4f70f6d318d9e51a693646f3609e6" [label=""];
  "sha256:1a28bf82064999dcf31d4175a0f7175b011b6bcd9d06d9bbc8e9c9861b02c4d3" -> "sha256:80a7da471a8b3f06fc2b03b0c53eaf9238e4f70f6d318d9e51a693646f3609e6" [label=""];
  "sha256:80a7da471a8b3f06fc2b03b0c53eaf9238e4f70f6d318d9e51a693646f3609e6" -> "sha256:90d6b94056c3a555c324984ad151012c4519204550db0bea77652f4defd98f87" [label=""];
  "sha256:1a28bf82064999dcf31d4175a0f7175b011b6bcd9d06d9bbc8e9c9861b02c4d3" -> "sha256:90d6b94056c3a555c324984ad151012c4519204550db0bea77652f4defd98f87" [label=""];
  "sha256:90d6b94056c3a555c324984ad151012c4519204550db0bea77652f4defd98f87" -> "sha256:a4a13fffbd39a09f41579f7886fab735b1868360fcd9e971e8b7716ad9aae0d3" [label=""];
}

