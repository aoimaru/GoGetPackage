[app/sources/252782508.Dockerfile]
digraph {
  "sha256:5c1f0112e25fc366b60081643e9cf192298271a4504634bae2d3655bdefcf97e" [label="local://context" shape="ellipse"];
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" [label="docker-image://docker.io/gliderlabs/alpine:3.3" shape="ellipse"];
  "sha256:1b2043f0ae724a2b71897e675ad47bf10ed677d89c13a1688e00ad1a42eac9ae" [label="/bin/sh -c apk add --no-cache curl bash jq" shape="box"];
  "sha256:ce4c95b87bec56585b556ce498f0c727c61abd46f5e453a2e3e600750cf9c15f" [label="copy{src=/check, dest=/opt/resource/check}" shape="note"];
  "sha256:823cf13eeba1fa734f3c5c65154edae9c2fbd669c0572dac6ec4f59477c67eec" [label="copy{src=/in, dest=/opt/resource/in}" shape="note"];
  "sha256:b2489e267008fcb26027b1eb1b233c8731fb80fcd7938e5c845995ff77e337bb" [label="copy{src=/out, dest=/opt/resource/out}" shape="note"];
  "sha256:9a4dce57af80ed6d5fcaca06fd0cc5312c960f0c2d37c4f2756b66dce0fca098" [label="/bin/sh -c chmod +x /opt/resource/out /opt/resource/in /opt/resource/check" shape="box"];
  "sha256:c79009132d63ea74df168f19787bcceda3464f45461d9a2b910e6207a3c6ecea" [label="copy{src=/test, dest=/opt/resource-tests/}" shape="note"];
  "sha256:0f960f0bf1d894a99e8d79aa189af55446569c93a013a8c6a32eec7d1f22be35" [label="/bin/sh -c /opt/resource-tests/all.sh" shape="box"];
  "sha256:0a17c56519b9cd1f68c4bb61f30d38c3e4005980b09d28e1a4c8e57f30da7b80" [label="sha256:0a17c56519b9cd1f68c4bb61f30d38c3e4005980b09d28e1a4c8e57f30da7b80" shape="plaintext"];
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" -> "sha256:1b2043f0ae724a2b71897e675ad47bf10ed677d89c13a1688e00ad1a42eac9ae" [label=""];
  "sha256:1b2043f0ae724a2b71897e675ad47bf10ed677d89c13a1688e00ad1a42eac9ae" -> "sha256:ce4c95b87bec56585b556ce498f0c727c61abd46f5e453a2e3e600750cf9c15f" [label=""];
  "sha256:5c1f0112e25fc366b60081643e9cf192298271a4504634bae2d3655bdefcf97e" -> "sha256:ce4c95b87bec56585b556ce498f0c727c61abd46f5e453a2e3e600750cf9c15f" [label=""];
  "sha256:ce4c95b87bec56585b556ce498f0c727c61abd46f5e453a2e3e600750cf9c15f" -> "sha256:823cf13eeba1fa734f3c5c65154edae9c2fbd669c0572dac6ec4f59477c67eec" [label=""];
  "sha256:5c1f0112e25fc366b60081643e9cf192298271a4504634bae2d3655bdefcf97e" -> "sha256:823cf13eeba1fa734f3c5c65154edae9c2fbd669c0572dac6ec4f59477c67eec" [label=""];
  "sha256:823cf13eeba1fa734f3c5c65154edae9c2fbd669c0572dac6ec4f59477c67eec" -> "sha256:b2489e267008fcb26027b1eb1b233c8731fb80fcd7938e5c845995ff77e337bb" [label=""];
  "sha256:5c1f0112e25fc366b60081643e9cf192298271a4504634bae2d3655bdefcf97e" -> "sha256:b2489e267008fcb26027b1eb1b233c8731fb80fcd7938e5c845995ff77e337bb" [label=""];
  "sha256:b2489e267008fcb26027b1eb1b233c8731fb80fcd7938e5c845995ff77e337bb" -> "sha256:9a4dce57af80ed6d5fcaca06fd0cc5312c960f0c2d37c4f2756b66dce0fca098" [label=""];
  "sha256:9a4dce57af80ed6d5fcaca06fd0cc5312c960f0c2d37c4f2756b66dce0fca098" -> "sha256:c79009132d63ea74df168f19787bcceda3464f45461d9a2b910e6207a3c6ecea" [label=""];
  "sha256:5c1f0112e25fc366b60081643e9cf192298271a4504634bae2d3655bdefcf97e" -> "sha256:c79009132d63ea74df168f19787bcceda3464f45461d9a2b910e6207a3c6ecea" [label=""];
  "sha256:c79009132d63ea74df168f19787bcceda3464f45461d9a2b910e6207a3c6ecea" -> "sha256:0f960f0bf1d894a99e8d79aa189af55446569c93a013a8c6a32eec7d1f22be35" [label=""];
  "sha256:0f960f0bf1d894a99e8d79aa189af55446569c93a013a8c6a32eec7d1f22be35" -> "sha256:0a17c56519b9cd1f68c4bb61f30d38c3e4005980b09d28e1a4c8e57f30da7b80" [label=""];
}

