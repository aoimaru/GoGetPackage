[app/sources/252782628.Dockerfile]
digraph {
  "sha256:c752585884577344a03d26565f569ec2436465aa13496ed80b2b11870857141e" [label="local://context" shape="ellipse"];
  "sha256:d2d876ed183c6ae2f9d33d971214f33b29ed05cfb16248017dad10b380b7853c" [label="docker-image://docker.io/library/nginx:1.11-alpine" shape="ellipse"];
  "sha256:f845ab0a20787aa521682d0e8b2dcd6b28e1b7bd159a5e82dcac469473f2e670" [label="/bin/sh -c apk add -U tzdata && cp /usr/share/zoneinfo/Europe/Brussels /etc/localtime && echo \"Europe/Brussels\" > /etc/timezone && apk del tzdata" shape="box"];
  "sha256:3161b549875fd53b0d98fa052a87e3f245eb139a783c6e1b4fc48f3546d59f15" [label="copy{src=/conf/upstream.conf, dest=/etc/nginx/conf.d/upstream.conf}" shape="note"];
  "sha256:de661294fff3129093d5e1115d43f37d743318d307bc0345eafcfc30b4568a06" [label="copy{src=/conf/php-fpm.conf, dest=/etc/nginx/conf.d/php-fpm.conf}" shape="note"];
  "sha256:dd891c52cd7df8cdcd3a7e15f06f45ce0c735c77bf200431e2b1c30c52c62d5d" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:c621839dec0265ef06784846e4ed57ac0fa262a8ed161e39363f1a201286cc74" [label="sha256:c621839dec0265ef06784846e4ed57ac0fa262a8ed161e39363f1a201286cc74" shape="plaintext"];
  "sha256:d2d876ed183c6ae2f9d33d971214f33b29ed05cfb16248017dad10b380b7853c" -> "sha256:f845ab0a20787aa521682d0e8b2dcd6b28e1b7bd159a5e82dcac469473f2e670" [label=""];
  "sha256:f845ab0a20787aa521682d0e8b2dcd6b28e1b7bd159a5e82dcac469473f2e670" -> "sha256:3161b549875fd53b0d98fa052a87e3f245eb139a783c6e1b4fc48f3546d59f15" [label=""];
  "sha256:c752585884577344a03d26565f569ec2436465aa13496ed80b2b11870857141e" -> "sha256:3161b549875fd53b0d98fa052a87e3f245eb139a783c6e1b4fc48f3546d59f15" [label=""];
  "sha256:3161b549875fd53b0d98fa052a87e3f245eb139a783c6e1b4fc48f3546d59f15" -> "sha256:de661294fff3129093d5e1115d43f37d743318d307bc0345eafcfc30b4568a06" [label=""];
  "sha256:c752585884577344a03d26565f569ec2436465aa13496ed80b2b11870857141e" -> "sha256:de661294fff3129093d5e1115d43f37d743318d307bc0345eafcfc30b4568a06" [label=""];
  "sha256:de661294fff3129093d5e1115d43f37d743318d307bc0345eafcfc30b4568a06" -> "sha256:dd891c52cd7df8cdcd3a7e15f06f45ce0c735c77bf200431e2b1c30c52c62d5d" [label=""];
  "sha256:dd891c52cd7df8cdcd3a7e15f06f45ce0c735c77bf200431e2b1c30c52c62d5d" -> "sha256:c621839dec0265ef06784846e4ed57ac0fa262a8ed161e39363f1a201286cc74" [label=""];
}

