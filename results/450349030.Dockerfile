[app/sources/450349030.Dockerfile]
digraph {
  "sha256:0922730618ff5af78cb908cec825f10906941d68e3536263f9eee9284696237b" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:7b2e538451ddcbff6e5765493db5e5ebd21eaf0444d0c127b035bedfff493da4" [label="mkdir{path=/opt}" shape="note"];
  "sha256:71b5e59bc5479d36d745c990bdee79e20f75df5a49b454eb0473c0bb824064cf" [label="copy{src=/package.json, dest=/opt/}" shape="note"];
  "sha256:02bbff5ddd4f6012e043dddebfbf946b210088876a000e2cffc33675dda9c856" [label="/bin/sh -c npm install" shape="box"];
  "sha256:0e745d94094921b2f5e594db690bd75ae5c93f4e0989f823d124226da18afb81" [label="copy{src=/, dest=/opt/}" shape="note"];
  "sha256:f4fa2f11aabfb4876d6c15eee660cbfb8474e35feb103fc241249f46fce8d0ea" [label="sha256:f4fa2f11aabfb4876d6c15eee660cbfb8474e35feb103fc241249f46fce8d0ea" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:7b2e538451ddcbff6e5765493db5e5ebd21eaf0444d0c127b035bedfff493da4" [label=""];
  "sha256:7b2e538451ddcbff6e5765493db5e5ebd21eaf0444d0c127b035bedfff493da4" -> "sha256:71b5e59bc5479d36d745c990bdee79e20f75df5a49b454eb0473c0bb824064cf" [label=""];
  "sha256:0922730618ff5af78cb908cec825f10906941d68e3536263f9eee9284696237b" -> "sha256:71b5e59bc5479d36d745c990bdee79e20f75df5a49b454eb0473c0bb824064cf" [label=""];
  "sha256:71b5e59bc5479d36d745c990bdee79e20f75df5a49b454eb0473c0bb824064cf" -> "sha256:02bbff5ddd4f6012e043dddebfbf946b210088876a000e2cffc33675dda9c856" [label=""];
  "sha256:02bbff5ddd4f6012e043dddebfbf946b210088876a000e2cffc33675dda9c856" -> "sha256:0e745d94094921b2f5e594db690bd75ae5c93f4e0989f823d124226da18afb81" [label=""];
  "sha256:0922730618ff5af78cb908cec825f10906941d68e3536263f9eee9284696237b" -> "sha256:0e745d94094921b2f5e594db690bd75ae5c93f4e0989f823d124226da18afb81" [label=""];
  "sha256:0e745d94094921b2f5e594db690bd75ae5c93f4e0989f823d124226da18afb81" -> "sha256:f4fa2f11aabfb4876d6c15eee660cbfb8474e35feb103fc241249f46fce8d0ea" [label=""];
}

