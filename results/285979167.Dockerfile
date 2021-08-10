[app/sources/285979167.Dockerfile]
digraph {
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:f26d33eaaf9ad8852ba26c8db7806d3c20fbf4456895ebd1f8c1af6092c386d4" [label="local://context" shape="ellipse"];
  "sha256:a1cf184f93c3bb1a42cea151f18e71d190e40fbcf45c108c184ac3a14c2ba0f3" [label="copy{src=/prometheus, dest=/bin/prometheus}" shape="note"];
  "sha256:66130cfc63b769fa433c5874b26509d043065bf3d92ac03780eabcf6e4ec02bc" [label="copy{src=/promtool, dest=/bin/promtool}" shape="note"];
  "sha256:fd88442e67d5258b75fba003ba35bfa5a886186751f51884867099ee7a7b12ec" [label="copy{src=/documentation/examples/prometheus.yml, dest=/etc/prometheus/prometheus.yml}" shape="note"];
  "sha256:b495c6965b9cffbd344dd7cbcc258daa71b327d753a70b5f73c6eda6da2a1ba5" [label="copy{src=/console_libraries, dest=/usr/share/prometheus/console_libraries/}" shape="note"];
  "sha256:08636d2021e4d8b398ccc469f528b3c9b8b8453d3e9011e340b345081252a349" [label="copy{src=/consoles, dest=/usr/share/prometheus/consoles/}" shape="note"];
  "sha256:d733b9e14d2aebaccbd028fba781a0b58e1f8330dd98fd195ba245284bc73012" [label="/bin/sh -c ln -s /usr/share/prometheus/console_libraries /usr/share/prometheus/consoles/ /etc/prometheus/" shape="box"];
  "sha256:d65dab5a6c0a28f060900b92e27f551b7924bb8bc6cac013421531f8f3c74411" [label="mkdir{path=/prometheus}" shape="note"];
  "sha256:076c83e67aab97bab4b3081edff74ea398504d094866c70725f3af8af4de5928" [label="sha256:076c83e67aab97bab4b3081edff74ea398504d094866c70725f3af8af4de5928" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:a1cf184f93c3bb1a42cea151f18e71d190e40fbcf45c108c184ac3a14c2ba0f3" [label=""];
  "sha256:f26d33eaaf9ad8852ba26c8db7806d3c20fbf4456895ebd1f8c1af6092c386d4" -> "sha256:a1cf184f93c3bb1a42cea151f18e71d190e40fbcf45c108c184ac3a14c2ba0f3" [label=""];
  "sha256:a1cf184f93c3bb1a42cea151f18e71d190e40fbcf45c108c184ac3a14c2ba0f3" -> "sha256:66130cfc63b769fa433c5874b26509d043065bf3d92ac03780eabcf6e4ec02bc" [label=""];
  "sha256:f26d33eaaf9ad8852ba26c8db7806d3c20fbf4456895ebd1f8c1af6092c386d4" -> "sha256:66130cfc63b769fa433c5874b26509d043065bf3d92ac03780eabcf6e4ec02bc" [label=""];
  "sha256:66130cfc63b769fa433c5874b26509d043065bf3d92ac03780eabcf6e4ec02bc" -> "sha256:fd88442e67d5258b75fba003ba35bfa5a886186751f51884867099ee7a7b12ec" [label=""];
  "sha256:f26d33eaaf9ad8852ba26c8db7806d3c20fbf4456895ebd1f8c1af6092c386d4" -> "sha256:fd88442e67d5258b75fba003ba35bfa5a886186751f51884867099ee7a7b12ec" [label=""];
  "sha256:fd88442e67d5258b75fba003ba35bfa5a886186751f51884867099ee7a7b12ec" -> "sha256:b495c6965b9cffbd344dd7cbcc258daa71b327d753a70b5f73c6eda6da2a1ba5" [label=""];
  "sha256:f26d33eaaf9ad8852ba26c8db7806d3c20fbf4456895ebd1f8c1af6092c386d4" -> "sha256:b495c6965b9cffbd344dd7cbcc258daa71b327d753a70b5f73c6eda6da2a1ba5" [label=""];
  "sha256:b495c6965b9cffbd344dd7cbcc258daa71b327d753a70b5f73c6eda6da2a1ba5" -> "sha256:08636d2021e4d8b398ccc469f528b3c9b8b8453d3e9011e340b345081252a349" [label=""];
  "sha256:f26d33eaaf9ad8852ba26c8db7806d3c20fbf4456895ebd1f8c1af6092c386d4" -> "sha256:08636d2021e4d8b398ccc469f528b3c9b8b8453d3e9011e340b345081252a349" [label=""];
  "sha256:08636d2021e4d8b398ccc469f528b3c9b8b8453d3e9011e340b345081252a349" -> "sha256:d733b9e14d2aebaccbd028fba781a0b58e1f8330dd98fd195ba245284bc73012" [label=""];
  "sha256:d733b9e14d2aebaccbd028fba781a0b58e1f8330dd98fd195ba245284bc73012" -> "sha256:d65dab5a6c0a28f060900b92e27f551b7924bb8bc6cac013421531f8f3c74411" [label=""];
  "sha256:d65dab5a6c0a28f060900b92e27f551b7924bb8bc6cac013421531f8f3c74411" -> "sha256:076c83e67aab97bab4b3081edff74ea398504d094866c70725f3af8af4de5928" [label=""];
}

