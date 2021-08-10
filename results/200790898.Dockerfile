[app/sources/200790898.Dockerfile]
digraph {
  "sha256:d3eba57e57c8fb00496a5b7cb1a2fc599b23490d6f8c30182be3a8c90dd2113a" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:latest" shape="ellipse"];
  "sha256:efcfbbd8f565dd06a0730719093937485dc348086c0e0e3fd7d52c258f6b50b7" [label="/bin/sh -c apk add --no-cache curl bash python jq" shape="box"];
  "sha256:74456736fc562f6fd393ff8e82defceec55fe63e8da3fbaf3018823d7c27154f" [label="/bin/sh -c curl -q -sSL --retry 3 \"http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz\" | tar -xz -C /usr/local" shape="box"];
  "sha256:aebf6064ce60d38a2289e680c65aaad9ea97b94d930aeab579fe1c4818eb19fb" [label="/bin/sh -c curl -q -sSL --retry 3 \"http://www-eu.apache.org/dist/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-$SPARK_HADOOP_VERSION.tgz\" | tar -xz -C /usr/local &&     ln -s /usr/local/spark-$SPARK_VERSION-bin-$SPARK_HADOOP_VERSION $SPARK_HOME" shape="box"];
  "sha256:f083985e672747f34c83a64885ae7fbd9558d3b18c74ee7853d6d5811436b989" [label="/bin/sh -c python -m ensurepip &&     rm -r /usr/lib/python*/ensurepip &&     pip install --upgrade pip setuptools pytest py4j findspark riak timeout_decorator tzlocal &&     rm -r /root/.cache" shape="box"];
  "sha256:1ff6fd7973b6a5c0147452f342f18327f2bad91d5b9b66dbb92685d9f9314995" [label="sha256:1ff6fd7973b6a5c0147452f342f18327f2bad91d5b9b66dbb92685d9f9314995" shape="plaintext"];
  "sha256:d3eba57e57c8fb00496a5b7cb1a2fc599b23490d6f8c30182be3a8c90dd2113a" -> "sha256:efcfbbd8f565dd06a0730719093937485dc348086c0e0e3fd7d52c258f6b50b7" [label=""];
  "sha256:efcfbbd8f565dd06a0730719093937485dc348086c0e0e3fd7d52c258f6b50b7" -> "sha256:74456736fc562f6fd393ff8e82defceec55fe63e8da3fbaf3018823d7c27154f" [label=""];
  "sha256:74456736fc562f6fd393ff8e82defceec55fe63e8da3fbaf3018823d7c27154f" -> "sha256:aebf6064ce60d38a2289e680c65aaad9ea97b94d930aeab579fe1c4818eb19fb" [label=""];
  "sha256:aebf6064ce60d38a2289e680c65aaad9ea97b94d930aeab579fe1c4818eb19fb" -> "sha256:f083985e672747f34c83a64885ae7fbd9558d3b18c74ee7853d6d5811436b989" [label=""];
  "sha256:f083985e672747f34c83a64885ae7fbd9558d3b18c74ee7853d6d5811436b989" -> "sha256:1ff6fd7973b6a5c0147452f342f18327f2bad91d5b9b66dbb92685d9f9314995" [label=""];
}

