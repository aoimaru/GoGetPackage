[app/sources/242542266.Dockerfile]
digraph {
  "sha256:e8e607a249e6eacc6473ae38734c280b45a64c188ce508f1c056d7cb2dcba46d" [label="docker-image://docker.io/mhart/alpine-node:7" shape="ellipse"];
  "sha256:2ee8ac01459763117c633731eb6d9fc529cef55b980e4772d7d7cea5dd96b302" [label="/bin/sh -c apk add --no-cache make gcc g++ python" shape="box"];
  "sha256:977c6506a6a15867e8e96d538ed287a5216c7351df245b7446783e69b1d1c6c2" [label="local://context" shape="ellipse"];
  "sha256:0b6fb04fe27855051bc77ec73eb85d4c8dc57edfd23c279e41a212d7926f973a" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:3f475300f55ae9d521daae79a3c8db214c1cb32aed17a5b8e42b55d651227339" [label="mkdir{path=/src}" shape="note"];
  "sha256:f06799febc7caa99a98db6accfb84bdd51d14b21101ac955e2e54f21427e6d9a" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:35b1937524c03dc3bac757e40e87f083ab2b6cb9619155425469d31f2b5108c4" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:cc00f7ed3bb31739b64f53f298b5bb41bb836858e6b2294446db24091f6accb0" [label="sha256:cc00f7ed3bb31739b64f53f298b5bb41bb836858e6b2294446db24091f6accb0" shape="plaintext"];
  "sha256:e8e607a249e6eacc6473ae38734c280b45a64c188ce508f1c056d7cb2dcba46d" -> "sha256:2ee8ac01459763117c633731eb6d9fc529cef55b980e4772d7d7cea5dd96b302" [label=""];
  "sha256:2ee8ac01459763117c633731eb6d9fc529cef55b980e4772d7d7cea5dd96b302" -> "sha256:0b6fb04fe27855051bc77ec73eb85d4c8dc57edfd23c279e41a212d7926f973a" [label=""];
  "sha256:977c6506a6a15867e8e96d538ed287a5216c7351df245b7446783e69b1d1c6c2" -> "sha256:0b6fb04fe27855051bc77ec73eb85d4c8dc57edfd23c279e41a212d7926f973a" [label=""];
  "sha256:0b6fb04fe27855051bc77ec73eb85d4c8dc57edfd23c279e41a212d7926f973a" -> "sha256:3f475300f55ae9d521daae79a3c8db214c1cb32aed17a5b8e42b55d651227339" [label=""];
  "sha256:3f475300f55ae9d521daae79a3c8db214c1cb32aed17a5b8e42b55d651227339" -> "sha256:f06799febc7caa99a98db6accfb84bdd51d14b21101ac955e2e54f21427e6d9a" [label=""];
  "sha256:f06799febc7caa99a98db6accfb84bdd51d14b21101ac955e2e54f21427e6d9a" -> "sha256:35b1937524c03dc3bac757e40e87f083ab2b6cb9619155425469d31f2b5108c4" [label=""];
  "sha256:35b1937524c03dc3bac757e40e87f083ab2b6cb9619155425469d31f2b5108c4" -> "sha256:cc00f7ed3bb31739b64f53f298b5bb41bb836858e6b2294446db24091f6accb0" [label=""];
}

