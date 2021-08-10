[app/sources/333364861.Dockerfile]
digraph {
  "sha256:721777789c9c8a0b206ae236687d767139f12cb87a67c80d9e2caa3e9dd5c264" [label="docker-image://docker.elastic.co/logstash/logstash-oss:7.0.1@sha256:5f003b6294c2680a14d24b03e8ba49988fb053f7a005b8e2015bafeeed26d42d" shape="ellipse"];
  "sha256:83c206d28497d1ae98ab80bcdbb81e07061506c693fb08c7695a0a6a82f57549" [label="mkdir{path=/usr/share/logstash/config}" shape="note"];
  "sha256:b55f0dab9ba1dc1e6b1f2e2906451cf1ff449c93532ec9b4a009851889ef023c" [label="local://context" shape="ellipse"];
  "sha256:17c83b0539ccb8eed791170298a6ebd39046b94b5b9a325bb4e9262344c7141f" [label="copy{src=/docker_assets/logstash.yml, dest=/usr/share/logstash/config/}" shape="note"];
  "sha256:e28a2a82cfe21510a055f0c639c1e212b0adfdbfb4172c5d36ec23995c6dae3c" [label="copy{src=/docker_assets/pipelines.yml, dest=/usr/share/logstash/config/}" shape="note"];
  "sha256:693d78c71c23bc55f539d99e70f2aa0e3b6dbeca83b2cb574dc9ba11b4839356" [label="mkdir{path=/etc/logstash/synesis_lite_syslog}" shape="note"];
  "sha256:6c0f355d469bfc83bc046ca1d8289471251384b49df07d1264554f39ada2182d" [label="copy{src=/logstash/synesis_lite_syslog, dest=/etc/logstash/synesis_lite_syslog/}" shape="note"];
  "sha256:c01bef95dda4dbd8060b3025603c0ea0473d1584eeaf1ef82187f3589f73c255" [label="sha256:c01bef95dda4dbd8060b3025603c0ea0473d1584eeaf1ef82187f3589f73c255" shape="plaintext"];
  "sha256:721777789c9c8a0b206ae236687d767139f12cb87a67c80d9e2caa3e9dd5c264" -> "sha256:83c206d28497d1ae98ab80bcdbb81e07061506c693fb08c7695a0a6a82f57549" [label=""];
  "sha256:83c206d28497d1ae98ab80bcdbb81e07061506c693fb08c7695a0a6a82f57549" -> "sha256:17c83b0539ccb8eed791170298a6ebd39046b94b5b9a325bb4e9262344c7141f" [label=""];
  "sha256:b55f0dab9ba1dc1e6b1f2e2906451cf1ff449c93532ec9b4a009851889ef023c" -> "sha256:17c83b0539ccb8eed791170298a6ebd39046b94b5b9a325bb4e9262344c7141f" [label=""];
  "sha256:17c83b0539ccb8eed791170298a6ebd39046b94b5b9a325bb4e9262344c7141f" -> "sha256:e28a2a82cfe21510a055f0c639c1e212b0adfdbfb4172c5d36ec23995c6dae3c" [label=""];
  "sha256:b55f0dab9ba1dc1e6b1f2e2906451cf1ff449c93532ec9b4a009851889ef023c" -> "sha256:e28a2a82cfe21510a055f0c639c1e212b0adfdbfb4172c5d36ec23995c6dae3c" [label=""];
  "sha256:e28a2a82cfe21510a055f0c639c1e212b0adfdbfb4172c5d36ec23995c6dae3c" -> "sha256:693d78c71c23bc55f539d99e70f2aa0e3b6dbeca83b2cb574dc9ba11b4839356" [label=""];
  "sha256:693d78c71c23bc55f539d99e70f2aa0e3b6dbeca83b2cb574dc9ba11b4839356" -> "sha256:6c0f355d469bfc83bc046ca1d8289471251384b49df07d1264554f39ada2182d" [label=""];
  "sha256:b55f0dab9ba1dc1e6b1f2e2906451cf1ff449c93532ec9b4a009851889ef023c" -> "sha256:6c0f355d469bfc83bc046ca1d8289471251384b49df07d1264554f39ada2182d" [label=""];
  "sha256:6c0f355d469bfc83bc046ca1d8289471251384b49df07d1264554f39ada2182d" -> "sha256:c01bef95dda4dbd8060b3025603c0ea0473d1584eeaf1ef82187f3589f73c255" [label=""];
}

