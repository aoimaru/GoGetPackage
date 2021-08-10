[app/sources/298813072.Dockerfile]
digraph {
  "sha256:82523df205233ef4aa6a16c4d6abbb1b5c86acab0b42afc21d87fdb550ddc4aa" [label="docker-image://docker.io/starkandwayne/rabbitmq:edge" shape="ellipse"];
  "sha256:6312833c756d32e1dee5ce3ece7a881b8efbb13794473218ea9e0db3355a5460" [label="/bin/sh -c hab pkg install core/jq-static && hab pkg binlink core/jq-static jq" shape="box"];
  "sha256:93d915c7707cd1191e4dd77c7d54bf0966642e74ae35e1c902c3fc9edcad921a" [label="/bin/sh -c hab pkg install core/curl && hab pkg binlink core/curl curl" shape="box"];
  "sha256:963c0d43bfe14cde192779753fa8512c59c52d28bf137162f5215d522c8a452c" [label="/bin/sh -c hab pkg install core/bash && hab pkg binlink core/bash bash" shape="box"];
  "sha256:42d9d17258a1bf74f526a1dc242d9da3acd15e3dd2f3ad28fce1a15b52df1935" [label="local://context" shape="ellipse"];
  "sha256:ab07c5c5a8bd2e427c596a21b23bee66a941236999fd30ea7d046cdc0eb42e72" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:0b109189180bb74a1e6892ca3f9d6ef3ae27aeb3f2f068fcebdb457dfbf605e0" [label="/bin/sh -c mkdir -p /rabbitmq" shape="box"];
  "sha256:13102e9235b9ba9a66ff561dccb2a4947c8ef0d27e991711b5a2f289a38a5e7e" [label="/bin/sh -c echo Gm0+QGpGcsEcxjJPEBY/Tg== > /rabbitmq/.erlang.cookie" shape="box"];
  "sha256:068926fc527b2b9d51345bac3e38ea0a905200f31d90200bd869699e79a6b6f5" [label="/bin/sh -c chmod 600 /rabbitmq/.erlang.cookie" shape="box"];
  "sha256:0cbc54ea3d033c8802ba5f7ec146b36a8498246d1d2e105fa3be0fc0fb57635d" [label="sha256:0cbc54ea3d033c8802ba5f7ec146b36a8498246d1d2e105fa3be0fc0fb57635d" shape="plaintext"];
  "sha256:82523df205233ef4aa6a16c4d6abbb1b5c86acab0b42afc21d87fdb550ddc4aa" -> "sha256:6312833c756d32e1dee5ce3ece7a881b8efbb13794473218ea9e0db3355a5460" [label=""];
  "sha256:6312833c756d32e1dee5ce3ece7a881b8efbb13794473218ea9e0db3355a5460" -> "sha256:93d915c7707cd1191e4dd77c7d54bf0966642e74ae35e1c902c3fc9edcad921a" [label=""];
  "sha256:93d915c7707cd1191e4dd77c7d54bf0966642e74ae35e1c902c3fc9edcad921a" -> "sha256:963c0d43bfe14cde192779753fa8512c59c52d28bf137162f5215d522c8a452c" [label=""];
  "sha256:963c0d43bfe14cde192779753fa8512c59c52d28bf137162f5215d522c8a452c" -> "sha256:ab07c5c5a8bd2e427c596a21b23bee66a941236999fd30ea7d046cdc0eb42e72" [label=""];
  "sha256:42d9d17258a1bf74f526a1dc242d9da3acd15e3dd2f3ad28fce1a15b52df1935" -> "sha256:ab07c5c5a8bd2e427c596a21b23bee66a941236999fd30ea7d046cdc0eb42e72" [label=""];
  "sha256:ab07c5c5a8bd2e427c596a21b23bee66a941236999fd30ea7d046cdc0eb42e72" -> "sha256:0b109189180bb74a1e6892ca3f9d6ef3ae27aeb3f2f068fcebdb457dfbf605e0" [label=""];
  "sha256:0b109189180bb74a1e6892ca3f9d6ef3ae27aeb3f2f068fcebdb457dfbf605e0" -> "sha256:13102e9235b9ba9a66ff561dccb2a4947c8ef0d27e991711b5a2f289a38a5e7e" [label=""];
  "sha256:13102e9235b9ba9a66ff561dccb2a4947c8ef0d27e991711b5a2f289a38a5e7e" -> "sha256:068926fc527b2b9d51345bac3e38ea0a905200f31d90200bd869699e79a6b6f5" [label=""];
  "sha256:068926fc527b2b9d51345bac3e38ea0a905200f31d90200bd869699e79a6b6f5" -> "sha256:0cbc54ea3d033c8802ba5f7ec146b36a8498246d1d2e105fa3be0fc0fb57635d" [label=""];
}

