[app/sources/366522656.Dockerfile]
digraph {
  "sha256:67bb61603c0ddfeb685793773fdeaf230993dd90278a6f7adf3ff8bd92f6a297" [label="docker-image://docker.io/library/openjdk:8u151-jre-alpine" shape="ellipse"];
  "sha256:fc79d0aceb8aa6412ba703a2405de6189d2aec2635c524d9a09c577a75ae944c" [label="local://context" shape="ellipse"];
  "sha256:007ef21f0cd0675d1fd5959b574c41b1b854d3e5da60652b1a73e87e2f4ce0ce" [label="copy{src=/KEY, dest=/}" shape="note"];
  "sha256:86939e5f54d8475fbf7c3d158c9435c5c8d6761bce7eb26729220fb99a8138cc" [label="/bin/sh -c set -x     && apk add --no-cache --virtual build-dependencies gnupg unzip libressl wget     && gpg --import KEY     && mkdir -p $HAWKBIT_HOME     && cd $HAWKBIT_HOME     && wget -O hawkbit-update-server.jar --no-verbose https://repo1.maven.org/maven2/org/eclipse/hawkbit/hawkbit-update-server/$HAWKBIT_VERSION/hawkbit-update-server-$HAWKBIT_VERSION.jar     && wget -O hawkbit-update-server.jar.asc --no-verbose https://repo1.maven.org/maven2/org/eclipse/hawkbit/hawkbit-update-server/$HAWKBIT_VERSION/hawkbit-update-server-$HAWKBIT_VERSION.jar.asc     && gpg --batch --verify hawkbit-update-server.jar.asc hawkbit-update-server.jar     && apk del build-dependencies" shape="box"];
  "sha256:5fa19ca1c25f9722ab44477fe8f446a1abb4cbfa6108235bd1e19eeeba71dc1f" [label="mkdir{path=/opt/hawkbit}" shape="note"];
  "sha256:13faa2b56f0c9f9710bd54440d0789dca336d252b364db71c40c64b8199538f4" [label="sha256:13faa2b56f0c9f9710bd54440d0789dca336d252b364db71c40c64b8199538f4" shape="plaintext"];
  "sha256:67bb61603c0ddfeb685793773fdeaf230993dd90278a6f7adf3ff8bd92f6a297" -> "sha256:007ef21f0cd0675d1fd5959b574c41b1b854d3e5da60652b1a73e87e2f4ce0ce" [label=""];
  "sha256:fc79d0aceb8aa6412ba703a2405de6189d2aec2635c524d9a09c577a75ae944c" -> "sha256:007ef21f0cd0675d1fd5959b574c41b1b854d3e5da60652b1a73e87e2f4ce0ce" [label=""];
  "sha256:007ef21f0cd0675d1fd5959b574c41b1b854d3e5da60652b1a73e87e2f4ce0ce" -> "sha256:86939e5f54d8475fbf7c3d158c9435c5c8d6761bce7eb26729220fb99a8138cc" [label=""];
  "sha256:86939e5f54d8475fbf7c3d158c9435c5c8d6761bce7eb26729220fb99a8138cc" -> "sha256:5fa19ca1c25f9722ab44477fe8f446a1abb4cbfa6108235bd1e19eeeba71dc1f" [label=""];
  "sha256:5fa19ca1c25f9722ab44477fe8f446a1abb4cbfa6108235bd1e19eeeba71dc1f" -> "sha256:13faa2b56f0c9f9710bd54440d0789dca336d252b364db71c40c64b8199538f4" [label=""];
}

