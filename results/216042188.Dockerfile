[app/sources/216042188.Dockerfile]
digraph {
  "sha256:dbc3d60f8b36cc28d41c2e30b1580c00210521bb7a13115abd9dc93d30a5c228" [label="docker-image://docker.io/library/tomcat:7-jre8-alpine" shape="ellipse"];
  "sha256:31a040e08147905860bcf089028b14bd7e730debe993115043aa541ae9afe875" [label="local://context" shape="ellipse"];
  "sha256:20e01dc38770994afbd5755b5095a26767626a575c34bc5cd01bbdae090a06f6" [label="copy{src=/JavaWebApp.zip, dest=/}" shape="note"];
  "sha256:371f9c9fe9994c3800007f7f930ff1b56221776ce265df860174f7c04642d9ac" [label="/bin/sh -c rm -r -f /usr/local/tomcat/webapps &&     mkdir -p /usr/local/tomcat/webapps/ROOT &&     unzip /JavaWebApp.zip -d /usr/local/tomcat/webapps/ROOT &&     rm /JavaWebApp.zip" shape="box"];
  "sha256:a78815cc7972434313be3a44ba6f855f5b25ace762ab00d4299e3e65b812f3fe" [label="sha256:a78815cc7972434313be3a44ba6f855f5b25ace762ab00d4299e3e65b812f3fe" shape="plaintext"];
  "sha256:dbc3d60f8b36cc28d41c2e30b1580c00210521bb7a13115abd9dc93d30a5c228" -> "sha256:20e01dc38770994afbd5755b5095a26767626a575c34bc5cd01bbdae090a06f6" [label=""];
  "sha256:31a040e08147905860bcf089028b14bd7e730debe993115043aa541ae9afe875" -> "sha256:20e01dc38770994afbd5755b5095a26767626a575c34bc5cd01bbdae090a06f6" [label=""];
  "sha256:20e01dc38770994afbd5755b5095a26767626a575c34bc5cd01bbdae090a06f6" -> "sha256:371f9c9fe9994c3800007f7f930ff1b56221776ce265df860174f7c04642d9ac" [label=""];
  "sha256:371f9c9fe9994c3800007f7f930ff1b56221776ce265df860174f7c04642d9ac" -> "sha256:a78815cc7972434313be3a44ba6f855f5b25ace762ab00d4299e3e65b812f3fe" [label=""];
}

