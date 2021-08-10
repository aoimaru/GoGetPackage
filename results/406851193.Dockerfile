[app/sources/406851193.Dockerfile]
digraph {
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:b7c6360b5d8bdc1825ac42dd4c277ae05835c29542485524ec393779410a65d2" [label="local://context" shape="ellipse"];
  "sha256:03bc522fb2cc27b0ec6603a14977af81873102a7758d6ef97f802b3a58cdb2ac" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:5d8f64f4332e569202a3ccb80bb14fcacfe85305873593a6a65e3cd94927fdda" [label="sha256:5d8f64f4332e569202a3ccb80bb14fcacfe85305873593a6a65e3cd94927fdda" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label=""];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" -> "sha256:03bc522fb2cc27b0ec6603a14977af81873102a7758d6ef97f802b3a58cdb2ac" [label=""];
  "sha256:b7c6360b5d8bdc1825ac42dd4c277ae05835c29542485524ec393779410a65d2" -> "sha256:03bc522fb2cc27b0ec6603a14977af81873102a7758d6ef97f802b3a58cdb2ac" [label=""];
  "sha256:03bc522fb2cc27b0ec6603a14977af81873102a7758d6ef97f802b3a58cdb2ac" -> "sha256:5d8f64f4332e569202a3ccb80bb14fcacfe85305873593a6a65e3cd94927fdda" [label=""];
}

