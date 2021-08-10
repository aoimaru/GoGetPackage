[app/sources/449788606.Dockerfile]
digraph {
  "sha256:086eca0a629c6cb1e2d16cede95b071235dd57637ecd2e9ea74c4adb646cb968" [label="local://context" shape="ellipse"];
  "sha256:ada192abe29752e7d8a4c2b7409e39aae3ef28158842603addfa78fcd06613d8" [label="docker-image://docker.io/acmeair/liberty:latest" shape="ellipse"];
  "sha256:13c567009f71879c6996b365663ea524ce8ee1276b564185e84b9c9cdafb5412" [label="/bin/sh -c cd /opt/ibm/wlp/usr/servers/defaultServer &&  mkdir -p apps/webapp.war &&  cd apps/webapp.war &&  wget -qO app.war https://acmeair.ci.cloudbees.com/job/acmeair-netflix-astyanax/lastSuccessfulBuild/artifact/acmeair-webapp-tc7/build/libs/acmeair-webapp-tc7-0.1.0-SNAPSHOT.war &&  jar xf app.war &&  rm app.war" shape="box"];
  "sha256:54b60028c0c0e503e05781dc887afb8054f6bff938a40379e4c5cf8cfa9165a0" [label="copy{src=/ACMEAIR_WEBAPP-docker.properties, dest=/opt/ibm/wlp/usr/servers/defaultServer/apps/webapp.war/WEB-INF/classes/ACMEAIR_WEBAPP-docker.properties}" shape="note"];
  "sha256:7a7a226524279bea6f38e8efe45b3caa4606327e70ec468c965f457c136a3697" [label="copy{src=/config.properties, dest=/opt/ibm/wlp/usr/servers/defaultServer/apps/webapp.war/WEB-INF/classes/config.properties}" shape="note"];
  "sha256:7871b573916d101d11665b2dad7f2cfa7a00c586318beab22edd46a64c7917ff" [label="copy{src=/server.xml, dest=/opt/ibm/wlp/usr/servers/defaultServer/server.xml}" shape="note"];
  "sha256:5a28ae9223c2a79672e8aff8b606d848ab2abcc5ad395f56848525a7447a41bc" [label="copy{src=/jvm.options, dest=/opt/ibm/wlp/usr/servers/defaultServer/jvm.options}" shape="note"];
  "sha256:6d86eb302895f7be34401fe91677e25ad333be104b9bcf7f983cad9460d9f955" [label="sha256:6d86eb302895f7be34401fe91677e25ad333be104b9bcf7f983cad9460d9f955" shape="plaintext"];
  "sha256:ada192abe29752e7d8a4c2b7409e39aae3ef28158842603addfa78fcd06613d8" -> "sha256:13c567009f71879c6996b365663ea524ce8ee1276b564185e84b9c9cdafb5412" [label=""];
  "sha256:13c567009f71879c6996b365663ea524ce8ee1276b564185e84b9c9cdafb5412" -> "sha256:54b60028c0c0e503e05781dc887afb8054f6bff938a40379e4c5cf8cfa9165a0" [label=""];
  "sha256:086eca0a629c6cb1e2d16cede95b071235dd57637ecd2e9ea74c4adb646cb968" -> "sha256:54b60028c0c0e503e05781dc887afb8054f6bff938a40379e4c5cf8cfa9165a0" [label=""];
  "sha256:54b60028c0c0e503e05781dc887afb8054f6bff938a40379e4c5cf8cfa9165a0" -> "sha256:7a7a226524279bea6f38e8efe45b3caa4606327e70ec468c965f457c136a3697" [label=""];
  "sha256:086eca0a629c6cb1e2d16cede95b071235dd57637ecd2e9ea74c4adb646cb968" -> "sha256:7a7a226524279bea6f38e8efe45b3caa4606327e70ec468c965f457c136a3697" [label=""];
  "sha256:7a7a226524279bea6f38e8efe45b3caa4606327e70ec468c965f457c136a3697" -> "sha256:7871b573916d101d11665b2dad7f2cfa7a00c586318beab22edd46a64c7917ff" [label=""];
  "sha256:086eca0a629c6cb1e2d16cede95b071235dd57637ecd2e9ea74c4adb646cb968" -> "sha256:7871b573916d101d11665b2dad7f2cfa7a00c586318beab22edd46a64c7917ff" [label=""];
  "sha256:7871b573916d101d11665b2dad7f2cfa7a00c586318beab22edd46a64c7917ff" -> "sha256:5a28ae9223c2a79672e8aff8b606d848ab2abcc5ad395f56848525a7447a41bc" [label=""];
  "sha256:086eca0a629c6cb1e2d16cede95b071235dd57637ecd2e9ea74c4adb646cb968" -> "sha256:5a28ae9223c2a79672e8aff8b606d848ab2abcc5ad395f56848525a7447a41bc" [label=""];
  "sha256:5a28ae9223c2a79672e8aff8b606d848ab2abcc5ad395f56848525a7447a41bc" -> "sha256:6d86eb302895f7be34401fe91677e25ad333be104b9bcf7f983cad9460d9f955" [label=""];
}

