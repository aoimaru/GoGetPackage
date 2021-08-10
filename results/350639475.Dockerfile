[app/sources/350639475.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:dc4742312204c12c02b6aae535eeeded96a8a3114cafca7dd7f4909e59175edc" [label="local://context" shape="ellipse"];
  "sha256:1d395e17e0176250910a22ff31613f67957cfcbfc233ef00c54418436c844dc2" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:6377853d59a2f5ca6e4bf4a78c67151a93c97c3f7eca04d9bc2edba897408a7a" [label="mkdir{path=/app}" shape="note"];
  "sha256:eefcbd9a57a32fc767b161cdc5a81d0eedc337ea6cf72202390cc33c14699836" [label="/bin/sh -c apk --update add bash curl grep uwsgi-cgi &&     adduser -h /app -s /bin/bash -D ganesh ganesh &&     chown -R ganesh:ganesh /app" shape="box"];
  "sha256:62730f2b65341c79eb5dba29df6f29245b6fc0eefa2952163608c10771233671" [label="sha256:62730f2b65341c79eb5dba29df6f29245b6fc0eefa2952163608c10771233671" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:1d395e17e0176250910a22ff31613f67957cfcbfc233ef00c54418436c844dc2" [label=""];
  "sha256:dc4742312204c12c02b6aae535eeeded96a8a3114cafca7dd7f4909e59175edc" -> "sha256:1d395e17e0176250910a22ff31613f67957cfcbfc233ef00c54418436c844dc2" [label=""];
  "sha256:1d395e17e0176250910a22ff31613f67957cfcbfc233ef00c54418436c844dc2" -> "sha256:6377853d59a2f5ca6e4bf4a78c67151a93c97c3f7eca04d9bc2edba897408a7a" [label=""];
  "sha256:6377853d59a2f5ca6e4bf4a78c67151a93c97c3f7eca04d9bc2edba897408a7a" -> "sha256:eefcbd9a57a32fc767b161cdc5a81d0eedc337ea6cf72202390cc33c14699836" [label=""];
  "sha256:eefcbd9a57a32fc767b161cdc5a81d0eedc337ea6cf72202390cc33c14699836" -> "sha256:62730f2b65341c79eb5dba29df6f29245b6fc0eefa2952163608c10771233671" [label=""];
}

