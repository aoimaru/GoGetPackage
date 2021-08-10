[app/sources/348206748.Dockerfile]
digraph {
  "sha256:6ce2fa7f24364740e1d0078d76384cdf41b5e2f74527bfc435735215f81ef79a" [label="docker-image://docker.io/library/node:8-wheezy" shape="ellipse"];
  "sha256:882884443e55ee639f91341c0374ac797615e8c3220e14d967442a28b4c785e0" [label="/bin/sh -c apt-get update  && apt-get install -y libaio1  && apt-get install -y build-essential  && apt-get install -y unzip  && apt-get install -y curl" shape="box"];
  "sha256:fd6a37700c040220b63892ee64d632a5f05a4039226e552a579a9962bba82674" [label="/bin/sh -c mkdir -p opt/oracle" shape="box"];
  "sha256:2b16595538ee4792fb27f0dffa76055ba1011960e4387908d9047ce1519f1725" [label="local://context" shape="ellipse"];
  "sha256:99a71dd7f5ad1fcb4e26cd0dc0a88507cd16c977063f3c611fe396aa109dad35" [label="copy{src=/oracle/linux, dest=/}" shape="note"];
  "sha256:6f43668be79694ac16b0305f96b653c97a813d0f4c6c47b5aadc94fbf755014a" [label="/bin/sh -c unzip instantclient-basic-linux.x64-12.2.0.1.0.zip -d /opt/oracle  && unzip instantclient-sdk-linux.x64-12.2.0.1.0.zip -d /opt/oracle   && mv /opt/oracle/instantclient_12_2 /opt/oracle/instantclient  && ln -s /opt/oracle/instantclient/libclntsh.so.12.2 /opt/oracle/instantclient/libclntsh.so  && ln -s /opt/oracle/instantclient/libocci.so.12.2 /opt/oracle/instantclient/libocci.so" shape="box"];
  "sha256:286c25d2b1bcd03f1a2deec67792a7b751059f1de6e59ddeacd097c93e64c1d8" [label="/bin/sh -c echo '/opt/oracle/instantclient/' | tee -a /etc/ld.so.conf.d/oracle_instant_client.conf && ldconfig" shape="box"];
  "sha256:f033f5b603beac8343dd3741f019a6287210476016f3ad3756f11cae7c9b5f64" [label="sha256:f033f5b603beac8343dd3741f019a6287210476016f3ad3756f11cae7c9b5f64" shape="plaintext"];
  "sha256:6ce2fa7f24364740e1d0078d76384cdf41b5e2f74527bfc435735215f81ef79a" -> "sha256:882884443e55ee639f91341c0374ac797615e8c3220e14d967442a28b4c785e0" [label=""];
  "sha256:882884443e55ee639f91341c0374ac797615e8c3220e14d967442a28b4c785e0" -> "sha256:fd6a37700c040220b63892ee64d632a5f05a4039226e552a579a9962bba82674" [label=""];
  "sha256:fd6a37700c040220b63892ee64d632a5f05a4039226e552a579a9962bba82674" -> "sha256:99a71dd7f5ad1fcb4e26cd0dc0a88507cd16c977063f3c611fe396aa109dad35" [label=""];
  "sha256:2b16595538ee4792fb27f0dffa76055ba1011960e4387908d9047ce1519f1725" -> "sha256:99a71dd7f5ad1fcb4e26cd0dc0a88507cd16c977063f3c611fe396aa109dad35" [label=""];
  "sha256:99a71dd7f5ad1fcb4e26cd0dc0a88507cd16c977063f3c611fe396aa109dad35" -> "sha256:6f43668be79694ac16b0305f96b653c97a813d0f4c6c47b5aadc94fbf755014a" [label=""];
  "sha256:6f43668be79694ac16b0305f96b653c97a813d0f4c6c47b5aadc94fbf755014a" -> "sha256:286c25d2b1bcd03f1a2deec67792a7b751059f1de6e59ddeacd097c93e64c1d8" [label=""];
  "sha256:286c25d2b1bcd03f1a2deec67792a7b751059f1de6e59ddeacd097c93e64c1d8" -> "sha256:f033f5b603beac8343dd3741f019a6287210476016f3ad3756f11cae7c9b5f64" [label=""];
}

