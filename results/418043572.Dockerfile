[app/sources/418043572.Dockerfile]
digraph {
  "sha256:bc5bbfe9c6c409de669b73de4aee4f390b64bd5476a0995328fb38ab19ca957e" [label="docker-image://docker.io/library/tomcat:7-jre7" shape="ellipse"];
  "sha256:f592ff98ea6f337e8961163b7c9561ca3d0990bc4efb05b8fc5580aa1366155f" [label="/bin/sh -c rm -Rf /usr/local/tomcat/webapps/*" shape="box"];
  "sha256:c3e8f7094fc6c5e71ba9e268a3e7c7c1d73aadf53f222aedef12c0e6945057ec" [label="local://context" shape="ellipse"];
  "sha256:18b3be40609420508bdfb4a414e8dc3e898fa231461c417ffe1ef82bd957d4f9" [label="copy{src=/PageTurnerWeb-0.2.war, dest=/usr/local/tomcat/webapps/PageTurnerWeb.war}" shape="note"];
  "sha256:d4579c2c5cd65c500dde2854f010a39ee3e20096a34a3f0cd35a2335e3ed6475" [label="sha256:d4579c2c5cd65c500dde2854f010a39ee3e20096a34a3f0cd35a2335e3ed6475" shape="plaintext"];
  "sha256:bc5bbfe9c6c409de669b73de4aee4f390b64bd5476a0995328fb38ab19ca957e" -> "sha256:f592ff98ea6f337e8961163b7c9561ca3d0990bc4efb05b8fc5580aa1366155f" [label=""];
  "sha256:f592ff98ea6f337e8961163b7c9561ca3d0990bc4efb05b8fc5580aa1366155f" -> "sha256:18b3be40609420508bdfb4a414e8dc3e898fa231461c417ffe1ef82bd957d4f9" [label=""];
  "sha256:c3e8f7094fc6c5e71ba9e268a3e7c7c1d73aadf53f222aedef12c0e6945057ec" -> "sha256:18b3be40609420508bdfb4a414e8dc3e898fa231461c417ffe1ef82bd957d4f9" [label=""];
  "sha256:18b3be40609420508bdfb4a414e8dc3e898fa231461c417ffe1ef82bd957d4f9" -> "sha256:d4579c2c5cd65c500dde2854f010a39ee3e20096a34a3f0cd35a2335e3ed6475" [label=""];
}

