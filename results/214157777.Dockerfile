[app/sources/214157777.Dockerfile]
digraph {
  "sha256:356dff181220c5af38890f9008007a3d01e7baffd644cb47d72037e01e916dfe" [label="docker-image://docker.io/gliderlabs/alpine:3.1" shape="ellipse"];
  "sha256:d0516f29dfa3d4a8f9e07719f16a11cbafd739bac0ff44982fd2477f3fc93b22" [label="/bin/sh -c apk-install nginx apache2-utils" shape="box"];
  "sha256:8a83fb356bcd64003ea319fd4cba76a061e451502d334b46fdd6ecb05903c9a3" [label="/bin/sh -c mkdir -p /tmp/nginx/client-body" shape="box"];
  "sha256:127ff22d04cc7ec87cd6fbacf854bdeff21ec5e89e8e790046de541a159986b1" [label="local://context" shape="ellipse"];
  "sha256:ece44acad97377817af8155aa3ca27aaaaa75e23da713496b9b4f0262cf27b82" [label="copy{src=/entrypoint, dest=/bin/entrypoint}" shape="note"];
  "sha256:f0fdbce0f5e10f4d28545b41924cc1b0c335067ca9281bdfc6039fc988a46429" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:f760a929aee695904a54e21df5fb1d06fe64e0635c5383cf41ec6edc3ac62a14" [label="sha256:f760a929aee695904a54e21df5fb1d06fe64e0635c5383cf41ec6edc3ac62a14" shape="plaintext"];
  "sha256:356dff181220c5af38890f9008007a3d01e7baffd644cb47d72037e01e916dfe" -> "sha256:d0516f29dfa3d4a8f9e07719f16a11cbafd739bac0ff44982fd2477f3fc93b22" [label=""];
  "sha256:d0516f29dfa3d4a8f9e07719f16a11cbafd739bac0ff44982fd2477f3fc93b22" -> "sha256:8a83fb356bcd64003ea319fd4cba76a061e451502d334b46fdd6ecb05903c9a3" [label=""];
  "sha256:8a83fb356bcd64003ea319fd4cba76a061e451502d334b46fdd6ecb05903c9a3" -> "sha256:ece44acad97377817af8155aa3ca27aaaaa75e23da713496b9b4f0262cf27b82" [label=""];
  "sha256:127ff22d04cc7ec87cd6fbacf854bdeff21ec5e89e8e790046de541a159986b1" -> "sha256:ece44acad97377817af8155aa3ca27aaaaa75e23da713496b9b4f0262cf27b82" [label=""];
  "sha256:ece44acad97377817af8155aa3ca27aaaaa75e23da713496b9b4f0262cf27b82" -> "sha256:f0fdbce0f5e10f4d28545b41924cc1b0c335067ca9281bdfc6039fc988a46429" [label=""];
  "sha256:127ff22d04cc7ec87cd6fbacf854bdeff21ec5e89e8e790046de541a159986b1" -> "sha256:f0fdbce0f5e10f4d28545b41924cc1b0c335067ca9281bdfc6039fc988a46429" [label=""];
  "sha256:f0fdbce0f5e10f4d28545b41924cc1b0c335067ca9281bdfc6039fc988a46429" -> "sha256:f760a929aee695904a54e21df5fb1d06fe64e0635c5383cf41ec6edc3ac62a14" [label=""];
}

