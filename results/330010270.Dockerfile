[app/sources/330010270.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d55987e490e8dc556903c95610522784b1165ea6c0620932d5c85a1a2af1d2b5" [label="/bin/sh -c apt-get -y update && apt-get -y install git wget curl nodejs ruby-dev npm nginx supervisor && apt-get clean all" shape="box"];
  "sha256:c1d9162434fd3645b52d4237f1b9e73e5d73953f92fef31ec2f040702b224063" [label="/bin/sh -c npm install -g n && n stable && npm install -g npm && npm install -g bower gulp browser-sync && gem install bundle" shape="box"];
  "sha256:e7ae048011f06beed7fb0373bed3c5a6683450c0b20783f0d7b2597ff712f6e0" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:f0feb130403c8293bb09d497b42fc59cc32a511169a29c3e95d80cb79f466347" [label="local://context" shape="ellipse"];
  "sha256:34dfd60704bc2e999f38ea0d0de59ae60e17765f4700d534daaf48e20c2debaf" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:0ec2a4fd6d4ba13440d32d464c8b793ce18f325ee4251a99ff7c17bbf6bb9073" [label="/bin/sh -c rm -rf /etc/nginx/sites-enabled/default && cp /app/config/nginx/nginx.conf /etc/nginx/ && cp /app/config/nginx/default /etc/nginx/sites-available/ && ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default && cp /app/config/supervisor/supervisord.conf /etc/supervisor/ && cp /app/config/supervisor/apps.conf /etc/supervisor/conf.d/" shape="box"];
  "sha256:441a29641a63b2a7509ef6100827407a33813f5d8d62ac37fb0f76a41a5f591d" [label="/bin/sh -c cd /app && bundle install" shape="box"];
  "sha256:ea1a7c30846d94fe69864a5d574714ed20c9c16468bc9b2b7ddfdd324bbe387e" [label="mkdir{path=/app}" shape="note"];
  "sha256:f3f64750ed3ea91249c0d8179e1e727c286787082d14a2b3096a7b8b1c514a4d" [label="sha256:f3f64750ed3ea91249c0d8179e1e727c286787082d14a2b3096a7b8b1c514a4d" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d55987e490e8dc556903c95610522784b1165ea6c0620932d5c85a1a2af1d2b5" [label=""];
  "sha256:d55987e490e8dc556903c95610522784b1165ea6c0620932d5c85a1a2af1d2b5" -> "sha256:c1d9162434fd3645b52d4237f1b9e73e5d73953f92fef31ec2f040702b224063" [label=""];
  "sha256:c1d9162434fd3645b52d4237f1b9e73e5d73953f92fef31ec2f040702b224063" -> "sha256:e7ae048011f06beed7fb0373bed3c5a6683450c0b20783f0d7b2597ff712f6e0" [label=""];
  "sha256:e7ae048011f06beed7fb0373bed3c5a6683450c0b20783f0d7b2597ff712f6e0" -> "sha256:34dfd60704bc2e999f38ea0d0de59ae60e17765f4700d534daaf48e20c2debaf" [label=""];
  "sha256:f0feb130403c8293bb09d497b42fc59cc32a511169a29c3e95d80cb79f466347" -> "sha256:34dfd60704bc2e999f38ea0d0de59ae60e17765f4700d534daaf48e20c2debaf" [label=""];
  "sha256:34dfd60704bc2e999f38ea0d0de59ae60e17765f4700d534daaf48e20c2debaf" -> "sha256:0ec2a4fd6d4ba13440d32d464c8b793ce18f325ee4251a99ff7c17bbf6bb9073" [label=""];
  "sha256:0ec2a4fd6d4ba13440d32d464c8b793ce18f325ee4251a99ff7c17bbf6bb9073" -> "sha256:441a29641a63b2a7509ef6100827407a33813f5d8d62ac37fb0f76a41a5f591d" [label=""];
  "sha256:441a29641a63b2a7509ef6100827407a33813f5d8d62ac37fb0f76a41a5f591d" -> "sha256:ea1a7c30846d94fe69864a5d574714ed20c9c16468bc9b2b7ddfdd324bbe387e" [label=""];
  "sha256:ea1a7c30846d94fe69864a5d574714ed20c9c16468bc9b2b7ddfdd324bbe387e" -> "sha256:f3f64750ed3ea91249c0d8179e1e727c286787082d14a2b3096a7b8b1c514a4d" [label=""];
}

