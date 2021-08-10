[app/sources/223179556.Dockerfile]
digraph {
  "sha256:7023a5cbff72b4eb236e58f3ffa7773cc5ed68c381d36f7f501866c4ea9a243a" [label="local://context" shape="ellipse"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:3bd45ba1906827ccc4f384d6f548e743853032426f9e972703e31db39a3685d0" [label="/bin/sh -c rm -rf /usr/local/tomcat/webapps/ROOT" shape="box"];
  "sha256:9308f1e9d4efafccc9b23ff62c4ba8dca078cf541857f29cd20b62799a0ca430" [label="copy{src=/target/ACManager.war, dest=/usr/local/tomcat/webapps/ROOT.war}" shape="note"];
  "sha256:76bc6af7f5186621165a75a22b705d04613d973bfb8e215ef697e252e905d88a" [label="sha256:76bc6af7f5186621165a75a22b705d04613d973bfb8e215ef697e252e905d88a" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:3bd45ba1906827ccc4f384d6f548e743853032426f9e972703e31db39a3685d0" [label=""];
  "sha256:3bd45ba1906827ccc4f384d6f548e743853032426f9e972703e31db39a3685d0" -> "sha256:9308f1e9d4efafccc9b23ff62c4ba8dca078cf541857f29cd20b62799a0ca430" [label=""];
  "sha256:7023a5cbff72b4eb236e58f3ffa7773cc5ed68c381d36f7f501866c4ea9a243a" -> "sha256:9308f1e9d4efafccc9b23ff62c4ba8dca078cf541857f29cd20b62799a0ca430" [label=""];
  "sha256:9308f1e9d4efafccc9b23ff62c4ba8dca078cf541857f29cd20b62799a0ca430" -> "sha256:76bc6af7f5186621165a75a22b705d04613d973bfb8e215ef697e252e905d88a" [label=""];
}

