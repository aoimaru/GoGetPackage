[app/sources/345357025.Dockerfile]
digraph {
  "sha256:cb8a16e92470cbda0bd863d0aac8e627591e8e0a70f0950cc59ff4755fe5d6fd" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.6-build" shape="ellipse"];
  "sha256:8b2578be30edb682b630ff92c17660354b1751fb64b603b1469d27e1b4172b89" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:90f059f4adb4cfd2f1970ff8e37643100f0f5a3c82ef691a8848503c540b7c10" [label="sha256:90f059f4adb4cfd2f1970ff8e37643100f0f5a3c82ef691a8848503c540b7c10" shape="plaintext"];
  "sha256:cb8a16e92470cbda0bd863d0aac8e627591e8e0a70f0950cc59ff4755fe5d6fd" -> "sha256:8b2578be30edb682b630ff92c17660354b1751fb64b603b1469d27e1b4172b89" [label=""];
  "sha256:8b2578be30edb682b630ff92c17660354b1751fb64b603b1469d27e1b4172b89" -> "sha256:90f059f4adb4cfd2f1970ff8e37643100f0f5a3c82ef691a8848503c540b7c10" [label=""];
}

