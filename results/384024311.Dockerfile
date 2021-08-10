[app/sources/384024311.Dockerfile]
digraph {
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:c260ddf21f29bc1128cb9c16e7cb3bde362897d0558aa7da96a9daf8b8448448" [label="local://context" shape="ellipse"];
  "sha256:0e79fc8df5ed6e6e724c7a72d269babe16175e2f8f532d9f1df4838204230560" [label="copy{src=/pushgateway, dest=/bin/pushgateway}" shape="note"];
  "sha256:480fa546fc6d38c677e4d051c8fc737223cc786f93ae1a5e4f8a1257e1d831ae" [label="/bin/sh -c mkdir -p /pushgateway && chown nobody:nogroup /pushgateway" shape="box"];
  "sha256:3d5b7f9010869058cb840b5d1e09273c118a600bb8d05781738ef8347bf90bc8" [label="mkdir{path=/pushgateway}" shape="note"];
  "sha256:08fc848dd24a55364e8f506333d113929bb14a3e987397216b87917e1495a4c2" [label="sha256:08fc848dd24a55364e8f506333d113929bb14a3e987397216b87917e1495a4c2" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:0e79fc8df5ed6e6e724c7a72d269babe16175e2f8f532d9f1df4838204230560" [label=""];
  "sha256:c260ddf21f29bc1128cb9c16e7cb3bde362897d0558aa7da96a9daf8b8448448" -> "sha256:0e79fc8df5ed6e6e724c7a72d269babe16175e2f8f532d9f1df4838204230560" [label=""];
  "sha256:0e79fc8df5ed6e6e724c7a72d269babe16175e2f8f532d9f1df4838204230560" -> "sha256:480fa546fc6d38c677e4d051c8fc737223cc786f93ae1a5e4f8a1257e1d831ae" [label=""];
  "sha256:480fa546fc6d38c677e4d051c8fc737223cc786f93ae1a5e4f8a1257e1d831ae" -> "sha256:3d5b7f9010869058cb840b5d1e09273c118a600bb8d05781738ef8347bf90bc8" [label=""];
  "sha256:3d5b7f9010869058cb840b5d1e09273c118a600bb8d05781738ef8347bf90bc8" -> "sha256:08fc848dd24a55364e8f506333d113929bb14a3e987397216b87917e1495a4c2" [label=""];
}

