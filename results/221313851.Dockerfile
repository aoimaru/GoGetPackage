[app/sources/221313851.Dockerfile]
digraph {
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" [label="docker-image://docker.io/library/python:2-alpine" shape="ellipse"];
  "sha256:c4b75caec9c1983ab2dda4088f38f462e39d3529ecf9b01e92f0b6eb948fafcb" [label="/bin/sh -c ln -s /usr/local/bin/jobrunner /etc/periodic/15min/jobrunner" shape="box"];
  "sha256:789f5821f20a292570523f72bc19cb57fd6c9e61bf23765eed8231d8dde5fadb" [label="/bin/sh -c ln -s /usr/local/bin/jobrunner /etc/periodic/hourly/jobrunner" shape="box"];
  "sha256:0d915ad29126d090fbe3b46dc0012c6bffa1120d68d161d68cec25503589dd28" [label="/bin/sh -c ln -s /usr/local/bin/jobrunner /etc/periodic/daily/jobrunner" shape="box"];
  "sha256:f82356b4c3ac9a9668c095232034bcadfad53c5121829ed5569fd5b00512cda4" [label="/bin/sh -c ln -s /usr/local/bin/jobrunner /etc/periodic/weekly/jobrunner" shape="box"];
  "sha256:866f8a1e328d8c60edff0446b64c89e400d22d81c0e28525ad24f30fcd0dfdee" [label="/bin/sh -c ln -s /usr/local/bin/jobrunner /etc/periodic/monthly/jobrunner" shape="box"];
  "sha256:d76876356e8c9c833bd687ee2e4127e71373c1a44d1b845e0cf4e2b3430d259e" [label="/bin/sh -c apk add --no-cache         ca-certificates         dbus         gnupg         krb5-libs         lftp         libffi         librsync         ncftp         openssh         openssl         py2-gobject3         tzdata     && sync" shape="box"];
  "sha256:c471a0435a9d35679fe08b1f0a9ac7a6b9b5f84f07485af88308249d50d2a52b" [label="/bin/sh -c mkdir -p \"$SRC\"" shape="box"];
  "sha256:bd9014e16853fe00e5d5f652e7adde2e09dedb4fcdffeeff17d0f680e5207dc4" [label="/bin/sh -c apk add --no-cache --virtual .build         build-base         krb5-dev         libffi-dev         librsync-dev         linux-headers         openssl-dev         python-dev     && pip install --no-cache-dir --no-use-pep517         azure-storage         b2         boto         dropbox         gdata         lockfile         mediafire         mega.py         paramiko         pexpect         pycryptopp         PyDrive         pykerberos         pyrax         python-keystoneclient         python-swiftclient         PyNaCl==1.2.1         requests         requests-oauthlib         urllib3         https://code.launchpad.net/duplicity/$(echo $DUPLICITY_VERSION | sed -r 's/^([0-9]+\\.[0-9]+)([0-9\\.]*)$/\\1/')-series/$DUPLICITY_VERSION/+download/duplicity-$DUPLICITY_VERSION.tar.gz     && apk del .build" shape="box"];
  "sha256:e57e9b2b4725fbf7a23c5f2f9800aff57668a3b45a75f5a02018088eff06d40e" [label="local://context" shape="ellipse"];
  "sha256:cc549c58718fec50a4bfcf97d582ccd9430eac93c2282dab8898a875371297a2" [label="copy{src=/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:0c62b92283e82813322f1cebeb02e62a2372ad2b0f8e23d5e809fc11b231f90f" [label="/bin/sh -c chmod a+rx /usr/local/bin/* && sync" shape="box"];
  "sha256:bd35347b7b32fab792ce667fe74ac969268b3feaeb8abf0b5c12c72ee7c890c6" [label="/bin/sh -c apk add --no-cache postgresql --repository http://dl-cdn.alpinelinux.org/alpine/v3.9/main" shape="box"];
  "sha256:11f90c78f9f0132869d1a84421e28b3ed8cd7727b54802a6d83ac5c0fcc31d2a" [label="sha256:11f90c78f9f0132869d1a84421e28b3ed8cd7727b54802a6d83ac5c0fcc31d2a" shape="plaintext"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" -> "sha256:c4b75caec9c1983ab2dda4088f38f462e39d3529ecf9b01e92f0b6eb948fafcb" [label=""];
  "sha256:c4b75caec9c1983ab2dda4088f38f462e39d3529ecf9b01e92f0b6eb948fafcb" -> "sha256:789f5821f20a292570523f72bc19cb57fd6c9e61bf23765eed8231d8dde5fadb" [label=""];
  "sha256:789f5821f20a292570523f72bc19cb57fd6c9e61bf23765eed8231d8dde5fadb" -> "sha256:0d915ad29126d090fbe3b46dc0012c6bffa1120d68d161d68cec25503589dd28" [label=""];
  "sha256:0d915ad29126d090fbe3b46dc0012c6bffa1120d68d161d68cec25503589dd28" -> "sha256:f82356b4c3ac9a9668c095232034bcadfad53c5121829ed5569fd5b00512cda4" [label=""];
  "sha256:f82356b4c3ac9a9668c095232034bcadfad53c5121829ed5569fd5b00512cda4" -> "sha256:866f8a1e328d8c60edff0446b64c89e400d22d81c0e28525ad24f30fcd0dfdee" [label=""];
  "sha256:866f8a1e328d8c60edff0446b64c89e400d22d81c0e28525ad24f30fcd0dfdee" -> "sha256:d76876356e8c9c833bd687ee2e4127e71373c1a44d1b845e0cf4e2b3430d259e" [label=""];
  "sha256:d76876356e8c9c833bd687ee2e4127e71373c1a44d1b845e0cf4e2b3430d259e" -> "sha256:c471a0435a9d35679fe08b1f0a9ac7a6b9b5f84f07485af88308249d50d2a52b" [label=""];
  "sha256:c471a0435a9d35679fe08b1f0a9ac7a6b9b5f84f07485af88308249d50d2a52b" -> "sha256:bd9014e16853fe00e5d5f652e7adde2e09dedb4fcdffeeff17d0f680e5207dc4" [label=""];
  "sha256:bd9014e16853fe00e5d5f652e7adde2e09dedb4fcdffeeff17d0f680e5207dc4" -> "sha256:cc549c58718fec50a4bfcf97d582ccd9430eac93c2282dab8898a875371297a2" [label=""];
  "sha256:e57e9b2b4725fbf7a23c5f2f9800aff57668a3b45a75f5a02018088eff06d40e" -> "sha256:cc549c58718fec50a4bfcf97d582ccd9430eac93c2282dab8898a875371297a2" [label=""];
  "sha256:cc549c58718fec50a4bfcf97d582ccd9430eac93c2282dab8898a875371297a2" -> "sha256:0c62b92283e82813322f1cebeb02e62a2372ad2b0f8e23d5e809fc11b231f90f" [label=""];
  "sha256:0c62b92283e82813322f1cebeb02e62a2372ad2b0f8e23d5e809fc11b231f90f" -> "sha256:bd35347b7b32fab792ce667fe74ac969268b3feaeb8abf0b5c12c72ee7c890c6" [label=""];
  "sha256:bd35347b7b32fab792ce667fe74ac969268b3feaeb8abf0b5c12c72ee7c890c6" -> "sha256:11f90c78f9f0132869d1a84421e28b3ed8cd7727b54802a6d83ac5c0fcc31d2a" [label=""];
}

