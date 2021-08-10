[app/sources/248371582.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:d0d19a29bff81d4bb82c3e511a717eb0b1a36b56b6fb0a22937bc0281a5b8a3b" [label="/bin/sh -c apt update && apt -y upgrade && apt -y install apache2 php php-mysql php-ldap php-xmlrpc php-imap curl php-curl php-gd php-mbstring php-xml php-apcu-bc php-cas cron wget jq" shape="box"];
  "sha256:571d8320f290420cfee2eab0b199da2755e2f9884ed351f134ec6ce4c5d61c73" [label="local://context" shape="ellipse"];
  "sha256:b59b1c2b49dbbcb9234286f69bc8aaba9258d98a7bf3b2ac56853728261e8b77" [label="copy{src=/glpi-start.sh, dest=/opt/}" shape="note"];
  "sha256:aaff6203065739b14f87f1e816383080d46717ed850e5673b14d6433efa4ff1b" [label="/bin/sh -c chmod +x /opt/glpi-start.sh" shape="box"];
  "sha256:7fc7496b9e526a0019f94b40ff0c319a32f1b0e478e21621d118d5c647c0cd00" [label="sha256:7fc7496b9e526a0019f94b40ff0c319a32f1b0e478e21621d118d5c647c0cd00" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:d0d19a29bff81d4bb82c3e511a717eb0b1a36b56b6fb0a22937bc0281a5b8a3b" [label=""];
  "sha256:d0d19a29bff81d4bb82c3e511a717eb0b1a36b56b6fb0a22937bc0281a5b8a3b" -> "sha256:b59b1c2b49dbbcb9234286f69bc8aaba9258d98a7bf3b2ac56853728261e8b77" [label=""];
  "sha256:571d8320f290420cfee2eab0b199da2755e2f9884ed351f134ec6ce4c5d61c73" -> "sha256:b59b1c2b49dbbcb9234286f69bc8aaba9258d98a7bf3b2ac56853728261e8b77" [label=""];
  "sha256:b59b1c2b49dbbcb9234286f69bc8aaba9258d98a7bf3b2ac56853728261e8b77" -> "sha256:aaff6203065739b14f87f1e816383080d46717ed850e5673b14d6433efa4ff1b" [label=""];
  "sha256:aaff6203065739b14f87f1e816383080d46717ed850e5673b14d6433efa4ff1b" -> "sha256:7fc7496b9e526a0019f94b40ff0c319a32f1b0e478e21621d118d5c647c0cd00" [label=""];
}

