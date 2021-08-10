[app/sources/280829016.Dockerfile]
digraph {
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:3e6749b0eac5a63cecc8b2ff984283cf5ce89f59f2c84fafd1ae4acf4a9c1e9f" [label="local://context" shape="ellipse"];
  "sha256:df07c4fe99ed6fa9cfd83d38f8c0aa7348d024464717e7577bc76150b3194735" [label="copy{src=/prometheus-webhook-dingtalk, dest=/bin/prometheus-webhook-dingtalk}" shape="note"];
  "sha256:47fc39c9f5d3eec8af6f5fa8dd068efc44129c23a9cca84f84971d56e9602922" [label="copy{src=/template/default.tmpl, dest=/usr/share/prometheus-webhook-dingtalk/template/default.tmpl}" shape="note"];
  "sha256:2650e15e4e16411e4bc04513194b53b9a382c18ece970064fcc3710cb0a26984" [label="sha256:2650e15e4e16411e4bc04513194b53b9a382c18ece970064fcc3710cb0a26984" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:df07c4fe99ed6fa9cfd83d38f8c0aa7348d024464717e7577bc76150b3194735" [label=""];
  "sha256:3e6749b0eac5a63cecc8b2ff984283cf5ce89f59f2c84fafd1ae4acf4a9c1e9f" -> "sha256:df07c4fe99ed6fa9cfd83d38f8c0aa7348d024464717e7577bc76150b3194735" [label=""];
  "sha256:df07c4fe99ed6fa9cfd83d38f8c0aa7348d024464717e7577bc76150b3194735" -> "sha256:47fc39c9f5d3eec8af6f5fa8dd068efc44129c23a9cca84f84971d56e9602922" [label=""];
  "sha256:3e6749b0eac5a63cecc8b2ff984283cf5ce89f59f2c84fafd1ae4acf4a9c1e9f" -> "sha256:47fc39c9f5d3eec8af6f5fa8dd068efc44129c23a9cca84f84971d56e9602922" [label=""];
  "sha256:47fc39c9f5d3eec8af6f5fa8dd068efc44129c23a9cca84f84971d56e9602922" -> "sha256:2650e15e4e16411e4bc04513194b53b9a382c18ece970064fcc3710cb0a26984" [label=""];
}

