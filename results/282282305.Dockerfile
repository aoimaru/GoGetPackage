[app/sources/282282305.Dockerfile]
digraph {
  "sha256:f69ff37f603273c98b997da68d3fb9d828e3e04710ac0390eb75290e7a292472" [label="docker-image://docker.io/webdevops/php:debian-8-php7@sha256:675d46d844e351488b54bd40655b30ad58785682b3c8ba10be4bdcd28d2db17e" shape="ellipse"];
  "sha256:458aea24a2522c80e383637a2586af291bcf265e0294d624cada44f1f7fc5abd" [label="/bin/sh -c echo 'deb http://mirrors.aliyun.com/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list     && echo 'deb http://nginx.org/packages/debian/ stretch nginx' >> /etc/apt/sources.list" shape="box"];
  "sha256:c1223475ccf79c230c67e298752b2d06d88a84f1433aa98578cc5caf5cc4bc63" [label="local://context" shape="ellipse"];
  "sha256:eefd002c1c09f9e38509b30ee09e78cf359a1d6101baded6ba7c924c7b4f3110" [label="copy{src=/nginx-official-repo.gpg, dest=/etc/apt/trusted.gpg.d/}" shape="note"];
  "sha256:dbcb392f139b33e52dad0d9fa3ba6401ebb686c12a5991aad7d485b914d6f1a4" [label="/bin/sh -c echo \"${TIMEZONE}\" > /etc/timezone     && echo \"$LANG UTF-8\" > /etc/locale.gen     && apt-get update -q     && DEBIAN_FRONTEND=noninteractive apt-get install -yq apt-utils dialog vim-tiny curl locales     && ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime     && update-locale LANG=$LANG     && locale-gen $LANG     && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales" shape="box"];
  "sha256:b5b9545f2a2b527cdd06d2db028fb7cf997587e935231a54ace514b870f703f1" [label="/bin/sh -c apt-get dist-upgrade -y" shape="box"];
  "sha256:d201b486da81e614f0d205ad522012ba98d1c033cf67ee5d9cd22873e3fae375" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:24c5f5949ec84f8c9557ba2566739baf1de2fa948e3bf70cc64e3ab7e6d6338b" [label="/bin/sh -c echo 'deb http://mirrors.aliyun.com/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:940245cf793d6838dad5ef07e1b2350fd0d7380cf06a398a2456e422cc099680" [label="/bin/sh -c echo \"${TIMEZONE}\" > /etc/timezone     && echo \"$LANG UTF-8\" > /etc/locale.gen     && apt-get update -q     && DEBIAN_FRONTEND=noninteractive apt-get install -yq apt-utils dialog vim-tiny curl locales     && ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime     && update-locale LANG=$LANG     && locale-gen $LANG     && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales" shape="box"];
  "sha256:4e9ced43ba4679e9c7ec9559010c1651e6b9796a77301cbaed8018978d79bea1" [label="/bin/sh -c apt-get dist-upgrade -y" shape="box"];
  "sha256:a548da1dbbc371152be2fe419b53a348c9339495182636d1e464461536c0624c" [label="mkdir{path=/root}" shape="note"];
  "sha256:5e53c5a28daa981d2825879c306f2bfd03a6006c5913a0d7ebda0449941e6850" [label="/bin/sh -c apt-get install -y automake bison flex gcc-4.8 g++-4.8 git libtool libssl-dev make pkg-config     && ln -s /usr/bin/gcc-4.8 /usr/bin/gcc     && ln -s /usr/bin/gcc-4.8 /usr/bin/cc     && ln -s /usr/bin/g++-4.8 /usr/bin/g++" shape="box"];
  "sha256:c29cc7b64b7036d4c12ea20e92ddefc1603e51791f308e11cf6dd6e271706011" [label="/bin/sh -c git clone https://github.com/naver/pinpoint-c-agent.git     && cd pinpoint-c-agent     && git checkout master     && cd pinpoint_php && bash Build.sh --always-make || bash Build.sh --always-make" shape="box"];
  "sha256:6158c578cf2688ba846341323e55b373a3612c0f63adc50303b66b9042b67b5b" [label="copy{src=/root/pinpoint-c-agent/pinpoint_php/modules/pinpoint.so, dest=/usr/local/lib/php/extensions/no-debug-non-zts-20160303/}" shape="note"];
  "sha256:8793fa46d70121635309b74bdf65c6a32394994673cf9c0e802b025164b63376" [label="/bin/sh -c echo 'extension=pinpoint.so' > /opt/docker/etc/php/conf.d/pinpoint.ini     && echo 'pinpoint_agent.config_full_name=/etc/pinpoint_agent.conf' >> /etc/php.d/pinpoint.ini" shape="box"];
  "sha256:5982874199da54412d153b744e95a9ec5559408574c87fa5f941882632a5489c" [label="copy{src=/root/pinpoint-c-agent/quickstart/config/pinpoint_agent.conf.example, dest=/etc/pinpoint_agent.conf}" shape="note"];
  "sha256:8760d0283bd54d754578a35af71215228e265acbd8ee7e2f719b7dac56a0a488" [label="copy{src=/root/pinpoint-c-agent/quickstart/php/web/plugins/*, dest=/app/pinpoint_plugins}" shape="note"];
  "sha256:f8acaa250202cc0cc8af55ff5bed05b5c8b7361987e0201d2d3dda92c81eb383" [label="copy{src=/root/pinpoint-c-agent/quickstart/php/web/*.php, dest=/app}" shape="note"];
  "sha256:933b55fcaa84cb7ef29a4939b5c2def6f044c9694bf34896f876f2f2ed888833" [label="/bin/sh -c set -x     && apt-install         nginx     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:1ee899a2070a5852810236b016d9f790e84457013ca289ebe731fa5cf4b8401b" [label="sha256:1ee899a2070a5852810236b016d9f790e84457013ca289ebe731fa5cf4b8401b" shape="plaintext"];
  "sha256:f69ff37f603273c98b997da68d3fb9d828e3e04710ac0390eb75290e7a292472" -> "sha256:458aea24a2522c80e383637a2586af291bcf265e0294d624cada44f1f7fc5abd" [label=""];
  "sha256:458aea24a2522c80e383637a2586af291bcf265e0294d624cada44f1f7fc5abd" -> "sha256:eefd002c1c09f9e38509b30ee09e78cf359a1d6101baded6ba7c924c7b4f3110" [label=""];
  "sha256:c1223475ccf79c230c67e298752b2d06d88a84f1433aa98578cc5caf5cc4bc63" -> "sha256:eefd002c1c09f9e38509b30ee09e78cf359a1d6101baded6ba7c924c7b4f3110" [label=""];
  "sha256:eefd002c1c09f9e38509b30ee09e78cf359a1d6101baded6ba7c924c7b4f3110" -> "sha256:dbcb392f139b33e52dad0d9fa3ba6401ebb686c12a5991aad7d485b914d6f1a4" [label=""];
  "sha256:dbcb392f139b33e52dad0d9fa3ba6401ebb686c12a5991aad7d485b914d6f1a4" -> "sha256:b5b9545f2a2b527cdd06d2db028fb7cf997587e935231a54ace514b870f703f1" [label=""];
  "sha256:b5b9545f2a2b527cdd06d2db028fb7cf997587e935231a54ace514b870f703f1" -> "sha256:d201b486da81e614f0d205ad522012ba98d1c033cf67ee5d9cd22873e3fae375" [label=""];
  "sha256:c1223475ccf79c230c67e298752b2d06d88a84f1433aa98578cc5caf5cc4bc63" -> "sha256:d201b486da81e614f0d205ad522012ba98d1c033cf67ee5d9cd22873e3fae375" [label=""];
  "sha256:f69ff37f603273c98b997da68d3fb9d828e3e04710ac0390eb75290e7a292472" -> "sha256:24c5f5949ec84f8c9557ba2566739baf1de2fa948e3bf70cc64e3ab7e6d6338b" [label=""];
  "sha256:24c5f5949ec84f8c9557ba2566739baf1de2fa948e3bf70cc64e3ab7e6d6338b" -> "sha256:940245cf793d6838dad5ef07e1b2350fd0d7380cf06a398a2456e422cc099680" [label=""];
  "sha256:940245cf793d6838dad5ef07e1b2350fd0d7380cf06a398a2456e422cc099680" -> "sha256:4e9ced43ba4679e9c7ec9559010c1651e6b9796a77301cbaed8018978d79bea1" [label=""];
  "sha256:4e9ced43ba4679e9c7ec9559010c1651e6b9796a77301cbaed8018978d79bea1" -> "sha256:a548da1dbbc371152be2fe419b53a348c9339495182636d1e464461536c0624c" [label=""];
  "sha256:a548da1dbbc371152be2fe419b53a348c9339495182636d1e464461536c0624c" -> "sha256:5e53c5a28daa981d2825879c306f2bfd03a6006c5913a0d7ebda0449941e6850" [label=""];
  "sha256:5e53c5a28daa981d2825879c306f2bfd03a6006c5913a0d7ebda0449941e6850" -> "sha256:c29cc7b64b7036d4c12ea20e92ddefc1603e51791f308e11cf6dd6e271706011" [label=""];
  "sha256:d201b486da81e614f0d205ad522012ba98d1c033cf67ee5d9cd22873e3fae375" -> "sha256:6158c578cf2688ba846341323e55b373a3612c0f63adc50303b66b9042b67b5b" [label=""];
  "sha256:c29cc7b64b7036d4c12ea20e92ddefc1603e51791f308e11cf6dd6e271706011" -> "sha256:6158c578cf2688ba846341323e55b373a3612c0f63adc50303b66b9042b67b5b" [label=""];
  "sha256:6158c578cf2688ba846341323e55b373a3612c0f63adc50303b66b9042b67b5b" -> "sha256:8793fa46d70121635309b74bdf65c6a32394994673cf9c0e802b025164b63376" [label=""];
  "sha256:8793fa46d70121635309b74bdf65c6a32394994673cf9c0e802b025164b63376" -> "sha256:5982874199da54412d153b744e95a9ec5559408574c87fa5f941882632a5489c" [label=""];
  "sha256:c29cc7b64b7036d4c12ea20e92ddefc1603e51791f308e11cf6dd6e271706011" -> "sha256:5982874199da54412d153b744e95a9ec5559408574c87fa5f941882632a5489c" [label=""];
  "sha256:5982874199da54412d153b744e95a9ec5559408574c87fa5f941882632a5489c" -> "sha256:8760d0283bd54d754578a35af71215228e265acbd8ee7e2f719b7dac56a0a488" [label=""];
  "sha256:c29cc7b64b7036d4c12ea20e92ddefc1603e51791f308e11cf6dd6e271706011" -> "sha256:8760d0283bd54d754578a35af71215228e265acbd8ee7e2f719b7dac56a0a488" [label=""];
  "sha256:8760d0283bd54d754578a35af71215228e265acbd8ee7e2f719b7dac56a0a488" -> "sha256:f8acaa250202cc0cc8af55ff5bed05b5c8b7361987e0201d2d3dda92c81eb383" [label=""];
  "sha256:c29cc7b64b7036d4c12ea20e92ddefc1603e51791f308e11cf6dd6e271706011" -> "sha256:f8acaa250202cc0cc8af55ff5bed05b5c8b7361987e0201d2d3dda92c81eb383" [label=""];
  "sha256:f8acaa250202cc0cc8af55ff5bed05b5c8b7361987e0201d2d3dda92c81eb383" -> "sha256:933b55fcaa84cb7ef29a4939b5c2def6f044c9694bf34896f876f2f2ed888833" [label=""];
  "sha256:933b55fcaa84cb7ef29a4939b5c2def6f044c9694bf34896f876f2f2ed888833" -> "sha256:1ee899a2070a5852810236b016d9f790e84457013ca289ebe731fa5cf4b8401b" [label=""];
}

