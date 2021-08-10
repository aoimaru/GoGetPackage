[app/sources/427199953.Dockerfile]
digraph {
  "sha256:a20f3f2ee241a760fe324364d8a60a2671271667b93ea89843a3fac85c434a42" [label="docker-image://docker.io/library/perl:5.28-slim@sha256:dd02b3372dec9a3d02d1d17a4b93076c3d4280a58fbb779113a7df75d04b561b" shape="ellipse"];
  "sha256:c1c298e831ef2bef95a74f2d2c8d61cf5232d341dea8216b1cf69d256c14927f" [label="/bin/sh -c set -eux; \tapt-get update; \tapt-get install -y --no-install-recommends \t\tca-certificates \t\twget \t; \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3ef5682e169a48e2d84cbffd8c15721034b07ec81abbe3d93e29fef3dd9ef424" [label="/bin/sh -c cpanm App::cpanminus" shape="box"];
  "sha256:daa024764acfa0e621bc508d25ea5532c4839b850dab208402474955d7cfa7b1" [label="/bin/sh -c set -eux; \tsavedAptMark=\"$(apt-mark showmanual)\"; \tapt-get update; \tapt-get install -y --no-install-recommends \t\tgcc \t\tlibc-dev \t\tlibssl-dev \t\tzlib1g-dev \t; \trm -rf /var/lib/apt/lists/*; \tcpanm \t\tEV \t\tIO::Socket::IP \t\tIO::Socket::Socks \t\tNet::DNS::Native \t; \tcpanm --notest IO::Socket::SSL; \tapt-mark auto '.*' > /dev/null; \tapt-mark manual $savedAptMark > /dev/null; \tapt-get purge -y --auto-remove" shape="box"];
  "sha256:b2e1b881aa3c98f32d08df740476a7e191340c432c2da31ab714409b25f0f033" [label="/bin/sh -c cpanm Mojolicious@8.15" shape="box"];
  "sha256:5d93b7f0ea3dd0f10d0b66159da216c84080bfc844d5573aa2c0262d1cc25079" [label="local://context" shape="ellipse"];
  "sha256:f1dc2090e36d79fa988135541cc3c6a4f8bbdfeffb5d099a8448cd658410df38" [label="copy{src=/put-multiarch.pl, dest=/usr/local/bin/}" shape="note"];
  "sha256:429496ebb0bdff03cf1f5ce693076579934f38f8b6ed6a391fcdb123f0129a60" [label="sha256:429496ebb0bdff03cf1f5ce693076579934f38f8b6ed6a391fcdb123f0129a60" shape="plaintext"];
  "sha256:a20f3f2ee241a760fe324364d8a60a2671271667b93ea89843a3fac85c434a42" -> "sha256:c1c298e831ef2bef95a74f2d2c8d61cf5232d341dea8216b1cf69d256c14927f" [label=""];
  "sha256:c1c298e831ef2bef95a74f2d2c8d61cf5232d341dea8216b1cf69d256c14927f" -> "sha256:3ef5682e169a48e2d84cbffd8c15721034b07ec81abbe3d93e29fef3dd9ef424" [label=""];
  "sha256:3ef5682e169a48e2d84cbffd8c15721034b07ec81abbe3d93e29fef3dd9ef424" -> "sha256:daa024764acfa0e621bc508d25ea5532c4839b850dab208402474955d7cfa7b1" [label=""];
  "sha256:daa024764acfa0e621bc508d25ea5532c4839b850dab208402474955d7cfa7b1" -> "sha256:b2e1b881aa3c98f32d08df740476a7e191340c432c2da31ab714409b25f0f033" [label=""];
  "sha256:b2e1b881aa3c98f32d08df740476a7e191340c432c2da31ab714409b25f0f033" -> "sha256:f1dc2090e36d79fa988135541cc3c6a4f8bbdfeffb5d099a8448cd658410df38" [label=""];
  "sha256:5d93b7f0ea3dd0f10d0b66159da216c84080bfc844d5573aa2c0262d1cc25079" -> "sha256:f1dc2090e36d79fa988135541cc3c6a4f8bbdfeffb5d099a8448cd658410df38" [label=""];
  "sha256:f1dc2090e36d79fa988135541cc3c6a4f8bbdfeffb5d099a8448cd658410df38" -> "sha256:429496ebb0bdff03cf1f5ce693076579934f38f8b6ed6a391fcdb123f0129a60" [label=""];
}

