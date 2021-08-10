[app/sources/342686594.Dockerfile]
digraph {
  "sha256:323f90114e89e94495bd09bc1c2fe8da24e7fef4d2910ea1793964518b52f185" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:0ca2143f8831d73f89a1fb3f8d3f5224dc8a8585dfbfb6d383e988bf7a0f8a10" [label="/bin/sh -c apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y nginx curl python2.7 python-minimal build-essential python2.7-dev uwsgi-plugin-python &&   cd /tmp &&   curl -O https://bootstrap.pypa.io/get-pip.py &&   python2.7 get-pip.py &&   pip install awscli flask uwsgi &&   rm -rf /tmp/* &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:60ca1b521de16bf61b869b5fed1c7886646024f3b9c792d8978db85b93fc56c7" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:2bcba1a5455ff0261d1ecb7ca2030110419a295c9e98206cbda7e05cb0b89d06" [label="copy{src=/cats_uwsgi.ini, dest=/etc/uwsgi/apps-enabled/cats_uwsgi.ini}" shape="note"];
  "sha256:bd05008502b417c081a4fffc71bc1d25c0f666893a85bd82c89cc81fb27ad864" [label="copy{src=/index.html, dest=/var/www/html/index.html}" shape="note"];
  "sha256:8058a66e3b7c10efdf5cc64842fced3fa46e4b03d507f83243afd03532f08261" [label="copy{src=/app.js, dest=/var/www/html/app.js}" shape="note"];
  "sha256:4878147075a9af99209aa4cbb1bfb6b618d78cdeda4f25fac5a64c5426ed445c" [label="copy{src=/cats-api.py, dest=/var/www/html/cats-api.py}" shape="note"];
  "sha256:4d56a95822a2392cf10b4ada0d4d9b49b759f740db89355be8b406cb7e895c64" [label="copy{src=/init.sh, dest=/tmp/init.sh}" shape="note"];
  "sha256:7ae9cb0e7769d13dd56ef868993af78301af1cec941838d321c17187f782d86e" [label="/bin/sh -c mkdir /var/log/uwsgi" shape="box"];
  "sha256:44f9aa9953e580f525b3b8ebd5c51c8fa57ff61a5567640eecd148bda0bc6bdd" [label="/bin/sh -c chmod +x /tmp/init.sh" shape="box"];
  "sha256:0dd063016a31cfe96c4b02f7c62128fd88bd8ec00a16b0fc5db867622436986a" [label="sha256:0dd063016a31cfe96c4b02f7c62128fd88bd8ec00a16b0fc5db867622436986a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:0ca2143f8831d73f89a1fb3f8d3f5224dc8a8585dfbfb6d383e988bf7a0f8a10" [label=""];
  "sha256:0ca2143f8831d73f89a1fb3f8d3f5224dc8a8585dfbfb6d383e988bf7a0f8a10" -> "sha256:60ca1b521de16bf61b869b5fed1c7886646024f3b9c792d8978db85b93fc56c7" [label=""];
  "sha256:323f90114e89e94495bd09bc1c2fe8da24e7fef4d2910ea1793964518b52f185" -> "sha256:60ca1b521de16bf61b869b5fed1c7886646024f3b9c792d8978db85b93fc56c7" [label=""];
  "sha256:60ca1b521de16bf61b869b5fed1c7886646024f3b9c792d8978db85b93fc56c7" -> "sha256:2bcba1a5455ff0261d1ecb7ca2030110419a295c9e98206cbda7e05cb0b89d06" [label=""];
  "sha256:323f90114e89e94495bd09bc1c2fe8da24e7fef4d2910ea1793964518b52f185" -> "sha256:2bcba1a5455ff0261d1ecb7ca2030110419a295c9e98206cbda7e05cb0b89d06" [label=""];
  "sha256:2bcba1a5455ff0261d1ecb7ca2030110419a295c9e98206cbda7e05cb0b89d06" -> "sha256:bd05008502b417c081a4fffc71bc1d25c0f666893a85bd82c89cc81fb27ad864" [label=""];
  "sha256:323f90114e89e94495bd09bc1c2fe8da24e7fef4d2910ea1793964518b52f185" -> "sha256:bd05008502b417c081a4fffc71bc1d25c0f666893a85bd82c89cc81fb27ad864" [label=""];
  "sha256:bd05008502b417c081a4fffc71bc1d25c0f666893a85bd82c89cc81fb27ad864" -> "sha256:8058a66e3b7c10efdf5cc64842fced3fa46e4b03d507f83243afd03532f08261" [label=""];
  "sha256:323f90114e89e94495bd09bc1c2fe8da24e7fef4d2910ea1793964518b52f185" -> "sha256:8058a66e3b7c10efdf5cc64842fced3fa46e4b03d507f83243afd03532f08261" [label=""];
  "sha256:8058a66e3b7c10efdf5cc64842fced3fa46e4b03d507f83243afd03532f08261" -> "sha256:4878147075a9af99209aa4cbb1bfb6b618d78cdeda4f25fac5a64c5426ed445c" [label=""];
  "sha256:323f90114e89e94495bd09bc1c2fe8da24e7fef4d2910ea1793964518b52f185" -> "sha256:4878147075a9af99209aa4cbb1bfb6b618d78cdeda4f25fac5a64c5426ed445c" [label=""];
  "sha256:4878147075a9af99209aa4cbb1bfb6b618d78cdeda4f25fac5a64c5426ed445c" -> "sha256:4d56a95822a2392cf10b4ada0d4d9b49b759f740db89355be8b406cb7e895c64" [label=""];
  "sha256:323f90114e89e94495bd09bc1c2fe8da24e7fef4d2910ea1793964518b52f185" -> "sha256:4d56a95822a2392cf10b4ada0d4d9b49b759f740db89355be8b406cb7e895c64" [label=""];
  "sha256:4d56a95822a2392cf10b4ada0d4d9b49b759f740db89355be8b406cb7e895c64" -> "sha256:7ae9cb0e7769d13dd56ef868993af78301af1cec941838d321c17187f782d86e" [label=""];
  "sha256:7ae9cb0e7769d13dd56ef868993af78301af1cec941838d321c17187f782d86e" -> "sha256:44f9aa9953e580f525b3b8ebd5c51c8fa57ff61a5567640eecd148bda0bc6bdd" [label=""];
  "sha256:44f9aa9953e580f525b3b8ebd5c51c8fa57ff61a5567640eecd148bda0bc6bdd" -> "sha256:0dd063016a31cfe96c4b02f7c62128fd88bd8ec00a16b0fc5db867622436986a" [label=""];
}

