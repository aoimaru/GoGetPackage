[app/sources/203184570.Dockerfile]
digraph {
  "sha256:ee5bb57312f7e68443059287d8bf44fabaa032f37d75ead5043bf97a49c6eb91" [label="docker-image://docker.io/library/cbf2-core:latest" shape="ellipse"];
  "sha256:7df0b8783e5612a8f34494074370e98b9e1b14641415a2c5c067503262babd0b" [label="local://context" shape="ellipse"];
  "sha256:f5ccc98bfdd59ccbe7c38119e7bd2d3cf95514ca272121f610e6a644f2ae60f9" [label="copy{src=/scripts/run.sh, dest=/pentaho/}" shape="note"];
  "sha256:368344ef5fd735c171ac884f2b321cad90d0446c5245a63caa2c5dd353dca469" [label="copy{src=/tmp/pentaho, dest=/pentaho/}" shape="note"];
  "sha256:9c3d4687e463d1492c0105066496a69e19755995655ea1da7896f85b109330d5" [label="copy{src=/tmp/licenses, dest=/pentaho/licenses/}" shape="note"];
  "sha256:937f01a14bafb2c1a5284e44aa20c2c2612e1314ed28bcc2bacb93397a5582bb" [label="copy{src=/pg_hba.conf, dest=/etc/postgresql/9.5/main/pg_hba.conf}" shape="note"];
  "sha256:30b740d44af81b2079053b2b847718f6703ab0de5673db6ead5e282700076610" [label="/bin/sh -c cd /pentaho &&   license-installer/install_license.sh install -q  /pentaho/licenses/*lic &&   mv /root/.pentaho/.installedLicenses.xml /pentaho/*server* &&   /etc/init.d/postgresql start &&   cd /pentaho/*server*/data/postgresql;   psql -U postgres -f create_jcr_postgresql.sql;   psql -U postgres -f create_quartz_postgresql.sql;   psql -U postgres -f create_repository_postgresql.sql;   rm /pentaho/*server*/promptuser.sh; \tcd /pentaho/*server*/tomcat/logs/ ; touch catalina.out ; touch pentaho.log ; \tcd /pentaho ;   sed -i -e 's/\\(exec \".*\"\\) start/\\1 run/' /pentaho/*server*/tomcat/bin/startup.sh;   mkdir /home/pentaho && groupadd -r pentaho && useradd -r -g pentaho -p $(perl -e'print crypt(\"pentaho\", \"aa\")' ) -G sudo pentaho &&   chown -R pentaho.pentaho /pentaho &&   chown -R pentaho.pentaho /home/pentaho && \tif [ $( ls -1 /pentaho/*server*/tomcat/webapps/pentaho/WEB-INF/lib/pentaho-platform-api-*.jar | head -n 1 | sed -E -e 's/.*pentaho-platform-api-(.).+/\\1/' )  -lt \"6\"  ]; then update-java-alternatives -s java-7-oracle && echo Java 7 enabled ; else echo Java 8 enabled; fi && \t/etc/init.d/postgresql stop" shape="box"];
  "sha256:7e170d6296a4262ceeeb8e3fce8f5ad14554ea940a1358d49f64aa82e35a3a74" [label="mkdir{path=/pentaho}" shape="note"];
  "sha256:9eed40db0a90034bbcef881c788130977da16c367c2ac5be1c3d39256c12c1f2" [label="sha256:9eed40db0a90034bbcef881c788130977da16c367c2ac5be1c3d39256c12c1f2" shape="plaintext"];
  "sha256:ee5bb57312f7e68443059287d8bf44fabaa032f37d75ead5043bf97a49c6eb91" -> "sha256:f5ccc98bfdd59ccbe7c38119e7bd2d3cf95514ca272121f610e6a644f2ae60f9" [label=""];
  "sha256:7df0b8783e5612a8f34494074370e98b9e1b14641415a2c5c067503262babd0b" -> "sha256:f5ccc98bfdd59ccbe7c38119e7bd2d3cf95514ca272121f610e6a644f2ae60f9" [label=""];
  "sha256:f5ccc98bfdd59ccbe7c38119e7bd2d3cf95514ca272121f610e6a644f2ae60f9" -> "sha256:368344ef5fd735c171ac884f2b321cad90d0446c5245a63caa2c5dd353dca469" [label=""];
  "sha256:7df0b8783e5612a8f34494074370e98b9e1b14641415a2c5c067503262babd0b" -> "sha256:368344ef5fd735c171ac884f2b321cad90d0446c5245a63caa2c5dd353dca469" [label=""];
  "sha256:368344ef5fd735c171ac884f2b321cad90d0446c5245a63caa2c5dd353dca469" -> "sha256:9c3d4687e463d1492c0105066496a69e19755995655ea1da7896f85b109330d5" [label=""];
  "sha256:7df0b8783e5612a8f34494074370e98b9e1b14641415a2c5c067503262babd0b" -> "sha256:9c3d4687e463d1492c0105066496a69e19755995655ea1da7896f85b109330d5" [label=""];
  "sha256:9c3d4687e463d1492c0105066496a69e19755995655ea1da7896f85b109330d5" -> "sha256:937f01a14bafb2c1a5284e44aa20c2c2612e1314ed28bcc2bacb93397a5582bb" [label=""];
  "sha256:7df0b8783e5612a8f34494074370e98b9e1b14641415a2c5c067503262babd0b" -> "sha256:937f01a14bafb2c1a5284e44aa20c2c2612e1314ed28bcc2bacb93397a5582bb" [label=""];
  "sha256:937f01a14bafb2c1a5284e44aa20c2c2612e1314ed28bcc2bacb93397a5582bb" -> "sha256:30b740d44af81b2079053b2b847718f6703ab0de5673db6ead5e282700076610" [label=""];
  "sha256:30b740d44af81b2079053b2b847718f6703ab0de5673db6ead5e282700076610" -> "sha256:7e170d6296a4262ceeeb8e3fce8f5ad14554ea940a1358d49f64aa82e35a3a74" [label=""];
  "sha256:7e170d6296a4262ceeeb8e3fce8f5ad14554ea940a1358d49f64aa82e35a3a74" -> "sha256:9eed40db0a90034bbcef881c788130977da16c367c2ac5be1c3d39256c12c1f2" [label=""];
}

