[app/sources/319040386.Dockerfile]
digraph {
  "sha256:0b004b049590ba7291f96a36621bca06793104a076ac48208cfd14a9ff57eaa6" [label="docker-image://docker.io/library/tomcat:8-alpine" shape="ellipse"];
  "sha256:620aaeffd1d3e1033d41ca20dd1cc4c05dc4bb071adb3517a3c0f388cf04acfd" [label="local://context" shape="ellipse"];
  "sha256:81dc224c90719c0ca77dc6b0c96a3e31fdc6c2194dde9d5e4f462b9bb61e87d9" [label="copy{src=/app, dest=/tmp/app}" shape="note"];
  "sha256:f7fbe367836cd3e5b5e98a373536a80700f61e475b4621d61bdf9e07ef7c0486" [label="/bin/sh -c cd /usr/local/tomcat/webapps/     && rm -rf *     && cp -r /tmp/app /usr/local/tomcat/webapps/ROOT" shape="box"];
  "sha256:f5e3ff1673653d6ae55a6b3cc0c1eae071b59bed08d9c23ab1533c668f823435" [label="sha256:f5e3ff1673653d6ae55a6b3cc0c1eae071b59bed08d9c23ab1533c668f823435" shape="plaintext"];
  "sha256:0b004b049590ba7291f96a36621bca06793104a076ac48208cfd14a9ff57eaa6" -> "sha256:81dc224c90719c0ca77dc6b0c96a3e31fdc6c2194dde9d5e4f462b9bb61e87d9" [label=""];
  "sha256:620aaeffd1d3e1033d41ca20dd1cc4c05dc4bb071adb3517a3c0f388cf04acfd" -> "sha256:81dc224c90719c0ca77dc6b0c96a3e31fdc6c2194dde9d5e4f462b9bb61e87d9" [label=""];
  "sha256:81dc224c90719c0ca77dc6b0c96a3e31fdc6c2194dde9d5e4f462b9bb61e87d9" -> "sha256:f7fbe367836cd3e5b5e98a373536a80700f61e475b4621d61bdf9e07ef7c0486" [label=""];
  "sha256:f7fbe367836cd3e5b5e98a373536a80700f61e475b4621d61bdf9e07ef7c0486" -> "sha256:f5e3ff1673653d6ae55a6b3cc0c1eae071b59bed08d9c23ab1533c668f823435" [label=""];
}

