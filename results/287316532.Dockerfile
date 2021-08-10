[app/sources/287316532.Dockerfile]
digraph {
  "sha256:45df545cfea98a03cdf529024e100a944c49d48c1793ce3daa09b68ed03de5ae" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d126b86c2b863b2b5868231a1873932506aff1d8b8263bd6448498da8206bb1e" [label="/bin/sh -c echo \"deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main\" >  /etc/apt/sources.list.d/pgdg.list && \tapt-get install -y wget && \twget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \tapt-get update && \tapt-get install -y language-pack-en && \tapt-get install -y postgresql-10" shape="box"];
  "sha256:122da5de699146a1736fb960ef4030651b4f0c9c0852d6f5ec64645d60b3e6b4" [label="copy{src=/*.sql, dest=/}" shape="note"];
  "sha256:fb4e460d2ca3879f8381251150789aedbb7aaa55a2b13c032537b1f441bacf50" [label="copy{src=/recovery.conf, dest=/var/lib/postgresql/10/main/}" shape="note"];
  "sha256:f94b6fa7b16e2b9474447403548c60f1685e6310f76df8177fd7aaf9927240eb" [label="/bin/sh -c chown postgres:postgres /var/lib/postgresql/10/main/recovery.conf" shape="box"];
  "sha256:a5f76af458321ea432b1c3a34fc3f8ad6c0f4386856dce424661ef76710d8552" [label="/bin/sh -c sed -i 's/md5/trust/g' /etc/postgresql/10/main/pg_hba.conf && \techo \"host  all  car_portal_app  0.0.0.0/0  trust\" >> /etc/postgresql/10/main/pg_hba.conf && \techo \"listen_addresses = '*'\" >> /etc/postgresql/10/main/postgresql.conf && \tservice postgresql start && \tservice postgresql stop" shape="box"];
  "sha256:3340a618ce8fdf18682b81f33cf624c64efd0d43486fc7561d3b881774726c02" [label="sha256:3340a618ce8fdf18682b81f33cf624c64efd0d43486fc7561d3b881774726c02" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:d126b86c2b863b2b5868231a1873932506aff1d8b8263bd6448498da8206bb1e" [label=""];
  "sha256:d126b86c2b863b2b5868231a1873932506aff1d8b8263bd6448498da8206bb1e" -> "sha256:122da5de699146a1736fb960ef4030651b4f0c9c0852d6f5ec64645d60b3e6b4" [label=""];
  "sha256:45df545cfea98a03cdf529024e100a944c49d48c1793ce3daa09b68ed03de5ae" -> "sha256:122da5de699146a1736fb960ef4030651b4f0c9c0852d6f5ec64645d60b3e6b4" [label=""];
  "sha256:122da5de699146a1736fb960ef4030651b4f0c9c0852d6f5ec64645d60b3e6b4" -> "sha256:fb4e460d2ca3879f8381251150789aedbb7aaa55a2b13c032537b1f441bacf50" [label=""];
  "sha256:45df545cfea98a03cdf529024e100a944c49d48c1793ce3daa09b68ed03de5ae" -> "sha256:fb4e460d2ca3879f8381251150789aedbb7aaa55a2b13c032537b1f441bacf50" [label=""];
  "sha256:fb4e460d2ca3879f8381251150789aedbb7aaa55a2b13c032537b1f441bacf50" -> "sha256:f94b6fa7b16e2b9474447403548c60f1685e6310f76df8177fd7aaf9927240eb" [label=""];
  "sha256:f94b6fa7b16e2b9474447403548c60f1685e6310f76df8177fd7aaf9927240eb" -> "sha256:a5f76af458321ea432b1c3a34fc3f8ad6c0f4386856dce424661ef76710d8552" [label=""];
  "sha256:a5f76af458321ea432b1c3a34fc3f8ad6c0f4386856dce424661ef76710d8552" -> "sha256:3340a618ce8fdf18682b81f33cf624c64efd0d43486fc7561d3b881774726c02" [label=""];
}

