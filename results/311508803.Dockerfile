[app/sources/311508803.Dockerfile]
digraph {
  "sha256:f3729338488e04ccd98a85e2c3b92ad86afb16da9da2a6ff92d355d139a45c6a" [label="local://context" shape="ellipse"];
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" [label="docker-image://docker.io/library/ruby:2.3" shape="ellipse"];
  "sha256:79413587860a5d1b431a2716f590da114458b1d11648d6c18eecf8a857f7c558" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:6ea22c424c8264bebbd87c2549686e06a3daae67d2507ea568ef5694358ff046" [label="/bin/sh -c git clone https://github.com/OWASP/igoat.git /tmp/" shape="box"];
  "sha256:e14db3636600fcba604e0fd2f4ff4a7dd41b89a25d3cbac319837b849fa6975f" [label="/bin/sh -c mv /tmp/server/* /usr/src/app/" shape="box"];
  "sha256:a1e849717174cf4a4ac10ef3ddd64036d82cd3b146d0ee4017ad802882c7cdad" [label="copy{src=/startup.sh, dest=/}" shape="note"];
  "sha256:be0744cd403f2aded3972683d2132d9dfa496fe001c258387b634276e1932429" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e795f6353056290cafca034c5c4317a0272abb54930b602e5a9d47d6fb12c440" [label="sha256:e795f6353056290cafca034c5c4317a0272abb54930b602e5a9d47d6fb12c440" shape="plaintext"];
  "sha256:13b86560ec72be1af3a61870f362939873bbd6966fad043b43d8292343145c19" -> "sha256:79413587860a5d1b431a2716f590da114458b1d11648d6c18eecf8a857f7c558" [label=""];
  "sha256:79413587860a5d1b431a2716f590da114458b1d11648d6c18eecf8a857f7c558" -> "sha256:6ea22c424c8264bebbd87c2549686e06a3daae67d2507ea568ef5694358ff046" [label=""];
  "sha256:6ea22c424c8264bebbd87c2549686e06a3daae67d2507ea568ef5694358ff046" -> "sha256:e14db3636600fcba604e0fd2f4ff4a7dd41b89a25d3cbac319837b849fa6975f" [label=""];
  "sha256:e14db3636600fcba604e0fd2f4ff4a7dd41b89a25d3cbac319837b849fa6975f" -> "sha256:a1e849717174cf4a4ac10ef3ddd64036d82cd3b146d0ee4017ad802882c7cdad" [label=""];
  "sha256:f3729338488e04ccd98a85e2c3b92ad86afb16da9da2a6ff92d355d139a45c6a" -> "sha256:a1e849717174cf4a4ac10ef3ddd64036d82cd3b146d0ee4017ad802882c7cdad" [label=""];
  "sha256:a1e849717174cf4a4ac10ef3ddd64036d82cd3b146d0ee4017ad802882c7cdad" -> "sha256:be0744cd403f2aded3972683d2132d9dfa496fe001c258387b634276e1932429" [label=""];
  "sha256:be0744cd403f2aded3972683d2132d9dfa496fe001c258387b634276e1932429" -> "sha256:e795f6353056290cafca034c5c4317a0272abb54930b602e5a9d47d6fb12c440" [label=""];
}

