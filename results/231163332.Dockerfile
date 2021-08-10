[app/sources/231163332.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:0a02547aab9051e40205bf2ff0edc88b10de3c9167a169e779d53a92d17a41be" [label="/bin/sh -c apk add --update bash go gcc musl-dev diffutils util-linux coreutils &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c8f7ff4dea2840b38b3acb274a4d18646eb0a0b809a89cb485e2793e9a40a730" [label="local://context" shape="ellipse"];
  "sha256:ce1024f6b0189f108bdeeecefe6db5e8501b47921e182efae409ba3527ee4acc" [label="copy{src=/, dest=/opt/keysync}" shape="note"];
  "sha256:80740d8b1ea3931e7690afd51e3ceb3e5c8d9c9e90684851c389b1689a06b4f8" [label="/bin/sh -c adduser -S keysync-test &&     addgroup -S keysync-test &&     mkdir -p /go/src/github.com/square &&     ln -s /opt/keysync /go/src/github.com/square/keysync &&     go build -o /usr/bin/keysync github.com/square/keysync/cmd/keysync &&     chmod +x /usr/bin/keysync &&     java -jar /opt/keysync/testing/keywhiz-server.jar migrate /opt/keysync/testing/keywhiz-config.yaml &&     java -jar /opt/keysync/testing/keywhiz-server.jar db-seed /opt/keysync/testing/keywhiz-config.yaml" shape="box"];
  "sha256:b3e5b4f9fc211773bc2c873e6cdd7e5614ec7645fe60bde85e15c22b0a318c6d" [label="sha256:b3e5b4f9fc211773bc2c873e6cdd7e5614ec7645fe60bde85e15c22b0a318c6d" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:0a02547aab9051e40205bf2ff0edc88b10de3c9167a169e779d53a92d17a41be" [label=""];
  "sha256:0a02547aab9051e40205bf2ff0edc88b10de3c9167a169e779d53a92d17a41be" -> "sha256:ce1024f6b0189f108bdeeecefe6db5e8501b47921e182efae409ba3527ee4acc" [label=""];
  "sha256:c8f7ff4dea2840b38b3acb274a4d18646eb0a0b809a89cb485e2793e9a40a730" -> "sha256:ce1024f6b0189f108bdeeecefe6db5e8501b47921e182efae409ba3527ee4acc" [label=""];
  "sha256:ce1024f6b0189f108bdeeecefe6db5e8501b47921e182efae409ba3527ee4acc" -> "sha256:80740d8b1ea3931e7690afd51e3ceb3e5c8d9c9e90684851c389b1689a06b4f8" [label=""];
  "sha256:80740d8b1ea3931e7690afd51e3ceb3e5c8d9c9e90684851c389b1689a06b4f8" -> "sha256:b3e5b4f9fc211773bc2c873e6cdd7e5614ec7645fe60bde85e15c22b0a318c6d" [label=""];
}

