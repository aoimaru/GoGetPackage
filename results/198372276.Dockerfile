[app/sources/198372276.Dockerfile]
digraph {
  "sha256:ff74607d8107699c6571c4e0322f883b2e14d8eed2d4db22b6a8b250b16eff67" [label="docker-image://docker.io/library/tomcat:8.5@sha256:fb2af6954cb35ad01e633a30b58cc6fbd8179ca9d1255cdea34e77668eef6cf7" shape="ellipse"];
  "sha256:88108f18132cfc2c9491b1e645c7b85a9e668fa9558a83e224fc32786905578e" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive" shape="box"];
  "sha256:262ae235ae890a1d81558c85545c47dffa041ea490d0a7a37e9df5f4b95e7cd1" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl" shape="box"];
  "sha256:199688ff2fda6b9f883d9992fd24f413bbdb5454627a914267fe628e0f453d54" [label="local://context" shape="ellipse"];
  "sha256:c1dc656101586112005f287e1087b7e0ca7936ccbfddd7c052379adc3f340d8c" [label="copy{src=/71-apt-cacher-ng, dest=/etc/apt/apt.conf.d/71-apt-cacher-ng}" shape="note"];
  "sha256:60167fbd88c5aeec58f8ba72ef8d19d93d0fb9c71da32b8f84684afb41cab0c3" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:ff2f5153d355457c104cb63363557d8dff39b742e25031418b1aaa04c04a8cce" [label="/bin/sh -c mkdir -p $GEOSERVER_DATA_DIR" shape="box"];
  "sha256:d23f14dfa30fabf896428f3e40ad6b4522bc2687b96cafd9c7cf9d3a4683cfda" [label="/bin/sh -c ln -s /usr/lib/jvm/java-8-openjdk-amd64 /usr/lib/jvm/default-java" shape="box"];
  "sha256:d389f15ff71b5f5a547f63d973c23157eb5f95d32ddae94ee9cbace459b3616f" [label="copy{src=/resources, dest=/tmp/resources}" shape="note"];
  "sha256:4edf059d169a8ef24ccf2b087761eedd8303e363261eb0808ee89cfb014bd853" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:31238b257c6ce3c178102c558889e557d2f6024bd87b7db7251f135e41c0690f" [label="/bin/sh -c if [ \"$JAI_IMAGEIO\" = true ]; then     wget http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz &&     wget http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz &&     gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - &&     gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - &&     mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ &&     mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ &&     mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ &&     mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ &&     rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz &&     rm -r /tmp/jai-1_1_3 &&     rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz &&     rm -r /tmp/jai_imageio-1_1;     fi" shape="box"];
  "sha256:a8257d71c9426ff960b9b6601edafb5c6715cb3ae16e09a119dc2c5597d926d1" [label="/bin/sh -c if [ \"$GDAL_NATIVE\" = true ]; then     wget http://demo.geo-solutions.it/share/github/imageio-ext/releases/1.1.X/1.1.12/native/gdal/gdal-data.zip &&     wget http://demo.geo-solutions.it/share/github/imageio-ext/releases/1.1.X/1.1.12/native/gdal/linux/gdal192-Ubuntu12-gcc4.6.3-x86_64.tar.gz &&     unzip gdal-data.zip -d $CATALINA_HOME &&     mkdir $JAVA_HOME/jre/lib/amd64/gdal &&     tar -xvf gdal192-Ubuntu12-gcc4.6.3-x86_64.tar.gz -C $LD_LIBRARY_PATH;     fi" shape="box"];
  "sha256:1d0c2525fa02774a4b2ad0b9f334c3e8022c10cca4a36d07f5bc0476742e7c13" [label="mkdir{path=/usr/local/tomcat}" shape="note"];
  "sha256:7e805373ede6d6aa86867116dc437b56aaf3aaeeb17f5b8bc4472b9dbe2d4567" [label="/bin/sh -c if [ ! -f /tmp/resources/geoserver.zip ]; then     wget -c http://downloads.sourceforge.net/project/geoserver/GeoServer/${GS_VERSION}/geoserver-${GS_VERSION}-war.zip       -O /tmp/resources/geoserver.zip;     fi;     unzip /tmp/resources/geoserver.zip -d /tmp/geoserver     && unzip /tmp/geoserver/geoserver.war -d $CATALINA_HOME/webapps/geoserver     && rm -rf $CATALINA_HOME/webapps/geoserver/data     && rm -rf /tmp/geoserver" shape="box"];
  "sha256:926c66ec639d8a9d3b7caeee7d9d9ddee2eb7d7685b1e77a3408ab128467a2d8" [label="/bin/sh -c if ls /tmp/resources/plugins/*.zip > /dev/null 2>&1; then       for p in /tmp/resources/plugins/*.zip; do         unzip $p -d /tmp/gs_plugin         && mv /tmp/gs_plugin/*.jar $CATALINA_HOME/webapps/geoserver/WEB-INF/lib/         && rm -rf /tmp/gs_plugin;       done;     fi;" shape="box"];
  "sha256:d196aa02128a8588f21ee01d6e6e54e4e97950137f107f3f80a2b158f19d39f2" [label="/bin/sh -c if ls /tmp/resources/overlays/* > /dev/null 2>&1; then       cp -rf /tmp/resources/overlays/* /;     fi;" shape="box"];
  "sha256:a994e7e3793142e39356c583356a50734d278db3b7e8c5278a3f928af4be96bc" [label="/bin/sh -c if ls /tmp/resources/fonts/*.ttf > /dev/null 2>&1; then       cp -rf /tmp/resources/fonts/*.ttf /usr/share/fonts/truetype/; \tfi;" shape="box"];
  "sha256:0e431614836ca52c4453d4fcf14fb1eac0225b45ff18fc4e7bc3553e22967162" [label="/bin/sh -c if [ \"$DISABLE_GWC\" = true ]; then       rm $CATALINA_HOME/webapps/geoserver/WEB-INF/lib/*gwc*;     fi;" shape="box"];
  "sha256:6f3459e9fcfe7ef1cb77b28076d0ef09472850f3ac3f7d76d694fbce178f7b52" [label="/bin/sh -c if [ \"$TOMCAT_EXTRAS\" = false ]; then     rm -rf $CATALINA_HOME/webapps/ROOT &&     rm -rf $CATALINA_HOME/webapps/docs &&     rm -rf $CATALINA_HOME/webapps/examples &&     rm -rf $CATALINA_HOME/webapps/host-manager &&     rm -rf $CATALINA_HOME/webapps/manager;   fi;" shape="box"];
  "sha256:d35b944c41337f0618509cb7fa7f3f2f5ef5ad638dba8b9041b66b1cdf7ec42d" [label="/bin/sh -c rm -rf /tmp/resources" shape="box"];
  "sha256:3c254ba10e07d12b23915aa9d9affab8716a39d4b794e64417ff414c33ebb148" [label="sha256:3c254ba10e07d12b23915aa9d9affab8716a39d4b794e64417ff414c33ebb148" shape="plaintext"];
  "sha256:ff74607d8107699c6571c4e0322f883b2e14d8eed2d4db22b6a8b250b16eff67" -> "sha256:88108f18132cfc2c9491b1e645c7b85a9e668fa9558a83e224fc32786905578e" [label=""];
  "sha256:88108f18132cfc2c9491b1e645c7b85a9e668fa9558a83e224fc32786905578e" -> "sha256:262ae235ae890a1d81558c85545c47dffa041ea490d0a7a37e9df5f4b95e7cd1" [label=""];
  "sha256:262ae235ae890a1d81558c85545c47dffa041ea490d0a7a37e9df5f4b95e7cd1" -> "sha256:c1dc656101586112005f287e1087b7e0ca7936ccbfddd7c052379adc3f340d8c" [label=""];
  "sha256:199688ff2fda6b9f883d9992fd24f413bbdb5454627a914267fe628e0f453d54" -> "sha256:c1dc656101586112005f287e1087b7e0ca7936ccbfddd7c052379adc3f340d8c" [label=""];
  "sha256:c1dc656101586112005f287e1087b7e0ca7936ccbfddd7c052379adc3f340d8c" -> "sha256:60167fbd88c5aeec58f8ba72ef8d19d93d0fb9c71da32b8f84684afb41cab0c3" [label=""];
  "sha256:60167fbd88c5aeec58f8ba72ef8d19d93d0fb9c71da32b8f84684afb41cab0c3" -> "sha256:ff2f5153d355457c104cb63363557d8dff39b742e25031418b1aaa04c04a8cce" [label=""];
  "sha256:ff2f5153d355457c104cb63363557d8dff39b742e25031418b1aaa04c04a8cce" -> "sha256:d23f14dfa30fabf896428f3e40ad6b4522bc2687b96cafd9c7cf9d3a4683cfda" [label=""];
  "sha256:d23f14dfa30fabf896428f3e40ad6b4522bc2687b96cafd9c7cf9d3a4683cfda" -> "sha256:d389f15ff71b5f5a547f63d973c23157eb5f95d32ddae94ee9cbace459b3616f" [label=""];
  "sha256:199688ff2fda6b9f883d9992fd24f413bbdb5454627a914267fe628e0f453d54" -> "sha256:d389f15ff71b5f5a547f63d973c23157eb5f95d32ddae94ee9cbace459b3616f" [label=""];
  "sha256:d389f15ff71b5f5a547f63d973c23157eb5f95d32ddae94ee9cbace459b3616f" -> "sha256:4edf059d169a8ef24ccf2b087761eedd8303e363261eb0808ee89cfb014bd853" [label=""];
  "sha256:4edf059d169a8ef24ccf2b087761eedd8303e363261eb0808ee89cfb014bd853" -> "sha256:31238b257c6ce3c178102c558889e557d2f6024bd87b7db7251f135e41c0690f" [label=""];
  "sha256:31238b257c6ce3c178102c558889e557d2f6024bd87b7db7251f135e41c0690f" -> "sha256:a8257d71c9426ff960b9b6601edafb5c6715cb3ae16e09a119dc2c5597d926d1" [label=""];
  "sha256:a8257d71c9426ff960b9b6601edafb5c6715cb3ae16e09a119dc2c5597d926d1" -> "sha256:1d0c2525fa02774a4b2ad0b9f334c3e8022c10cca4a36d07f5bc0476742e7c13" [label=""];
  "sha256:1d0c2525fa02774a4b2ad0b9f334c3e8022c10cca4a36d07f5bc0476742e7c13" -> "sha256:7e805373ede6d6aa86867116dc437b56aaf3aaeeb17f5b8bc4472b9dbe2d4567" [label=""];
  "sha256:7e805373ede6d6aa86867116dc437b56aaf3aaeeb17f5b8bc4472b9dbe2d4567" -> "sha256:926c66ec639d8a9d3b7caeee7d9d9ddee2eb7d7685b1e77a3408ab128467a2d8" [label=""];
  "sha256:926c66ec639d8a9d3b7caeee7d9d9ddee2eb7d7685b1e77a3408ab128467a2d8" -> "sha256:d196aa02128a8588f21ee01d6e6e54e4e97950137f107f3f80a2b158f19d39f2" [label=""];
  "sha256:d196aa02128a8588f21ee01d6e6e54e4e97950137f107f3f80a2b158f19d39f2" -> "sha256:a994e7e3793142e39356c583356a50734d278db3b7e8c5278a3f928af4be96bc" [label=""];
  "sha256:a994e7e3793142e39356c583356a50734d278db3b7e8c5278a3f928af4be96bc" -> "sha256:0e431614836ca52c4453d4fcf14fb1eac0225b45ff18fc4e7bc3553e22967162" [label=""];
  "sha256:0e431614836ca52c4453d4fcf14fb1eac0225b45ff18fc4e7bc3553e22967162" -> "sha256:6f3459e9fcfe7ef1cb77b28076d0ef09472850f3ac3f7d76d694fbce178f7b52" [label=""];
  "sha256:6f3459e9fcfe7ef1cb77b28076d0ef09472850f3ac3f7d76d694fbce178f7b52" -> "sha256:d35b944c41337f0618509cb7fa7f3f2f5ef5ad638dba8b9041b66b1cdf7ec42d" [label=""];
  "sha256:d35b944c41337f0618509cb7fa7f3f2f5ef5ad638dba8b9041b66b1cdf7ec42d" -> "sha256:3c254ba10e07d12b23915aa9d9affab8716a39d4b794e64417ff414c33ebb148" [label=""];
}

