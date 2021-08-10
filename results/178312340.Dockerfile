[app/sources/178312340.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:b3d1061b00f1d5d15d6cbd5526426465b39268d6cc5a02f8649f00df1cc4d475" [label="/bin/sh -c yum -y update     && yum -y install wget tar unzip which" shape="box"];
  "sha256:70f46bbb19e7417d6a1ad7cb190833a0a3a20c7815525cf9675c7b28beaf6f7b" [label="/bin/sh -c set -x;     java_version=8u60;     wget --no-check-certificate --no-cookies --header \"Cookie: oraclelicense=accept-securebackup-cookie\"     http://download.oracle.com/otn-pub/java/jdk/$java_version-b27/jre-$java_version-linux-x64.tar.gz     && echo \"49dadecd043152b3b448288a35a4ee6f3845ce6395734bacc1eae340dff3cbf5  jre-$java_version-linux-x64.tar.gz\" | sha256sum -c -     && tar -zxvf jre-$java_version-linux-x64.tar.gz -C /opt     && rm jre-$java_version-linux-x64.tar.gz" shape="box"];
  "sha256:d570c719d7f5c9039165325831244247b888038d46d7cca2945b88f09a98cfbe" [label="/bin/sh -c set -x;     jetty_version=9.3.3.v20150827;     wget -O jetty.zip \"https://eclipse.org/downloads/download.php?file=/jetty/$jetty_version/dist/jetty-distribution-$jetty_version.zip&r=1\"     && echo \"2972a728bdfba8b1f32d2b4a109abcd7f0c00263  jetty.zip\" | sha1sum -c -     && unzip jetty.zip -d /opt     && mv /opt/jetty-distribution-$jetty_version /opt/jetty     && rm jetty.zip     && cp /opt/jetty/bin/jetty.sh /etc/init.d/jetty     && mkdir -p /opt/iam-jetty-base/modules     && mkdir -p /opt/iam-jetty-base/lib/ext     && mkdir -p /opt/iam-jetty-base/resources     && cd /opt/iam-jetty-base     && touch start.ini     && $JRE_HOME/bin/java -jar ../jetty/start.jar --add-to-startd=http,https,deploy,ext,annotations,jstl,logging,setuid     && sed -i 's/# jetty.http.port=8080/jetty.http.port=80/g' /opt/iam-jetty-base/start.d/http.ini     && sed -i 's/# jetty.ssl.port=8443/jetty.ssl.port=443/g' /opt/iam-jetty-base/start.d/ssl.ini     && sed -i 's/<New id=\"DefaultHandler\" class=\"org.eclipse.jetty.server.handler.DefaultHandler\"\\/>/<New id=\"DefaultHandler\" class=\"org.eclipse.jetty.server.handler.DefaultHandler\"><Set name=\"showContexts\">false<\\/Set><\\/New>/g' /opt/jetty/etc/jetty.xml" shape="box"];
  "sha256:efb2ed4fa55f9019071a5cc5a681b2b62bbb3b3a5b702e10e4201fbc814a5454" [label="/bin/sh -c set -x;     wget https://repo1.maven.org/maven2/org/mortbay/jetty/libsetuid/8.1.9.v20130131/libsetuid-8.1.9.v20130131.so     && echo \"7286c7cb836126a403eb1c2c792bde9ce6018226  libsetuid-8.1.9.v20130131.so\" | sha1sum -c -     && mv libsetuid-8.1.9.v20130131.so /opt/iam-jetty-base/lib/ext/" shape="box"];
  "sha256:1918105533a790cb56c61aefc3a1ef5f6f6918f83f8359fa8b3707420d837039" [label="/bin/sh -c set -x;     shibidp_version=3.1.2;     wget https://shibboleth.net/downloads/identity-provider/$shibidp_version/shibboleth-identity-provider-$shibidp_version.zip     && echo \"0c6747b28b1f76eb6fd1a1f2b9fce99c70e70be2e9ef0099f84a006673123027  shibboleth-identity-provider-$shibidp_version.zip\" | sha256sum -c -     && unzip shibboleth-identity-provider-$shibidp_version.zip -d /opt     && cd /opt/shibboleth-identity-provider-$shibidp_version/     && bin/install.sh -Didp.keystore.password=CHANGEME -Didp.sealer.password=CHANGEME -Didp.host.name=localhost.localdomain     && cd /     && chmod -R +r /opt/shibboleth-idp/     && sed -i 's/ password/CHANGEME/g' /opt/shibboleth-idp/conf/idp.properties     && rm -r /shibboleth-identity-provider-$shibidp_version.zip /opt/shibboleth-identity-provider-$shibidp_version/" shape="box"];
  "sha256:d85c9fd68e70b132178cff181124d656cd18e8c1a49130ab60ab80c77f1acbb7" [label="/bin/sh -c set -x;     wget https://build.shibboleth.net/nexus/content/repositories/releases/net/shibboleth/utilities/jetty9/jetty9-dta-ssl/1.0.0/jetty9-dta-ssl-1.0.0.jar     && echo \"2f547074b06952b94c35631398f36746820a7697  jetty9-dta-ssl-1.0.0.jar\" | sha1sum -c -     && mv jetty9-dta-ssl-1.0.0.jar /opt/iam-jetty-base/lib/ext/" shape="box"];
  "sha256:9411dc66119f385304e4219a792efdc774ad3d91709b50f5c9feb2559db0e3af" [label="local://context" shape="ellipse"];
  "sha256:38d5d89b564e9373885995b6b38652f437d2610f5af06c2bce6bf35e265166c5" [label="copy{src=/iam-jetty-base, dest=/opt/iam-jetty-base/}" shape="note"];
  "sha256:63a5ce5f3911e3ad3f62e421c6c6c71f3ca4f6012fef541db7e4a68db5b4d47f" [label="/bin/sh -c yum -y remove wget tar unzip; yum clean all" shape="box"];
  "sha256:219627345071265f320f1823e3e32829bd4a124b6066db5999048ad20ea5813e" [label="/bin/sh -c useradd jetty -U -s /bin/false     && chown -R jetty:root /opt/jetty     && chown -R jetty:root /opt/iam-jetty-base     && chown -R jetty:root /opt/shibboleth-idp/logs" shape="box"];
  "sha256:59579e39d9ab8af5a0f997a4a46a7670b9c5816a8fa6695464fbeaee180beb6a" [label="copy{src=/container-scripts, dest=/opt/container-scripts/}" shape="note"];
  "sha256:59ccaf2f08f8f1bf94e964263067410ace9fce7ed1bd937b5af802c302a0f887" [label="/bin/sh -c chmod -R +x /opt/container-scripts/" shape="box"];
  "sha256:58eaabd9918e87c2a97b68fda70175d4b50bdcb12a658ce6acd9f155b921f9b7" [label="sha256:58eaabd9918e87c2a97b68fda70175d4b50bdcb12a658ce6acd9f155b921f9b7" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:b3d1061b00f1d5d15d6cbd5526426465b39268d6cc5a02f8649f00df1cc4d475" [label=""];
  "sha256:b3d1061b00f1d5d15d6cbd5526426465b39268d6cc5a02f8649f00df1cc4d475" -> "sha256:70f46bbb19e7417d6a1ad7cb190833a0a3a20c7815525cf9675c7b28beaf6f7b" [label=""];
  "sha256:70f46bbb19e7417d6a1ad7cb190833a0a3a20c7815525cf9675c7b28beaf6f7b" -> "sha256:d570c719d7f5c9039165325831244247b888038d46d7cca2945b88f09a98cfbe" [label=""];
  "sha256:d570c719d7f5c9039165325831244247b888038d46d7cca2945b88f09a98cfbe" -> "sha256:efb2ed4fa55f9019071a5cc5a681b2b62bbb3b3a5b702e10e4201fbc814a5454" [label=""];
  "sha256:efb2ed4fa55f9019071a5cc5a681b2b62bbb3b3a5b702e10e4201fbc814a5454" -> "sha256:1918105533a790cb56c61aefc3a1ef5f6f6918f83f8359fa8b3707420d837039" [label=""];
  "sha256:1918105533a790cb56c61aefc3a1ef5f6f6918f83f8359fa8b3707420d837039" -> "sha256:d85c9fd68e70b132178cff181124d656cd18e8c1a49130ab60ab80c77f1acbb7" [label=""];
  "sha256:d85c9fd68e70b132178cff181124d656cd18e8c1a49130ab60ab80c77f1acbb7" -> "sha256:38d5d89b564e9373885995b6b38652f437d2610f5af06c2bce6bf35e265166c5" [label=""];
  "sha256:9411dc66119f385304e4219a792efdc774ad3d91709b50f5c9feb2559db0e3af" -> "sha256:38d5d89b564e9373885995b6b38652f437d2610f5af06c2bce6bf35e265166c5" [label=""];
  "sha256:38d5d89b564e9373885995b6b38652f437d2610f5af06c2bce6bf35e265166c5" -> "sha256:63a5ce5f3911e3ad3f62e421c6c6c71f3ca4f6012fef541db7e4a68db5b4d47f" [label=""];
  "sha256:63a5ce5f3911e3ad3f62e421c6c6c71f3ca4f6012fef541db7e4a68db5b4d47f" -> "sha256:219627345071265f320f1823e3e32829bd4a124b6066db5999048ad20ea5813e" [label=""];
  "sha256:219627345071265f320f1823e3e32829bd4a124b6066db5999048ad20ea5813e" -> "sha256:59579e39d9ab8af5a0f997a4a46a7670b9c5816a8fa6695464fbeaee180beb6a" [label=""];
  "sha256:9411dc66119f385304e4219a792efdc774ad3d91709b50f5c9feb2559db0e3af" -> "sha256:59579e39d9ab8af5a0f997a4a46a7670b9c5816a8fa6695464fbeaee180beb6a" [label=""];
  "sha256:59579e39d9ab8af5a0f997a4a46a7670b9c5816a8fa6695464fbeaee180beb6a" -> "sha256:59ccaf2f08f8f1bf94e964263067410ace9fce7ed1bd937b5af802c302a0f887" [label=""];
  "sha256:59ccaf2f08f8f1bf94e964263067410ace9fce7ed1bd937b5af802c302a0f887" -> "sha256:58eaabd9918e87c2a97b68fda70175d4b50bdcb12a658ce6acd9f155b921f9b7" [label=""];
}

