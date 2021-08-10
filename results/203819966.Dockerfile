[app/sources/203819966.Dockerfile]
digraph {
  "sha256:1fb1def119cce63b2ee70fb5852a1a3da64b542bceacbd0cab5044f8de220b24" [label="docker-image://docker.io/resin/armhf-alpine:latest" shape="ellipse"];
  "sha256:34a23d717dc313ab746eef281b3d82411c8f2b598fdf0725700df9b1127db954" [label="/bin/sh -c apk add --update ruby" shape="box"];
  "sha256:9d3281990431aaae34b53baec3e796d2256eb59056d7635150a810236a101d9a" [label="mkdir{path=/downloads}" shape="note"];
  "sha256:8e86fb35e1a4a39d1ba1bc0481dce88493e458b08bb1b83f1420f85c3bb59551" [label="sha256:8e86fb35e1a4a39d1ba1bc0481dce88493e458b08bb1b83f1420f85c3bb59551" shape="plaintext"];
  "sha256:1fb1def119cce63b2ee70fb5852a1a3da64b542bceacbd0cab5044f8de220b24" -> "sha256:34a23d717dc313ab746eef281b3d82411c8f2b598fdf0725700df9b1127db954" [label=""];
  "sha256:34a23d717dc313ab746eef281b3d82411c8f2b598fdf0725700df9b1127db954" -> "sha256:9d3281990431aaae34b53baec3e796d2256eb59056d7635150a810236a101d9a" [label=""];
  "sha256:9d3281990431aaae34b53baec3e796d2256eb59056d7635150a810236a101d9a" -> "sha256:8e86fb35e1a4a39d1ba1bc0481dce88493e458b08bb1b83f1420f85c3bb59551" [label=""];
}

