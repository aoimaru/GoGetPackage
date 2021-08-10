[app/sources/330803705.Dockerfile]
digraph {
  "sha256:25867cb136b87172eb169edccc68632733d4875fed08f91bb775bfef41318341" [label="local://context" shape="ellipse"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:9c9b89ea16cdfbe7b2a6c8a8d06dfd9a811e9b31e9f01db63e3f14d92e771723" [label="/bin/sh -c addgroup -S ${ASTRONOMER_GROUP} \t&& adduser -S -G ${ASTRONOMER_GROUP} ${ASTRONOMER_USER}" shape="box"];
  "sha256:6ef8175219f0629ed0f508ac4ac5d07f9f8dbf95aae3fa4d77d5ccb9356b4ea0" [label="/bin/sh -c apk update \t&& apk add --no-cache --virtual .build-deps \t\tbuild-base \t\tcyrus-sasl-dev \t\tfreetds-dev \t\tfreetype-dev \t\tgit \t\tkrb5-dev \t\tlibffi-dev \t\tlibxml2-dev \t\tlibxslt-dev \t\tlinux-headers \t\tmariadb-dev \t\tnodejs \t\tnodejs-npm \t\tpostgresql-dev \t\tpython3-dev \t\ttzdata \t&& apk add --no-cache \t\tbash \t\tca-certificates \t\tcyrus-sasl \t\tkrb5-libs \t\tmariadb-connector-c \t\tpostgresql \t\tpython3 \t\ttini \t&& update-ca-certificates \t&& cp /usr/share/zoneinfo/UTC /etc/localtime \t&& pip3 install --no-cache-dir --upgrade pip==19.1.1 \t&& pip3 install --no-cache-dir --upgrade setuptools==39.0.1 \t&& pip3 install --no-cache-dir cython \t&& pip3 install --no-cache-dir numpy \t&& pip3 install --no-cache-dir \"${AIRFLOW_MODULE}\" \t&& pip3 install --no-cache-dir \"https://github.com/astronomer/astronomer-fab-securitymanager/releases/download/v1.0.2/astronomer_fab_security_manager-1.0.2-py3-none-any.whl\" \t&& cd /usr/lib/python3.6/site-packages/airflow/www_rbac \t&& npm install \t&& npm run build \t&& rm -rf node_modules \t&& apk del .build-deps \t&& ln -sf /usr/bin/python3 /usr/bin/python \t&& ln -sf /usr/bin/pip3 /usr/bin/pip" shape="box"];
  "sha256:8c29003224140cb540e15b8b8bf11bc5923973e356b3802e897dc21e439b4560" [label="/bin/sh -c mkdir -p ${AIRFLOW_HOME}/logs" shape="box"];
  "sha256:629bc53ffbcbc8c156bd661acb9dbf23927b015caf85be49a53f30961cf52985" [label="copy{src=/include/entrypoint, dest=/}" shape="note"];
  "sha256:340b6ea952ffa0bf870c78ce4a82dab8b04a220bfc9ec7c42f2c3b0cef1b82ea" [label="copy{src=/include/clean-airflow-logs, dest=/etc/periodic/15min/clean-airflow-logs}" shape="note"];
  "sha256:02dd9cd0aade4d1b49be3676a2335fab01298906f339f91a3817dc872f2f9a54" [label="/bin/sh -c chown -R ${ASTRONOMER_USER}:${ASTRONOMER_GROUP} ${AIRFLOW_HOME}" shape="box"];
  "sha256:14f5b27b7f0f935221dac5878029ec6bbe1e7ab1a9a3380c9b6ec76c4575d5f7" [label="mkdir{path=/usr/local/airflow}" shape="note"];
  "sha256:ea923665684c64067b7944c3129dc055a89042134e625ff28d7fc6a4da25b98b" [label="sha256:ea923665684c64067b7944c3129dc055a89042134e625ff28d7fc6a4da25b98b" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:9c9b89ea16cdfbe7b2a6c8a8d06dfd9a811e9b31e9f01db63e3f14d92e771723" [label=""];
  "sha256:9c9b89ea16cdfbe7b2a6c8a8d06dfd9a811e9b31e9f01db63e3f14d92e771723" -> "sha256:6ef8175219f0629ed0f508ac4ac5d07f9f8dbf95aae3fa4d77d5ccb9356b4ea0" [label=""];
  "sha256:6ef8175219f0629ed0f508ac4ac5d07f9f8dbf95aae3fa4d77d5ccb9356b4ea0" -> "sha256:8c29003224140cb540e15b8b8bf11bc5923973e356b3802e897dc21e439b4560" [label=""];
  "sha256:8c29003224140cb540e15b8b8bf11bc5923973e356b3802e897dc21e439b4560" -> "sha256:629bc53ffbcbc8c156bd661acb9dbf23927b015caf85be49a53f30961cf52985" [label=""];
  "sha256:25867cb136b87172eb169edccc68632733d4875fed08f91bb775bfef41318341" -> "sha256:629bc53ffbcbc8c156bd661acb9dbf23927b015caf85be49a53f30961cf52985" [label=""];
  "sha256:629bc53ffbcbc8c156bd661acb9dbf23927b015caf85be49a53f30961cf52985" -> "sha256:340b6ea952ffa0bf870c78ce4a82dab8b04a220bfc9ec7c42f2c3b0cef1b82ea" [label=""];
  "sha256:25867cb136b87172eb169edccc68632733d4875fed08f91bb775bfef41318341" -> "sha256:340b6ea952ffa0bf870c78ce4a82dab8b04a220bfc9ec7c42f2c3b0cef1b82ea" [label=""];
  "sha256:340b6ea952ffa0bf870c78ce4a82dab8b04a220bfc9ec7c42f2c3b0cef1b82ea" -> "sha256:02dd9cd0aade4d1b49be3676a2335fab01298906f339f91a3817dc872f2f9a54" [label=""];
  "sha256:02dd9cd0aade4d1b49be3676a2335fab01298906f339f91a3817dc872f2f9a54" -> "sha256:14f5b27b7f0f935221dac5878029ec6bbe1e7ab1a9a3380c9b6ec76c4575d5f7" [label=""];
  "sha256:14f5b27b7f0f935221dac5878029ec6bbe1e7ab1a9a3380c9b6ec76c4575d5f7" -> "sha256:ea923665684c64067b7944c3129dc055a89042134e625ff28d7fc6a4da25b98b" [label=""];
}

