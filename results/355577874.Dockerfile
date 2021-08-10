[app/sources/355577874.Dockerfile]
digraph {
  "sha256:feec9d6b1d1571d43464ff8ae838b25f97bb7be0f5ecedad1b96faa1089a2ab3" [label="local://context" shape="ellipse"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:b51eacb272597c7d0729e0acfbb4cf176ef3103118191aee724ec0608b7afcdf" [label="copy{src=/entrypoint.sh, dest=/opt/entrypoint.sh}" shape="note"];
  "sha256:fb10686f473bcfbc508d67c15e6d9b32d75967af348849b49c070c18e2fd5f6a" [label="/bin/sh -c mkdir /opt/jmx_prometheus_httpserver   && wget 'http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_httpserver/0.6/jmx_prometheus_httpserver-0.6-jar-with-dependencies.jar'       -O /opt/jmx_prometheus_httpserver/jmx_prometheus_httpserver.jar   && curl -jkSL https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 -o /usr/local/bin/confd   && chmod +x /usr/local/bin/confd   && chmod +x /opt/entrypoint.sh" shape="box"];
  "sha256:84307eb0f9186e492862920e5784e87cd759f1d06013797cb223651c807b164d" [label="copy{src=/confd, dest=/etc/confd}" shape="note"];
  "sha256:a6725b2015336a7b0552255ba7ee84a5e1df4dbe25b515f8dd6661e5381a6d11" [label="sha256:a6725b2015336a7b0552255ba7ee84a5e1df4dbe25b515f8dd6661e5381a6d11" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:b51eacb272597c7d0729e0acfbb4cf176ef3103118191aee724ec0608b7afcdf" [label=""];
  "sha256:feec9d6b1d1571d43464ff8ae838b25f97bb7be0f5ecedad1b96faa1089a2ab3" -> "sha256:b51eacb272597c7d0729e0acfbb4cf176ef3103118191aee724ec0608b7afcdf" [label=""];
  "sha256:b51eacb272597c7d0729e0acfbb4cf176ef3103118191aee724ec0608b7afcdf" -> "sha256:fb10686f473bcfbc508d67c15e6d9b32d75967af348849b49c070c18e2fd5f6a" [label=""];
  "sha256:fb10686f473bcfbc508d67c15e6d9b32d75967af348849b49c070c18e2fd5f6a" -> "sha256:84307eb0f9186e492862920e5784e87cd759f1d06013797cb223651c807b164d" [label=""];
  "sha256:feec9d6b1d1571d43464ff8ae838b25f97bb7be0f5ecedad1b96faa1089a2ab3" -> "sha256:84307eb0f9186e492862920e5784e87cd759f1d06013797cb223651c807b164d" [label=""];
  "sha256:84307eb0f9186e492862920e5784e87cd759f1d06013797cb223651c807b164d" -> "sha256:a6725b2015336a7b0552255ba7ee84a5e1df4dbe25b515f8dd6661e5381a6d11" [label=""];
}

