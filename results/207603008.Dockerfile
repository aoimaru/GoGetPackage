[app/sources/207603008.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:d470cbc66c9693a55ae283adeb1baa177fa2671d6d46521fac91a461b7537229" [label="/bin/sh -c yum -y install gcc gcc-c++ cpp ncurses ncurses-devel libxml2 libxml2-devel openssl-devel       newt-devel libuuid-devel net-snmp-devel xinetd tar libffi-devel sqlite-devel curl bison supervisor   && mkdir /tmp/asterisk   && curl -sf -o /tmp/asterisk.tar.gz -L http://downloads.asterisk.org/pub/telephony/certified-asterisk/certified-asterisk-11.6-current.tar.gz   && tar -xzf /tmp/asterisk.tar.gz -C /tmp/asterisk --strip-components=1   && cd /tmp/asterisk   && ./configure --libdir=/usr/lib64   && make menuselect   && menuselect/menuselect     --disable-all     --disable-category MENUSELECT_ADDONS     --disable-category MENUSELECT_APPS     --disable-category MENUSELECT_BRIDGES     --disable-category MENUSELECT_CDR     --disable-category MENUSELECT_CEL     --disable-category MENUSELECT_CHANNELS     --enable-category MENUSELECT_CODECS     --enable-category MENUSELECT_FORMATS     --disable-category MENUSELECT_FUNCS     --disable-category MENUSELECT_PBX     --disable-category MENUSELECT_RES     --disable-category MENUSELECT_TESTS     --disable-category MENUSELECT_UTILS     --disable-category MENUSELECT_AGIS     --disable-category MENUSELECT_EMBED     --enable-category MENUSELECT_CORE_SOUNDS     --enable-category MENUSELECT_MOH     --enable-category MENUSELECT_EXTRA_SOUNDS     --disable-category MENUSELECT_TESTS     --enable-category MENUSELECT_OPTS_app_voicemail     --enable func_module     --enable LOADABLE_MODULES     --enable FILE_STORAGE     --disable codec_dahdi     --enable app_dial     --enable app_exec     --enable app_originate     --enable app_verbose     --enable chan_sip     --enable pbx_config     --enable res_agi     --enable res_convert     --enable res_musiconhold     --enable res_timing_timerfd     --disable BUILD_NATIVE   menuselect.makeopts   && make config   && make   && make install   && mkdir -p /var/lib/asterisk/phoneprov   && make samples   && make dist-clean   && sed -i -e 's/# MAXFILES=/MAXFILES=/' /usr/sbin/safe_asterisk   && cd ..   && rm /tmp/asterisk.tar.gz   && rm -rf /tmp/asterisk   && yum -y clean all   && rm -rf /var/cache/yum/*" shape="box"];
  "sha256:80e6cda5cc5646d06b84f8dd596a68e217addf6abe5be1048fd73160e1da44fb" [label="sha256:80e6cda5cc5646d06b84f8dd596a68e217addf6abe5be1048fd73160e1da44fb" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:d470cbc66c9693a55ae283adeb1baa177fa2671d6d46521fac91a461b7537229" [label=""];
  "sha256:d470cbc66c9693a55ae283adeb1baa177fa2671d6d46521fac91a461b7537229" -> "sha256:80e6cda5cc5646d06b84f8dd596a68e217addf6abe5be1048fd73160e1da44fb" [label=""];
}
