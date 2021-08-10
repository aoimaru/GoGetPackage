[app/sources/152752446.Dockerfile]
digraph {
  "sha256:f175f18f8ffb9ac0911211ea1fcdce9d1b012b4580154a0fb00358ecbe1e3154" [label="docker-image://docker.io/maxexcloo/debian:latest" shape="ellipse"];
  "sha256:7eed8f3bf1f797fe2fd0667728d0a2c6eadff31f746b8d28ed3e490c0d54e4a9" [label="/bin/sh -c curl http://shell.ninthgate.se/packages/shell.ninthgate.se.gpg.key | apt-key add - && \techo \"deb http://shell.ninthgate.se/packages/debian/ jessie main\" > /etc/apt/sources.list.d/plexmediaserver.list && \tapt-get update && \tapt-get install -y plexmediaserver && \tapt-get clean && \techo -n > /var/lib/apt/extended_states && \trm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*" shape="box"];
  "sha256:7aee87f7033ff4074c45512190cf56ad2693c95397380e0f09f7923c3879af13" [label="/bin/sh -c mkdir -p /var/run/dbus && \tchown messagebus:messagebus /var/run/dbus && \tdbus-uuidgen --ensure" shape="box"];
  "sha256:d1aee93963f8f1f91097039abb2307497160f49d238029bc9474a6dfc0f6a1ce" [label="local://context" shape="ellipse"];
  "sha256:6973822d5bb62375525fb96f4193a696d4558a9b8c2056e01a4ed4647f78d3d0" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/plexmediaserver.conf}" shape="note"];
  "sha256:2e0748a90cc6240ba724fc938788a438a89a71158e34307a19572a7beded5a36" [label="sha256:2e0748a90cc6240ba724fc938788a438a89a71158e34307a19572a7beded5a36" shape="plaintext"];
  "sha256:f175f18f8ffb9ac0911211ea1fcdce9d1b012b4580154a0fb00358ecbe1e3154" -> "sha256:7eed8f3bf1f797fe2fd0667728d0a2c6eadff31f746b8d28ed3e490c0d54e4a9" [label=""];
  "sha256:7eed8f3bf1f797fe2fd0667728d0a2c6eadff31f746b8d28ed3e490c0d54e4a9" -> "sha256:7aee87f7033ff4074c45512190cf56ad2693c95397380e0f09f7923c3879af13" [label=""];
  "sha256:7aee87f7033ff4074c45512190cf56ad2693c95397380e0f09f7923c3879af13" -> "sha256:6973822d5bb62375525fb96f4193a696d4558a9b8c2056e01a4ed4647f78d3d0" [label=""];
  "sha256:d1aee93963f8f1f91097039abb2307497160f49d238029bc9474a6dfc0f6a1ce" -> "sha256:6973822d5bb62375525fb96f4193a696d4558a9b8c2056e01a4ed4647f78d3d0" [label=""];
  "sha256:6973822d5bb62375525fb96f4193a696d4558a9b8c2056e01a4ed4647f78d3d0" -> "sha256:2e0748a90cc6240ba724fc938788a438a89a71158e34307a19572a7beded5a36" [label=""];
}

