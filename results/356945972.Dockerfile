[app/sources/356945972.Dockerfile]
digraph {
  "sha256:5baee9c00c1e46a93c1c20ad1df3db77be3c441907acdfdddd8a0e6f10029ac8" [label="docker-image://docker.io/library/tomcat:9-jre11" shape="ellipse"];
  "sha256:1875cf15ca75e67eda5f6b417203e791d87833e70595d949a83693c1f330d070" [label="/bin/sh -c echo \"deb http://httpredir.debian.org/debian stretch contrib\" >> /etc/apt/sources.list" shape="box"];
  "sha256:15d290070f1a77f104e7d6497f4f7f344833ecfede0833fd62a5298c79b0bbed" [label="/bin/sh -c set -x \t&& apt-get update \t&& apt-get install -yq ttf-mscorefonts-installer \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:89338789c69af0043f98614a9cb6a9235a05416d8ae6a380d00c84841a8942df" [label="local://context" shape="ellipse"];
  "sha256:4bc2bd0a448b1dc6799dbd6d7f5e41bfe5d14ec0279d8064f50952c0ee690353" [label="copy{src=/conf/geoserver.xml, dest=/usr/local/tomcat/conf/Catalina/localhost/geoserver.xml}" shape="note"];
  "sha256:d2725c65b05a11a5950ad57669efdd1d925d1ddbc128be1cf2052800f9865bb7" [label="/bin/sh -c mkdir ${GEOSERVER_DATA_DIR} \t&& mkdir ${GEOSERVER_INSTALL_DIR} \t&& cd ${GEOSERVER_INSTALL_DIR} \t&& wget http://sourceforge.net/projects/geoserver/files/GeoServer/${GEOSERVER_VERSION}/geoserver-${GEOSERVER_VERSION}-war.zip \t&& unzip geoserver-${GEOSERVER_VERSION}-war.zip \t&& unzip geoserver.war \t&& mv data/* ${GEOSERVER_DATA_DIR} \t&& rm -rf geoserver-${GEOSERVER_VERSION}-war.zip geoserver.war target *.txt" shape="box"];
  "sha256:05a506383cbcb02ab1c4ca60dab226f49adfda4beae5e1b6f0fbbb13e00a5823" [label="/bin/sh -c sed -i '\\:</web-app>:i<filter>\\n    <filter-name>CorsFilter</filter-name>\\n    <filter-class>org.apache.catalina.filters.CorsFilter</filter-class>\\n    <init-param>\\n        <param-name>cors.allowed.origins</param-name>\\n        <param-value>*</param-value>\\n    </init-param>\\n    <init-param>\\n        <param-name>cors.allowed.methods</param-name>\\n        <param-value>GET,POST,HEAD,OPTIONS,PUT</param-value>\\n    </init-param>\\n</filter>\\n<filter-mapping>\\n    <filter-name>CorsFilter</filter-name>\\n    <url-pattern>/*</url-pattern>\\n</filter-mapping>' ${GEOSERVER_INSTALL_DIR}/WEB-INF/web.xml" shape="box"];
  "sha256:21a442e22a8d0d15d1aa696847a46699e3ccd743456850585f35eaa1eef46f53" [label="copy{src=/start.sh, dest=/usr/local/bin/start.sh}" shape="note"];
  "sha256:1f05bd6653b8e5b6b63e1af1ebc41c19ee9942e73e75111ab48d5abe14158b38" [label="sha256:1f05bd6653b8e5b6b63e1af1ebc41c19ee9942e73e75111ab48d5abe14158b38" shape="plaintext"];
  "sha256:5baee9c00c1e46a93c1c20ad1df3db77be3c441907acdfdddd8a0e6f10029ac8" -> "sha256:1875cf15ca75e67eda5f6b417203e791d87833e70595d949a83693c1f330d070" [label=""];
  "sha256:1875cf15ca75e67eda5f6b417203e791d87833e70595d949a83693c1f330d070" -> "sha256:15d290070f1a77f104e7d6497f4f7f344833ecfede0833fd62a5298c79b0bbed" [label=""];
  "sha256:15d290070f1a77f104e7d6497f4f7f344833ecfede0833fd62a5298c79b0bbed" -> "sha256:4bc2bd0a448b1dc6799dbd6d7f5e41bfe5d14ec0279d8064f50952c0ee690353" [label=""];
  "sha256:89338789c69af0043f98614a9cb6a9235a05416d8ae6a380d00c84841a8942df" -> "sha256:4bc2bd0a448b1dc6799dbd6d7f5e41bfe5d14ec0279d8064f50952c0ee690353" [label=""];
  "sha256:4bc2bd0a448b1dc6799dbd6d7f5e41bfe5d14ec0279d8064f50952c0ee690353" -> "sha256:d2725c65b05a11a5950ad57669efdd1d925d1ddbc128be1cf2052800f9865bb7" [label=""];
  "sha256:d2725c65b05a11a5950ad57669efdd1d925d1ddbc128be1cf2052800f9865bb7" -> "sha256:05a506383cbcb02ab1c4ca60dab226f49adfda4beae5e1b6f0fbbb13e00a5823" [label=""];
  "sha256:05a506383cbcb02ab1c4ca60dab226f49adfda4beae5e1b6f0fbbb13e00a5823" -> "sha256:21a442e22a8d0d15d1aa696847a46699e3ccd743456850585f35eaa1eef46f53" [label=""];
  "sha256:89338789c69af0043f98614a9cb6a9235a05416d8ae6a380d00c84841a8942df" -> "sha256:21a442e22a8d0d15d1aa696847a46699e3ccd743456850585f35eaa1eef46f53" [label=""];
  "sha256:21a442e22a8d0d15d1aa696847a46699e3ccd743456850585f35eaa1eef46f53" -> "sha256:1f05bd6653b8e5b6b63e1af1ebc41c19ee9942e73e75111ab48d5abe14158b38" [label=""];
}

