[app/sources/475707070.Dockerfile]
digraph {
  "sha256:f13a08676d1f3bdbe656d5f18fda6e3318ba6b24d60f084421237833ea134b00" [label="docker-image://docker.io/library/ruby:2.1.6" shape="ellipse"];
  "sha256:9663fbe0ad15b89fc97e7484c001e2ba6b77413c340b2130094ce7e7a52f243d" [label="/bin/sh -c mkdir -p /opt/pacproxy" shape="box"];
  "sha256:f884b6cae2435479d7eade9d6fffdfb3137bccfb7c98132501b002ade86d86c5" [label="/bin/sh -c mkdir -p /opt/pacproxy/work" shape="box"];
  "sha256:c7fbc4e8887041a346c87db567201b5e5de9e0aacd11509b8634d4451ea9ac89" [label="mkdir{path=/opt/pacproxy}" shape="note"];
  "sha256:395efc63b2d17a253a414ad652f0760a9e478966ece62bee9fc1829c753cd88c" [label="local://context" shape="ellipse"];
  "sha256:31b211d44d7b57f2deac73bf9347d80fbfc553dcfc7bec0235280b88c01de2c2" [label="copy{src=/Gemfile, dest=/opt/pacproxy/}" shape="note"];
  "sha256:ce0b2b14cd2ad923044665f8713ec42af5db334cdec3e69b06e317f3d43174c7" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:1a79f8c5ca8e1738a3e6e9873b9bd2844005a9e800c234e142590da88bba8f1e" [label="copy{src=/pacproxy.yml, dest=/opt/pacproxy/work/pacproxy.yml}" shape="note"];
  "sha256:2b8cc11ebb3473b6a7eb5a168b2796918eeca0595856a12b2174c3a25e54901c" [label="copy{src=/proxy.pac, dest=/opt/pacproxy/work/proxy.pac}" shape="note"];
  "sha256:b61539020dd87b97e5ac8bff5c0e7e22fb9f3f0bf58702b4d0e7a8e38c0e9047" [label="mkdir{path=/opt/pacproxy/work}" shape="note"];
  "sha256:b7e65f7fb8ee00e403d54189e7ef8183b0ca5912c4fadcfaa4c641ad8240fd30" [label="sha256:b7e65f7fb8ee00e403d54189e7ef8183b0ca5912c4fadcfaa4c641ad8240fd30" shape="plaintext"];
  "sha256:f13a08676d1f3bdbe656d5f18fda6e3318ba6b24d60f084421237833ea134b00" -> "sha256:9663fbe0ad15b89fc97e7484c001e2ba6b77413c340b2130094ce7e7a52f243d" [label=""];
  "sha256:9663fbe0ad15b89fc97e7484c001e2ba6b77413c340b2130094ce7e7a52f243d" -> "sha256:f884b6cae2435479d7eade9d6fffdfb3137bccfb7c98132501b002ade86d86c5" [label=""];
  "sha256:f884b6cae2435479d7eade9d6fffdfb3137bccfb7c98132501b002ade86d86c5" -> "sha256:c7fbc4e8887041a346c87db567201b5e5de9e0aacd11509b8634d4451ea9ac89" [label=""];
  "sha256:c7fbc4e8887041a346c87db567201b5e5de9e0aacd11509b8634d4451ea9ac89" -> "sha256:31b211d44d7b57f2deac73bf9347d80fbfc553dcfc7bec0235280b88c01de2c2" [label=""];
  "sha256:395efc63b2d17a253a414ad652f0760a9e478966ece62bee9fc1829c753cd88c" -> "sha256:31b211d44d7b57f2deac73bf9347d80fbfc553dcfc7bec0235280b88c01de2c2" [label=""];
  "sha256:31b211d44d7b57f2deac73bf9347d80fbfc553dcfc7bec0235280b88c01de2c2" -> "sha256:ce0b2b14cd2ad923044665f8713ec42af5db334cdec3e69b06e317f3d43174c7" [label=""];
  "sha256:ce0b2b14cd2ad923044665f8713ec42af5db334cdec3e69b06e317f3d43174c7" -> "sha256:1a79f8c5ca8e1738a3e6e9873b9bd2844005a9e800c234e142590da88bba8f1e" [label=""];
  "sha256:395efc63b2d17a253a414ad652f0760a9e478966ece62bee9fc1829c753cd88c" -> "sha256:1a79f8c5ca8e1738a3e6e9873b9bd2844005a9e800c234e142590da88bba8f1e" [label=""];
  "sha256:1a79f8c5ca8e1738a3e6e9873b9bd2844005a9e800c234e142590da88bba8f1e" -> "sha256:2b8cc11ebb3473b6a7eb5a168b2796918eeca0595856a12b2174c3a25e54901c" [label=""];
  "sha256:395efc63b2d17a253a414ad652f0760a9e478966ece62bee9fc1829c753cd88c" -> "sha256:2b8cc11ebb3473b6a7eb5a168b2796918eeca0595856a12b2174c3a25e54901c" [label=""];
  "sha256:2b8cc11ebb3473b6a7eb5a168b2796918eeca0595856a12b2174c3a25e54901c" -> "sha256:b61539020dd87b97e5ac8bff5c0e7e22fb9f3f0bf58702b4d0e7a8e38c0e9047" [label=""];
  "sha256:b61539020dd87b97e5ac8bff5c0e7e22fb9f3f0bf58702b4d0e7a8e38c0e9047" -> "sha256:b7e65f7fb8ee00e403d54189e7ef8183b0ca5912c4fadcfaa4c641ad8240fd30" [label=""];
}

