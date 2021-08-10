[app/sources/252773644.Dockerfile]
digraph {
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" [label="docker-image://docker.io/library/ruby:2.3-alpine" shape="ellipse"];
  "sha256:3d2387cd1878040db8f819a2c70706c5f923d0e4433b779d00dbb5e4ed0a15d6" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8c293f87e777eeb7fdfe65dc650dbb8b45c31b763fedbe83229983ec7a0da89a" [label="/bin/sh -c apk --no-cache add --virtual .build-deps build-base curl ruby-dev nodejs libxml2-dev libxslt-dev linux-headers libffi-dev zlib-dev && (mkdir -p /opt/src && cd /opt/src && curl -L https://github.com/lord/slate/archive/v$VERSION.tar.gz | tar -xz && cp -R slate-$VERSION/* /usr/src/app/ && rm -rf /opt/src ) && bundle config build.nokogiri --use-system-libraries && bundle install" shape="box"];
  "sha256:77906d477c2ec27b13e4ad745a472019c07adfb999d8c85c5452b278d3803b85" [label="sha256:77906d477c2ec27b13e4ad745a472019c07adfb999d8c85c5452b278d3803b85" shape="plaintext"];
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" -> "sha256:3d2387cd1878040db8f819a2c70706c5f923d0e4433b779d00dbb5e4ed0a15d6" [label=""];
  "sha256:3d2387cd1878040db8f819a2c70706c5f923d0e4433b779d00dbb5e4ed0a15d6" -> "sha256:8c293f87e777eeb7fdfe65dc650dbb8b45c31b763fedbe83229983ec7a0da89a" [label=""];
  "sha256:8c293f87e777eeb7fdfe65dc650dbb8b45c31b763fedbe83229983ec7a0da89a" -> "sha256:77906d477c2ec27b13e4ad745a472019c07adfb999d8c85c5452b278d3803b85" [label=""];
}

