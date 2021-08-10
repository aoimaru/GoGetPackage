[app/sources/174783432.Dockerfile]
digraph {
  "sha256:4055c06b628c6e74f6f69018e3731409af06951b0d5fda33cb3f8856194538d4" [label="local://context" shape="ellipse"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:23fcab03c0901ac8215b65ceb85a7a72e657022331c975b2140d965fe4cd381d" [label="/bin/sh -c cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:faab426581cb1b7a29027953816431a3151f06b4a519ca899b517c1ff06fcdab" [label="/bin/sh -c yum -y install wget tar unzip gcc zlib zlib-devel openssl openssl-devel unzip" shape="box"];
  "sha256:f0038d7ac8a391b4704e31178f5be2cfb7c7405360c316a6c7aeb0ca5df93a5a" [label="/bin/sh -c mkdir /opt/app" shape="box"];
  "sha256:036f48baeb351ff31e859a8181ffa3ec2f622f4280aeab5764538ff22b6609b3" [label="/bin/sh -c mkdir /opt/logs" shape="box"];
  "sha256:282ab22979bf5abe3e51123445c89febd102c383412d3e31fe9bfa31e7ca4170" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f1e8ebd7d0d8c6f926df9240688fece7b8752bc122fcffdb09dd8b78d36325db" [label="/bin/sh -c wget http://www.reucon.com/cdn/java/jdk-6u45-linux-x64.bin -O /tmp/jdk-6u45-linux-x64.bin     && chmod 755 /tmp/jdk-6u45-linux-x64.bin     && /tmp/jdk-6u45-linux-x64.bin     && rm /tmp/jdk-6u45-linux-x64.bin" shape="box"];
  "sha256:32760409f0bc2b5919c604206cdf36333e44824f196285aab25c71173693992c" [label="/bin/sh -c wget https://archive.apache.org/dist/tomcat/tomcat-6/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -O /tmp/catalina.tar.gz     && tar xzf /tmp/catalina.tar.gz -C /opt     && ln -s /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat     && rm /tmp/catalina.tar.gz" shape="box"];
  "sha256:e865294922b08401ae746ca27efd157d27b4e0e4b77b62dfb6b4219c1f399c61" [label="/bin/sh -c rm -rf /opt/tomcat/webapps/*" shape="box"];
  "sha256:2b09769a1d21ddb9a179517e34f6dd8ffe6f42653595ce3d372c82037ddb6f2c" [label="mkdir{path=/opt/tomcat/conf}" shape="note"];
  "sha256:d126ab82ce4df6d3ba2f122b694f74c28b286bcf48a213caccf003f073d32e9a" [label="/bin/sh -c line1_s=$(grep -n \"<Connector port=\\\"8080\\\"\" server.xml|awk -F: '{print $1}')     && line1_e=$(cat server.xml | awk '/\\/>$/ {if(NR>='$line1_s') {print NR}}'|head -1)     && line1=$(expr $line1_s - 1)     && sed -e ''$line1_s','$line1_e'd' -e ''$line1'a\\    <Connector port=\"8080\" protocol=\"HTTP/1.1\"\\n               connectionTimeout=\"20000\"\\n               redirectPort=\"8443\" URIEncoding=\"utf-8\" />'  server.xml > server.xml.tmp1     && line2=$(grep -n \"</Host>\" server.xml| awk -F: '{print $1}')     && sed ''$line2'i\\        <Valve className=\"org.apache.catalina.valves.AccessLogValve\" directory=\"logs\"\\n               prefix=\"localhost_access_log\" suffix=\".txt\" rotatable=\"false\" pattern=\"common\" resolveHosts=\"false\"/>\\n        <Context docBase=\"/opt/app\" path=\"\">\\n        </Context>\\n' server.xml.tmp1 > server.xml.tmp2     && cp server.xml.tmp2 server.xml     && rm server.xml.tmp1 server.xml.tmp2" shape="box"];
  "sha256:a24ca863085ff31231bd8584767c2b92226465ea4789f73839c0513f824257c6" [label="copy{src=/, dest=/opt/}" shape="note"];
  "sha256:830fea0f18b0b2ca9f47b68893241a6ef4b5a68ecd97726d541fb6adfb158cf2" [label="mkdir{path=/opt}" shape="note"];
  "sha256:a54c1f8fe1c70386dfdd6bd94d56860d9b869b7e015a17161ce3b86f8943fbc4" [label="/bin/sh -c tar zxvf scribed.tar.gz     && chown -R root:root scribed     && rm -f scribed.tar.gz" shape="box"];
  "sha256:cc728b28c4f997e2827edb5e5751566f00bb67437fc0751cc17c5863fba839ed" [label="/bin/sh -c curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python" shape="box"];
  "sha256:0795064ad9108571f04be0d851ac3552c64aff43c63afa4c2f5d711c0cac9fb9" [label="/bin/sh -c pip install supervisor     && echo_supervisord_conf > /etc/supervisord.conf     && echo \"[include]\" >> /etc/supervisord.conf     && echo \"files = /etc/supervisord.d/*.conf\" >> /etc/supervisord.conf     && mkdir -p /etc/supervisord.d     && cp tomcat.conf scribed.conf /etc/supervisord.d/     && rm -f tomcat.conf scribed.conf Dockerfile" shape="box"];
  "sha256:551b1f0ea501f303de112c8b5a34f255928c0dae1f5b2e317efb947e7d8faeeb" [label="sha256:551b1f0ea501f303de112c8b5a34f255928c0dae1f5b2e317efb947e7d8faeeb" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:23fcab03c0901ac8215b65ceb85a7a72e657022331c975b2140d965fe4cd381d" [label=""];
  "sha256:23fcab03c0901ac8215b65ceb85a7a72e657022331c975b2140d965fe4cd381d" -> "sha256:faab426581cb1b7a29027953816431a3151f06b4a519ca899b517c1ff06fcdab" [label=""];
  "sha256:faab426581cb1b7a29027953816431a3151f06b4a519ca899b517c1ff06fcdab" -> "sha256:f0038d7ac8a391b4704e31178f5be2cfb7c7405360c316a6c7aeb0ca5df93a5a" [label=""];
  "sha256:f0038d7ac8a391b4704e31178f5be2cfb7c7405360c316a6c7aeb0ca5df93a5a" -> "sha256:036f48baeb351ff31e859a8181ffa3ec2f622f4280aeab5764538ff22b6609b3" [label=""];
  "sha256:036f48baeb351ff31e859a8181ffa3ec2f622f4280aeab5764538ff22b6609b3" -> "sha256:282ab22979bf5abe3e51123445c89febd102c383412d3e31fe9bfa31e7ca4170" [label=""];
  "sha256:282ab22979bf5abe3e51123445c89febd102c383412d3e31fe9bfa31e7ca4170" -> "sha256:f1e8ebd7d0d8c6f926df9240688fece7b8752bc122fcffdb09dd8b78d36325db" [label=""];
  "sha256:f1e8ebd7d0d8c6f926df9240688fece7b8752bc122fcffdb09dd8b78d36325db" -> "sha256:32760409f0bc2b5919c604206cdf36333e44824f196285aab25c71173693992c" [label=""];
  "sha256:32760409f0bc2b5919c604206cdf36333e44824f196285aab25c71173693992c" -> "sha256:e865294922b08401ae746ca27efd157d27b4e0e4b77b62dfb6b4219c1f399c61" [label=""];
  "sha256:e865294922b08401ae746ca27efd157d27b4e0e4b77b62dfb6b4219c1f399c61" -> "sha256:2b09769a1d21ddb9a179517e34f6dd8ffe6f42653595ce3d372c82037ddb6f2c" [label=""];
  "sha256:2b09769a1d21ddb9a179517e34f6dd8ffe6f42653595ce3d372c82037ddb6f2c" -> "sha256:d126ab82ce4df6d3ba2f122b694f74c28b286bcf48a213caccf003f073d32e9a" [label=""];
  "sha256:d126ab82ce4df6d3ba2f122b694f74c28b286bcf48a213caccf003f073d32e9a" -> "sha256:a24ca863085ff31231bd8584767c2b92226465ea4789f73839c0513f824257c6" [label=""];
  "sha256:4055c06b628c6e74f6f69018e3731409af06951b0d5fda33cb3f8856194538d4" -> "sha256:a24ca863085ff31231bd8584767c2b92226465ea4789f73839c0513f824257c6" [label=""];
  "sha256:a24ca863085ff31231bd8584767c2b92226465ea4789f73839c0513f824257c6" -> "sha256:830fea0f18b0b2ca9f47b68893241a6ef4b5a68ecd97726d541fb6adfb158cf2" [label=""];
  "sha256:830fea0f18b0b2ca9f47b68893241a6ef4b5a68ecd97726d541fb6adfb158cf2" -> "sha256:a54c1f8fe1c70386dfdd6bd94d56860d9b869b7e015a17161ce3b86f8943fbc4" [label=""];
  "sha256:a54c1f8fe1c70386dfdd6bd94d56860d9b869b7e015a17161ce3b86f8943fbc4" -> "sha256:cc728b28c4f997e2827edb5e5751566f00bb67437fc0751cc17c5863fba839ed" [label=""];
  "sha256:cc728b28c4f997e2827edb5e5751566f00bb67437fc0751cc17c5863fba839ed" -> "sha256:0795064ad9108571f04be0d851ac3552c64aff43c63afa4c2f5d711c0cac9fb9" [label=""];
  "sha256:0795064ad9108571f04be0d851ac3552c64aff43c63afa4c2f5d711c0cac9fb9" -> "sha256:551b1f0ea501f303de112c8b5a34f255928c0dae1f5b2e317efb947e7d8faeeb" [label=""];
}

