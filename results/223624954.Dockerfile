[app/sources/223624954.Dockerfile]
digraph {
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:d993cf743efe84de1e214b3aed459a251f8d669b0dfc4cc899e8af01e68f3b56" [label="http://repo.maven.apache.org/maven2/org/postgresql/postgresql/9.4.1212/postgresql-9.4.1212.jar" shape="ellipse"];
  "sha256:1b643a9e0dd155956b85e9076a41a3004a04af7997284bc2114f73bef0af6d21" [label="copy{src=/postgresql-9.4.1212.jar, dest=/usr/local/tomcat/lib/}" shape="note"];
  "sha256:03aa77470e50de3a8fb18c0c864ff4756825947620e18c5974b58f9c286f9e66" [label="http://repo.maven.apache.org/maven2/net/postgis/postgis-jdbc/2.2.1/postgis-jdbc-2.2.1.jar" shape="ellipse"];
  "sha256:7a92ff41c5eced5aaa751e9667fdf9895b019c41c76147a30beff63dfbfc86cf" [label="copy{src=/postgis-jdbc-2.2.1.jar, dest=/usr/local/tomcat/lib/}" shape="note"];
  "sha256:b2d6490ed54404ba9ad64b4e87cb8307a6b69bd910137ded2e95de4b38c81c89" [label="local://context" shape="ellipse"];
  "sha256:8b210faad4234f661f06dc3b4da7997673f9e687623fb9de0b1687cf88720799" [label="copy{src=/target, dest=/usr/local/tomcat/webapps/FROST-Server.war}" shape="note"];
  "sha256:1b265fb3cc16528a02e0e1de2bf54cc33b93ac4ac014af56d94e667fb3959936" [label="sha256:1b265fb3cc16528a02e0e1de2bf54cc33b93ac4ac014af56d94e667fb3959936" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:1b643a9e0dd155956b85e9076a41a3004a04af7997284bc2114f73bef0af6d21" [label=""];
  "sha256:d993cf743efe84de1e214b3aed459a251f8d669b0dfc4cc899e8af01e68f3b56" -> "sha256:1b643a9e0dd155956b85e9076a41a3004a04af7997284bc2114f73bef0af6d21" [label=""];
  "sha256:1b643a9e0dd155956b85e9076a41a3004a04af7997284bc2114f73bef0af6d21" -> "sha256:7a92ff41c5eced5aaa751e9667fdf9895b019c41c76147a30beff63dfbfc86cf" [label=""];
  "sha256:03aa77470e50de3a8fb18c0c864ff4756825947620e18c5974b58f9c286f9e66" -> "sha256:7a92ff41c5eced5aaa751e9667fdf9895b019c41c76147a30beff63dfbfc86cf" [label=""];
  "sha256:7a92ff41c5eced5aaa751e9667fdf9895b019c41c76147a30beff63dfbfc86cf" -> "sha256:8b210faad4234f661f06dc3b4da7997673f9e687623fb9de0b1687cf88720799" [label=""];
  "sha256:b2d6490ed54404ba9ad64b4e87cb8307a6b69bd910137ded2e95de4b38c81c89" -> "sha256:8b210faad4234f661f06dc3b4da7997673f9e687623fb9de0b1687cf88720799" [label=""];
  "sha256:8b210faad4234f661f06dc3b4da7997673f9e687623fb9de0b1687cf88720799" -> "sha256:1b265fb3cc16528a02e0e1de2bf54cc33b93ac4ac014af56d94e667fb3959936" [label=""];
}

