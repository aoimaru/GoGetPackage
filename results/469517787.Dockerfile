[app/sources/469517787.Dockerfile]
digraph {
  "sha256:fc32de0c2ff0e29b43eb175565e527c7f4e6cf6b9880e171bf8590ef7cd1663b" [label="docker-image://docker.io/aarch64/ubuntu:16.04" shape="ellipse"];
  "sha256:34bcf090b43b32a87a8c91948d70aa38def1040e3b4f49fad1f4572b904f3e84" [label="local://context" shape="ellipse"];
  "sha256:09221bc791144344a377dbb9262b386e051a5d3ea382b3633a822bedda4e580b" [label="copy{src=/etcd, dest=/usr/local/bin/}" shape="note"];
  "sha256:98068b7d6dba5091c83ca484ff28da48406606db5fdd36dbef669e071a1d47d0" [label="copy{src=/etcdctl, dest=/usr/local/bin/}" shape="note"];
  "sha256:bc92654e0db3ecbda8ff1205a8ad4a3c28c00bbcf81dacee121b1d3221c5d99e" [label="copy{src=/var/etcd, dest=/var/etcd}" shape="note"];
  "sha256:efcc5dc9e471726e111e49a5cc2060b73799c3b29639935106cb76a518ca5c66" [label="copy{src=/var/lib/etcd, dest=/var/lib/etcd}" shape="note"];
  "sha256:8cec45cab366bd34cb7bc08938b2398de6355c9ea68b0dc4f89b870bdb69b42b" [label="sha256:8cec45cab366bd34cb7bc08938b2398de6355c9ea68b0dc4f89b870bdb69b42b" shape="plaintext"];
  "sha256:fc32de0c2ff0e29b43eb175565e527c7f4e6cf6b9880e171bf8590ef7cd1663b" -> "sha256:09221bc791144344a377dbb9262b386e051a5d3ea382b3633a822bedda4e580b" [label=""];
  "sha256:34bcf090b43b32a87a8c91948d70aa38def1040e3b4f49fad1f4572b904f3e84" -> "sha256:09221bc791144344a377dbb9262b386e051a5d3ea382b3633a822bedda4e580b" [label=""];
  "sha256:09221bc791144344a377dbb9262b386e051a5d3ea382b3633a822bedda4e580b" -> "sha256:98068b7d6dba5091c83ca484ff28da48406606db5fdd36dbef669e071a1d47d0" [label=""];
  "sha256:34bcf090b43b32a87a8c91948d70aa38def1040e3b4f49fad1f4572b904f3e84" -> "sha256:98068b7d6dba5091c83ca484ff28da48406606db5fdd36dbef669e071a1d47d0" [label=""];
  "sha256:98068b7d6dba5091c83ca484ff28da48406606db5fdd36dbef669e071a1d47d0" -> "sha256:bc92654e0db3ecbda8ff1205a8ad4a3c28c00bbcf81dacee121b1d3221c5d99e" [label=""];
  "sha256:34bcf090b43b32a87a8c91948d70aa38def1040e3b4f49fad1f4572b904f3e84" -> "sha256:bc92654e0db3ecbda8ff1205a8ad4a3c28c00bbcf81dacee121b1d3221c5d99e" [label=""];
  "sha256:bc92654e0db3ecbda8ff1205a8ad4a3c28c00bbcf81dacee121b1d3221c5d99e" -> "sha256:efcc5dc9e471726e111e49a5cc2060b73799c3b29639935106cb76a518ca5c66" [label=""];
  "sha256:34bcf090b43b32a87a8c91948d70aa38def1040e3b4f49fad1f4572b904f3e84" -> "sha256:efcc5dc9e471726e111e49a5cc2060b73799c3b29639935106cb76a518ca5c66" [label=""];
  "sha256:efcc5dc9e471726e111e49a5cc2060b73799c3b29639935106cb76a518ca5c66" -> "sha256:8cec45cab366bd34cb7bc08938b2398de6355c9ea68b0dc4f89b870bdb69b42b" [label=""];
}

