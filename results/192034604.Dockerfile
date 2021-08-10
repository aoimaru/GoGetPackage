[app/sources/192034604.Dockerfile]
digraph {
  "sha256:d1184d32f8af26ece6f959b019c25bfe4e8cb598e3b3605889ea9f249c579ea7" [label="docker-image://docker.io/library/k8s-base-image:3.0" shape="ellipse"];
  "sha256:9f7256ac403cee64692f7fbd498602a4bc9b8ff613a8a7272f5bcd89f03304f7" [label="local://context" shape="ellipse"];
  "sha256:b32645b36bc9481f507091ad22b70c7d64d1d435110739504c02f8385b73e916" [label="copy{src=/stage-rpms-tdnf.conf, dest=/tmp/tdnf/},copy{src=/tmp/stage-rpms.repo, dest=/tmp/tdnf/}" shape="note"];
  "sha256:913e8e1e52dc4106749a4ee5dfee93e408df6599244e6eff06b5fcc428644ee8" [label="/bin/sh -c tdnf -c /tmp/tdnf/stage-rpms-tdnf.conf install -y openssl nginx shadow zlib-devel --refresh" shape="box"];
  "sha256:2d9a118be55edd8a6ae0e667c2aec6e8732aee0f5f5daf21e9158e55866613e5" [label="/bin/sh -c useradd --system --no-create-home -U -s /bin/false nginx" shape="box"];
  "sha256:1f2cb820bd421d50cae8888d218bf71b6fe81cb79d80d360989922a79382d23f" [label="/bin/sh -c ln -sf /proc/1/fd/1 /var/log/nginx/access.log &&     ln -sf /proc/1/fd/2 /var/log/nginx/error.log" shape="box"];
  "sha256:bfef8f5a46c478ee7b03ab4bacde271871797faadab829cab9a0d851a23e7f00" [label="copy{src=/tmp/nginxinc/usr/share/nginx-ingress/docker/nginx.ingress.tmpl, dest=/},copy{src=/tmp/nginxinc/usr/share/nginx-ingress/docker/nginx.tmpl, dest=/},copy{src=/tmp/nginxinc/usr/bin/nginx-ingress, dest=/}" shape="note"];
  "sha256:f1d6fd9414f27ffc1d0a13f0f61f936a2ff7089e7ff89ca3f8eaa636443c3b18" [label="/bin/sh -c mkdir -p /etc/nginx/secrets/ &&     mkdir -p /etc/nginx/conf.d &&     cd /etc/nginx/secrets &&     openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout default.key -out default.crt -subj \"/CN=NGINXIngressController\" &&     cat default.key default.crt > default &&     rm default.key default.crt" shape="box"];
  "sha256:6019c163011b0dd9afd0ae9e23a2970aa55705399fe8a4750a83d619d6135b26" [label="sha256:6019c163011b0dd9afd0ae9e23a2970aa55705399fe8a4750a83d619d6135b26" shape="plaintext"];
  "sha256:d1184d32f8af26ece6f959b019c25bfe4e8cb598e3b3605889ea9f249c579ea7" -> "sha256:b32645b36bc9481f507091ad22b70c7d64d1d435110739504c02f8385b73e916" [label=""];
  "sha256:9f7256ac403cee64692f7fbd498602a4bc9b8ff613a8a7272f5bcd89f03304f7" -> "sha256:b32645b36bc9481f507091ad22b70c7d64d1d435110739504c02f8385b73e916" [label=""];
  "sha256:b32645b36bc9481f507091ad22b70c7d64d1d435110739504c02f8385b73e916" -> "sha256:913e8e1e52dc4106749a4ee5dfee93e408df6599244e6eff06b5fcc428644ee8" [label=""];
  "sha256:913e8e1e52dc4106749a4ee5dfee93e408df6599244e6eff06b5fcc428644ee8" -> "sha256:2d9a118be55edd8a6ae0e667c2aec6e8732aee0f5f5daf21e9158e55866613e5" [label=""];
  "sha256:2d9a118be55edd8a6ae0e667c2aec6e8732aee0f5f5daf21e9158e55866613e5" -> "sha256:1f2cb820bd421d50cae8888d218bf71b6fe81cb79d80d360989922a79382d23f" [label=""];
  "sha256:1f2cb820bd421d50cae8888d218bf71b6fe81cb79d80d360989922a79382d23f" -> "sha256:bfef8f5a46c478ee7b03ab4bacde271871797faadab829cab9a0d851a23e7f00" [label=""];
  "sha256:9f7256ac403cee64692f7fbd498602a4bc9b8ff613a8a7272f5bcd89f03304f7" -> "sha256:bfef8f5a46c478ee7b03ab4bacde271871797faadab829cab9a0d851a23e7f00" [label=""];
  "sha256:bfef8f5a46c478ee7b03ab4bacde271871797faadab829cab9a0d851a23e7f00" -> "sha256:f1d6fd9414f27ffc1d0a13f0f61f936a2ff7089e7ff89ca3f8eaa636443c3b18" [label=""];
  "sha256:f1d6fd9414f27ffc1d0a13f0f61f936a2ff7089e7ff89ca3f8eaa636443c3b18" -> "sha256:6019c163011b0dd9afd0ae9e23a2970aa55705399fe8a4750a83d619d6135b26" [label=""];
}

