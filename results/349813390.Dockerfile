[app/sources/349813390.Dockerfile]
digraph {
  "sha256:38b282b1b99e2bbaca3ed7e090ef32f913a10f8d2699989d8f67f404d6f4991f" [label="docker-image://docker.io/cloudunit/base-jessie:latest" shape="ellipse"];
  "sha256:76748670b3efbd6cab0fb44bd6eac69e1d88aeee20fdc6ec1ec5020a19e5057a" [label="/bin/sh -c groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres" shape="box"];
  "sha256:5a0e4e533563612c18e369df731508763ac0e496e03f0d78fafea423c8974794" [label="local://context" shape="ellipse"];
  "sha256:f8d8d47b5fa781350c8783fc3bb2059202c611b88e2ae7cf8afb36cfe3aa4246" [label="copy{src=/scripts, dest=/opt/cloudunit/scripts}" shape="note"];
  "sha256:f57a996b7db39181b216153a0d2c8cf6c7173c6e71f782606d626dc5cd34682c" [label="/bin/sh -c chmod +x /opt/cloudunit/scripts/*" shape="box"];
  "sha256:1d84429db30f65ad8ccd0b707cfd31c2fdc6e45f270c6b6eb12dec93499f9712" [label="/bin/sh -c set -x \t&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\" \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \t&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \t&& rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& gosu nobody true \t&& apt-get purge -y --auto-remove ca-certificates wget" shape="box"];
  "sha256:8e1bb8236665d7abe6709971ab1b41039be4782154b30763aa54278126cdf61f" [label="/bin/sh -c apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \t&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8" shape="box"];
  "sha256:8cd908ed8a0aebe13f41d7b70e765591e6e1f96712b7a96289c7c1b43bce449d" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:2c74aa137f5686a19cf1d9fd48c940c9c235d518711acf68b0bfccd8af0ec6e9" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8" shape="box"];
  "sha256:c0625ebdf881f71d980829c5111360078596d0a0f95c5362bf09509a3474bb4c" [label="/bin/sh -c echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:14610e61f55d21edecba20514c734e798b2fcb6b45b126317c55d04bf4c93873" [label="/bin/sh -c apt-get update \t&& apt-get install -y postgresql-common \t&& sed -ri 's/#(create_main_cluster) .*$/\\1 = false/' /etc/postgresql-common/createcluster.conf \t&& apt-get install -y \t\tpostgresql-$PG_MAJOR \t\tpostgresql-contrib-$PG_MAJOR \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:57f7da33ee6f832be8c29c64c00a8d2afcb0a62721a3c31ab99733fe545c275f" [label="/bin/sh -c mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ \t&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ \t&& sed -ri \"s!^#?(listen_addresses)\\s*=\\s*\\S+.*!\\1 = '*'!\" /usr/share/postgresql/postgresql.conf.sample" shape="box"];
  "sha256:007d39a9df286b513a6868c7da7c13f202b40693642c8aa97959c1ce98730bce" [label="/bin/sh -c mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql" shape="box"];
  "sha256:e375a46616c287b12aab4eb699d98ab43c2ca6e52f4d11f45c9c79f554dd4736" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:113c24b32f82dc3b6c7303036e95ff5ae5ae3e9949be5eebd559e50866711b28" [label="sha256:113c24b32f82dc3b6c7303036e95ff5ae5ae3e9949be5eebd559e50866711b28" shape="plaintext"];
  "sha256:38b282b1b99e2bbaca3ed7e090ef32f913a10f8d2699989d8f67f404d6f4991f" -> "sha256:76748670b3efbd6cab0fb44bd6eac69e1d88aeee20fdc6ec1ec5020a19e5057a" [label=""];
  "sha256:76748670b3efbd6cab0fb44bd6eac69e1d88aeee20fdc6ec1ec5020a19e5057a" -> "sha256:f8d8d47b5fa781350c8783fc3bb2059202c611b88e2ae7cf8afb36cfe3aa4246" [label=""];
  "sha256:5a0e4e533563612c18e369df731508763ac0e496e03f0d78fafea423c8974794" -> "sha256:f8d8d47b5fa781350c8783fc3bb2059202c611b88e2ae7cf8afb36cfe3aa4246" [label=""];
  "sha256:f8d8d47b5fa781350c8783fc3bb2059202c611b88e2ae7cf8afb36cfe3aa4246" -> "sha256:f57a996b7db39181b216153a0d2c8cf6c7173c6e71f782606d626dc5cd34682c" [label=""];
  "sha256:f57a996b7db39181b216153a0d2c8cf6c7173c6e71f782606d626dc5cd34682c" -> "sha256:1d84429db30f65ad8ccd0b707cfd31c2fdc6e45f270c6b6eb12dec93499f9712" [label=""];
  "sha256:1d84429db30f65ad8ccd0b707cfd31c2fdc6e45f270c6b6eb12dec93499f9712" -> "sha256:8e1bb8236665d7abe6709971ab1b41039be4782154b30763aa54278126cdf61f" [label=""];
  "sha256:8e1bb8236665d7abe6709971ab1b41039be4782154b30763aa54278126cdf61f" -> "sha256:8cd908ed8a0aebe13f41d7b70e765591e6e1f96712b7a96289c7c1b43bce449d" [label=""];
  "sha256:8cd908ed8a0aebe13f41d7b70e765591e6e1f96712b7a96289c7c1b43bce449d" -> "sha256:2c74aa137f5686a19cf1d9fd48c940c9c235d518711acf68b0bfccd8af0ec6e9" [label=""];
  "sha256:2c74aa137f5686a19cf1d9fd48c940c9c235d518711acf68b0bfccd8af0ec6e9" -> "sha256:c0625ebdf881f71d980829c5111360078596d0a0f95c5362bf09509a3474bb4c" [label=""];
  "sha256:c0625ebdf881f71d980829c5111360078596d0a0f95c5362bf09509a3474bb4c" -> "sha256:14610e61f55d21edecba20514c734e798b2fcb6b45b126317c55d04bf4c93873" [label=""];
  "sha256:14610e61f55d21edecba20514c734e798b2fcb6b45b126317c55d04bf4c93873" -> "sha256:57f7da33ee6f832be8c29c64c00a8d2afcb0a62721a3c31ab99733fe545c275f" [label=""];
  "sha256:57f7da33ee6f832be8c29c64c00a8d2afcb0a62721a3c31ab99733fe545c275f" -> "sha256:007d39a9df286b513a6868c7da7c13f202b40693642c8aa97959c1ce98730bce" [label=""];
  "sha256:007d39a9df286b513a6868c7da7c13f202b40693642c8aa97959c1ce98730bce" -> "sha256:e375a46616c287b12aab4eb699d98ab43c2ca6e52f4d11f45c9c79f554dd4736" [label=""];
  "sha256:5a0e4e533563612c18e369df731508763ac0e496e03f0d78fafea423c8974794" -> "sha256:e375a46616c287b12aab4eb699d98ab43c2ca6e52f4d11f45c9c79f554dd4736" [label=""];
  "sha256:e375a46616c287b12aab4eb699d98ab43c2ca6e52f4d11f45c9c79f554dd4736" -> "sha256:113c24b32f82dc3b6c7303036e95ff5ae5ae3e9949be5eebd559e50866711b28" [label=""];
}

