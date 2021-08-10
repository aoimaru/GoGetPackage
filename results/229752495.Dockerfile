[app/sources/229752495.Dockerfile]
digraph {
  "sha256:071264c9100caccc598bbeaba827417e369bde0c9287955b19cc596bac6d747e" [label="local://context" shape="ellipse"];
  "sha256:a2e17257733f0c34becc0a70421aaf0483f6d8b8abc1918ccd629e79dc72e895" [label="docker-image://docker.io/hurricane/base:x86_64" shape="ellipse"];
  "sha256:40f8cc7f733d1681483d746881278fdc3e6a3bbf92b1204077103d28b491733d" [label="/bin/sh -c zypper --gpg-auto-import-keys ref  && zypper --non-interactive in --no-recommends \tca-certificates{-cacert,-mozilla} \tcurl \tgit-core \tpython \tpython-xml \ttar \ttimezone  && mkdir -p /usr/lib/${APP_NAME}  && git clone --depth=1 https://github.com/rembo10/headphones.git /usr/lib/${APP_NAME}  && curl -L https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz -o /tmp/ffmpeg.tar.xz  && tar -C /bin --extract --file=/tmp/ffmpeg.tar.xz --wildcards \"*/ffmpeg\" --strip-components=1   && tar -C /bin --extract --file=/tmp/ffmpeg.tar.xz --wildcards \"*/ffprobe\" --strip-components=1   && rpm -e --nodeps --allmatches --noscripts \t`rpm -qa | grep aaa_base` \t`rpm -qa | grep acl | grep -v lib` \t`rpm -qa | grep branding-openSUSE` \t`rpm -qa | grep branding` \t`rpm -qa | grep cpio` \t`rpm -qa | grep cryptsetup` \t`rpm -qa | grep dbus-1` \t`rpm -qa | grep dracut` \t`rpm -qa | grep fipscheck` \t`rpm -qa | grep kbd` \t`rpm -qa | grep kmod` \t`rpm -qa | grep mapper` \t`rpm -qa | grep ncurses-utils` \t`rpm -qa | grep openSUSE-release` \t`rpm -qa | grep perl` \t`rpm -qa | grep pigz` \t`rpm -qa | grep pinentry` \t`rpm -qa | grep pkg-config` \t`rpm -qa | grep qrencode` \t`rpm -qa | grep sg3_utils` \t`rpm -qa | grep systemd | grep -v lib` \ttar  && zypper cc --all  && rm -rf /usr/share/{man,doc,info,gnome/help}  && rm -rf /var/cache/zypp*  && rm -rf /tmp/*  && rm -rf /var/log/*" shape="box"];
  "sha256:ceda618cf3d66e92558ee3f2db53361aa6f94737ea5a54183fd72f99699b535e" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:e1af529f97316e73cec11b7a671ea206e8e9a3f06d5980b0616433c993f937e3" [label="sha256:e1af529f97316e73cec11b7a671ea206e8e9a3f06d5980b0616433c993f937e3" shape="plaintext"];
  "sha256:a2e17257733f0c34becc0a70421aaf0483f6d8b8abc1918ccd629e79dc72e895" -> "sha256:40f8cc7f733d1681483d746881278fdc3e6a3bbf92b1204077103d28b491733d" [label=""];
  "sha256:40f8cc7f733d1681483d746881278fdc3e6a3bbf92b1204077103d28b491733d" -> "sha256:ceda618cf3d66e92558ee3f2db53361aa6f94737ea5a54183fd72f99699b535e" [label=""];
  "sha256:071264c9100caccc598bbeaba827417e369bde0c9287955b19cc596bac6d747e" -> "sha256:ceda618cf3d66e92558ee3f2db53361aa6f94737ea5a54183fd72f99699b535e" [label=""];
  "sha256:ceda618cf3d66e92558ee3f2db53361aa6f94737ea5a54183fd72f99699b535e" -> "sha256:e1af529f97316e73cec11b7a671ea206e8e9a3f06d5980b0616433c993f937e3" [label=""];
}
