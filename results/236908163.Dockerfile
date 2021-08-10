[app/sources/236908163.Dockerfile]
digraph {
  "sha256:8727e58ea0280b68c6ba3e227d69cc84bf6e825d4d6e40acbae1f606a18d98f7" [label="docker-image://docker.io/library/php:7.2-alpine" shape="ellipse"];
  "sha256:250f9e5501401d8a292d527f5a9984d8b663dfbc50a1a867862ceba657518121" [label="/bin/sh -c set -x   && mkdir -p /usr/src/typecho   && apk --update --no-cache add wget bash   && wget -qO- \"$TYPECHO_URL\" | tar -xz -C /usr/src/typecho/ --strip-components=1   && apk del wget   && rm -rf /tmp/*" shape="box"];
  "sha256:e308dff3e1f6812914278cbbd5e1a686b99e0ce67fe7021ab3a267959b7cfe5e" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:33b0238e61b2673ffc5d1dce82528ceed685e8985ce5256e8904bb11d195614d" [label="local://context" shape="ellipse"];
  "sha256:0be91c69b0408ce30ec2c38fb8db5df5837580049e20f474aa8b5454ea1f5a6c" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:14dbb15bbb1ba897c7f83208eaddb3ebf09c70c8b2d774fc369b081481109966" [label="sha256:14dbb15bbb1ba897c7f83208eaddb3ebf09c70c8b2d774fc369b081481109966" shape="plaintext"];
  "sha256:8727e58ea0280b68c6ba3e227d69cc84bf6e825d4d6e40acbae1f606a18d98f7" -> "sha256:250f9e5501401d8a292d527f5a9984d8b663dfbc50a1a867862ceba657518121" [label=""];
  "sha256:250f9e5501401d8a292d527f5a9984d8b663dfbc50a1a867862ceba657518121" -> "sha256:e308dff3e1f6812914278cbbd5e1a686b99e0ce67fe7021ab3a267959b7cfe5e" [label=""];
  "sha256:e308dff3e1f6812914278cbbd5e1a686b99e0ce67fe7021ab3a267959b7cfe5e" -> "sha256:0be91c69b0408ce30ec2c38fb8db5df5837580049e20f474aa8b5454ea1f5a6c" [label=""];
  "sha256:33b0238e61b2673ffc5d1dce82528ceed685e8985ce5256e8904bb11d195614d" -> "sha256:0be91c69b0408ce30ec2c38fb8db5df5837580049e20f474aa8b5454ea1f5a6c" [label=""];
  "sha256:0be91c69b0408ce30ec2c38fb8db5df5837580049e20f474aa8b5454ea1f5a6c" -> "sha256:14dbb15bbb1ba897c7f83208eaddb3ebf09c70c8b2d774fc369b081481109966" [label=""];
}

