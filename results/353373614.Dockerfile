[app/sources/353373614.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5391d97e41b64df4a94021edb647f29e16ba21f8a6f86d58b9d4195932edc7f6" [label="local://context" shape="ellipse"];
  "sha256:f895afc0bada6861c8ad24fe6bed009dd539c431b048e4d0ce31e3b9e21a2e26" [label="copy{src=/dist, dest=/root/dist/}" shape="note"];
  "sha256:40bf774445cc6d08dbacf92397cdf4936b1a9d26446b98d54173a6b4578329e0" [label="/bin/sh -c apk -U --no-cache add                build-base                git                libcap                libffi-dev                libressl-dev                linux-headers                py3-yarl                python3                python3-dev &&     git clone --depth=1 https://github.com/mushorg/tanner /opt/tanner &&     cp /root/dist/config.py /opt/tanner/tanner/ &&     cd /opt/tanner/ &&     pip3 install --no-cache-dir --upgrade pip setuptools &&     pip3 install --no-cache-dir -r requirements.txt &&     python3 setup.py install &&     cd / &&     chown -R nobody:nobody /opt/tanner &&     apk del --purge             build-base             linux-headers             python3-dev &&     rm -rf /root/* &&     rm -rf /tmp/* /var/tmp/* &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:af8c46bda5ed267241c2a261ba6e79439aaa356c0cb15481df55d316605db05a" [label="mkdir{path=/opt/tanner}" shape="note"];
  "sha256:cddf0a1643f26ee2185184ae40d78b6faa3a33ea2aedb39801bac89479a3b7e4" [label="sha256:cddf0a1643f26ee2185184ae40d78b6faa3a33ea2aedb39801bac89479a3b7e4" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f895afc0bada6861c8ad24fe6bed009dd539c431b048e4d0ce31e3b9e21a2e26" [label=""];
  "sha256:5391d97e41b64df4a94021edb647f29e16ba21f8a6f86d58b9d4195932edc7f6" -> "sha256:f895afc0bada6861c8ad24fe6bed009dd539c431b048e4d0ce31e3b9e21a2e26" [label=""];
  "sha256:f895afc0bada6861c8ad24fe6bed009dd539c431b048e4d0ce31e3b9e21a2e26" -> "sha256:40bf774445cc6d08dbacf92397cdf4936b1a9d26446b98d54173a6b4578329e0" [label=""];
  "sha256:40bf774445cc6d08dbacf92397cdf4936b1a9d26446b98d54173a6b4578329e0" -> "sha256:af8c46bda5ed267241c2a261ba6e79439aaa356c0cb15481df55d316605db05a" [label=""];
  "sha256:af8c46bda5ed267241c2a261ba6e79439aaa356c0cb15481df55d316605db05a" -> "sha256:cddf0a1643f26ee2185184ae40d78b6faa3a33ea2aedb39801bac89479a3b7e4" [label=""];
}

