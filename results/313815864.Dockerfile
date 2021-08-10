[app/sources/313815864.Dockerfile]
digraph {
  "sha256:117e7f466dfe6bd4fcf1f6b40d3c8924916cde0963521329b15c469b05bf4891" [label="local://context" shape="ellipse"];
  "sha256:924d5f49ebbb4c4e2a337802d6fedf2e040f6beb8772c74c255402d75663c759" [label="docker-image://docker.io/dhoer/flyway:5.1.4-mysql-8.0.11-alpine" shape="ellipse"];
  "sha256:d37ccacfb729bbc32c275311a26f64fea1f2070fb1e4ba95a93eb10a7f13a0b6" [label="/bin/sh -c apk add --no-cache mysql-client" shape="box"];
  "sha256:0e5b48586c7bbe5416523178c6eee0e27fdd52768b13ce783f75f7776dfc7a4b" [label="copy{src=/schema, dest=/flyway/sql}" shape="note"];
  "sha256:8b2a4a682052b4d7c079c76067bcdca51dafcb66225551274e6bad372c5aa433" [label="copy{src=/ddl, dest=/flyway/sql/ddl}" shape="note"];
  "sha256:531a919490e74cdedfa3b288cdf3da753031d4ae4c8bc6c1d8a3be1416951a5e" [label="copy{src=/scripts, dest=/flyway/sql/ddl}" shape="note"];
  "sha256:220940ab19c6d0266c9b19352cec8d24ca4020a268a08347caa5972befc0e30d" [label="sha256:220940ab19c6d0266c9b19352cec8d24ca4020a268a08347caa5972befc0e30d" shape="plaintext"];
  "sha256:924d5f49ebbb4c4e2a337802d6fedf2e040f6beb8772c74c255402d75663c759" -> "sha256:d37ccacfb729bbc32c275311a26f64fea1f2070fb1e4ba95a93eb10a7f13a0b6" [label=""];
  "sha256:d37ccacfb729bbc32c275311a26f64fea1f2070fb1e4ba95a93eb10a7f13a0b6" -> "sha256:0e5b48586c7bbe5416523178c6eee0e27fdd52768b13ce783f75f7776dfc7a4b" [label=""];
  "sha256:117e7f466dfe6bd4fcf1f6b40d3c8924916cde0963521329b15c469b05bf4891" -> "sha256:0e5b48586c7bbe5416523178c6eee0e27fdd52768b13ce783f75f7776dfc7a4b" [label=""];
  "sha256:0e5b48586c7bbe5416523178c6eee0e27fdd52768b13ce783f75f7776dfc7a4b" -> "sha256:8b2a4a682052b4d7c079c76067bcdca51dafcb66225551274e6bad372c5aa433" [label=""];
  "sha256:117e7f466dfe6bd4fcf1f6b40d3c8924916cde0963521329b15c469b05bf4891" -> "sha256:8b2a4a682052b4d7c079c76067bcdca51dafcb66225551274e6bad372c5aa433" [label=""];
  "sha256:8b2a4a682052b4d7c079c76067bcdca51dafcb66225551274e6bad372c5aa433" -> "sha256:531a919490e74cdedfa3b288cdf3da753031d4ae4c8bc6c1d8a3be1416951a5e" [label=""];
  "sha256:117e7f466dfe6bd4fcf1f6b40d3c8924916cde0963521329b15c469b05bf4891" -> "sha256:531a919490e74cdedfa3b288cdf3da753031d4ae4c8bc6c1d8a3be1416951a5e" [label=""];
  "sha256:531a919490e74cdedfa3b288cdf3da753031d4ae4c8bc6c1d8a3be1416951a5e" -> "sha256:220940ab19c6d0266c9b19352cec8d24ca4020a268a08347caa5972befc0e30d" [label=""];
}

