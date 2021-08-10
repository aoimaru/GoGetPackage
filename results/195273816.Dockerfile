[app/sources/195273816.Dockerfile]
digraph {
  "sha256:b27879f4dba8ab8abdbfd489155754cd09bc00669719c9fe6bb20a6ad5519a31" [label="docker-image://docker.io/splatform/stratos-nginx-base:opensuse" shape="ellipse"];
  "sha256:224b6ede2c74ecf3dec828a72c0cdd40b9c570a8776c6342d6d0de315e3869fa" [label="/bin/sh -c mkdir -p /etc/secrets/ &&   openssl req -batch -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/secrets/server.key -out /etc/secrets/server.crt &&   chmod 0600 /etc/secrets &&   chmod 0600 /etc/secrets/server.key &&   chmod 0600 /etc/secrets/server.crt" shape="box"];
  "sha256:a4c850322fbe04ea27349cd1ac39381a4689d084cdfad607eb1f8147c801dbc2" [label="docker-image://docker.io/splatform/stratos-ui-build-base:opensuse" shape="ellipse"];
  "sha256:93e81f31ebadf9a4a3000c80893eca00f9b84365f4b51baa7e82893a021e977c" [label="local://context" shape="ellipse"];
  "sha256:987e4f386063bd5d60d1435cf8e442b4309b10e7d7f3c8586edb538d9aa30296" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:f2829d48772436a8c216bfbf6f54a1e86c6db682f0ae47e642e35fffa3da5b03" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2e3099bebc994ecef933e6a30fa78089b92ae809065b48b0a03074708fac6af9" [label="/bin/sh -c npm install &&     npm run build &&     mkdir -p /usr/dist &&     cp -R dist/* /usr/dist" shape="box"];
  "sha256:e2405ee9292df3b8686bed965acef1ef7beb8892311ca8572b923908c008e7b7" [label="copy{src=/usr/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:04c4e14d0a05d68db7b99aff9744ce4720b393fe5b0fc785a1ada681853058f4" [label="copy{src=/deploy/containers/nginx/conf/nginx.dev.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:554315e644fc150bdcc442735b94b6d37cb9bbe328a374464a70d0a304b04111" [label="sha256:554315e644fc150bdcc442735b94b6d37cb9bbe328a374464a70d0a304b04111" shape="plaintext"];
  "sha256:b27879f4dba8ab8abdbfd489155754cd09bc00669719c9fe6bb20a6ad5519a31" -> "sha256:224b6ede2c74ecf3dec828a72c0cdd40b9c570a8776c6342d6d0de315e3869fa" [label=""];
  "sha256:a4c850322fbe04ea27349cd1ac39381a4689d084cdfad607eb1f8147c801dbc2" -> "sha256:987e4f386063bd5d60d1435cf8e442b4309b10e7d7f3c8586edb538d9aa30296" [label=""];
  "sha256:93e81f31ebadf9a4a3000c80893eca00f9b84365f4b51baa7e82893a021e977c" -> "sha256:987e4f386063bd5d60d1435cf8e442b4309b10e7d7f3c8586edb538d9aa30296" [label=""];
  "sha256:987e4f386063bd5d60d1435cf8e442b4309b10e7d7f3c8586edb538d9aa30296" -> "sha256:f2829d48772436a8c216bfbf6f54a1e86c6db682f0ae47e642e35fffa3da5b03" [label=""];
  "sha256:f2829d48772436a8c216bfbf6f54a1e86c6db682f0ae47e642e35fffa3da5b03" -> "sha256:2e3099bebc994ecef933e6a30fa78089b92ae809065b48b0a03074708fac6af9" [label=""];
  "sha256:224b6ede2c74ecf3dec828a72c0cdd40b9c570a8776c6342d6d0de315e3869fa" -> "sha256:e2405ee9292df3b8686bed965acef1ef7beb8892311ca8572b923908c008e7b7" [label=""];
  "sha256:2e3099bebc994ecef933e6a30fa78089b92ae809065b48b0a03074708fac6af9" -> "sha256:e2405ee9292df3b8686bed965acef1ef7beb8892311ca8572b923908c008e7b7" [label=""];
  "sha256:e2405ee9292df3b8686bed965acef1ef7beb8892311ca8572b923908c008e7b7" -> "sha256:04c4e14d0a05d68db7b99aff9744ce4720b393fe5b0fc785a1ada681853058f4" [label=""];
  "sha256:93e81f31ebadf9a4a3000c80893eca00f9b84365f4b51baa7e82893a021e977c" -> "sha256:04c4e14d0a05d68db7b99aff9744ce4720b393fe5b0fc785a1ada681853058f4" [label=""];
  "sha256:04c4e14d0a05d68db7b99aff9744ce4720b393fe5b0fc785a1ada681853058f4" -> "sha256:554315e644fc150bdcc442735b94b6d37cb9bbe328a374464a70d0a304b04111" [label=""];
}

