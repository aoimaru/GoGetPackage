[app/sources/273677686.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:37e5003430285c56358c58de7bb925b831eaf172daed77f26fd37baefe037861" [label="/bin/sh -c apk update  && apk add python2 libffi cairo openssl ca-certificates pcre wget sqlite  && ln -sf /usr/bin/python2.7 /usr/bin/python" shape="box"];
  "sha256:80d7b61f1167d342fb5a8ca6b61f8ccedae35b91380f14af462a43eaa8912b29" [label="/bin/sh -c mkdir /data /conf; chmod 777 /data /conf" shape="box"];
  "sha256:82bfc19ee1dcfa6996adec7c5df64ed76e58384a4eb40e5686d8c46bbe4df962" [label="local://context" shape="ellipse"];
  "sha256:c4a21df0adbcad190c5b5e00819b3de1cc1950235a7f81daf59c0141958fe7ae" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:f7a3dfc16433e0c35904abbd91f8b486f0d3e184f01120f4517a0fe9cdea48ec" [label="/bin/sh -c apk add python2-dev libffi-dev openssl-dev pcre-dev build-base linux-headers py2-pip" shape="box"];
  "sha256:c282bc8a4c60036cdea7e0474089421877a8f85bdade108176592241db83a7de" [label="/bin/sh -c pip2 install --prefix=/pypkg six  && pip2 install --prefix=/pypkg uwsgi==2.0.15 graphite-web==$GRAPHITE_VERSION fadvise==6.0.0                                  carbon==$GRAPHITE_VERSION whisper==$GRAPHITE_VERSION jinja2==2.9.6  && touch /pypkg/lib/python2.7/site-packages/zope/__init__.py" shape="box"];
  "sha256:f0a6e647e21eea9a5c05e3da5ee82e4823aa12e1748bc1dc4d5c8b906d01ea64" [label="copy{src=/pypkg, dest=/pypkg}" shape="note"];
  "sha256:b32db5bb68f020cb0465fca5789f88650e2cd7cda90e54a9290b6968cc4bc986" [label="sha256:b32db5bb68f020cb0465fca5789f88650e2cd7cda90e54a9290b6968cc4bc986" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:37e5003430285c56358c58de7bb925b831eaf172daed77f26fd37baefe037861" [label=""];
  "sha256:37e5003430285c56358c58de7bb925b831eaf172daed77f26fd37baefe037861" -> "sha256:80d7b61f1167d342fb5a8ca6b61f8ccedae35b91380f14af462a43eaa8912b29" [label=""];
  "sha256:80d7b61f1167d342fb5a8ca6b61f8ccedae35b91380f14af462a43eaa8912b29" -> "sha256:c4a21df0adbcad190c5b5e00819b3de1cc1950235a7f81daf59c0141958fe7ae" [label=""];
  "sha256:82bfc19ee1dcfa6996adec7c5df64ed76e58384a4eb40e5686d8c46bbe4df962" -> "sha256:c4a21df0adbcad190c5b5e00819b3de1cc1950235a7f81daf59c0141958fe7ae" [label=""];
  "sha256:37e5003430285c56358c58de7bb925b831eaf172daed77f26fd37baefe037861" -> "sha256:f7a3dfc16433e0c35904abbd91f8b486f0d3e184f01120f4517a0fe9cdea48ec" [label=""];
  "sha256:f7a3dfc16433e0c35904abbd91f8b486f0d3e184f01120f4517a0fe9cdea48ec" -> "sha256:c282bc8a4c60036cdea7e0474089421877a8f85bdade108176592241db83a7de" [label=""];
  "sha256:c4a21df0adbcad190c5b5e00819b3de1cc1950235a7f81daf59c0141958fe7ae" -> "sha256:f0a6e647e21eea9a5c05e3da5ee82e4823aa12e1748bc1dc4d5c8b906d01ea64" [label=""];
  "sha256:c282bc8a4c60036cdea7e0474089421877a8f85bdade108176592241db83a7de" -> "sha256:f0a6e647e21eea9a5c05e3da5ee82e4823aa12e1748bc1dc4d5c8b906d01ea64" [label=""];
  "sha256:f0a6e647e21eea9a5c05e3da5ee82e4823aa12e1748bc1dc4d5c8b906d01ea64" -> "sha256:b32db5bb68f020cb0465fca5789f88650e2cd7cda90e54a9290b6968cc4bc986" [label=""];
}

