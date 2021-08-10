[app/sources/170066287.Dockerfile]
digraph {
  "sha256:04ddcba47af72201aa710190fb06c15e13101904c8ee42572bd5cd99526d629a" [label="docker-image://docker.io/gofed/gofed:v1.0.1" shape="ellipse"];
  "sha256:7660ab050bfb234af4789066f0904839254f8b7a79d1ce8a4edafc0e1a96838c" [label="local://context" shape="ellipse"];
  "sha256:174c453e89b82ad9ef44cf9128f89d2a5cdba353a7577695cb4c68c9cec91a97" [label="copy{src=/fedora-updates-f25.repo, dest=/etc/yum.repos.d/fedora-updates-f25.repo}" shape="note"];
  "sha256:0581d7583169708016b20f73ef2376e40ef7f7f550331585a8d781826bfdcdab" [label="/bin/sh -c dnf install -y --enablerepo=f25updates fedpkg fedora-packager pyrpkg koji python2-cccolutils krb5-workstation" shape="box"];
  "sha256:54c556e8473ddefd70bd816bbf5d3e87ce82dd98906ec694c837ca034205f482" [label="/bin/sh -c pip install requests==2.3" shape="box"];
  "sha256:03f4a3be8082d33e48e612f55b1261dc6b4e993a8bc70b201aba1e833b4fa793" [label="copy{src=/krb5.conf, dest=/etc/krb5.conf}" shape="note"];
  "sha256:3b2d64a179206df0dd8974d45708adbb36629c7758f68b3f877e8aac3f758d16" [label="copy{src=/run-scan.sh, dest=/home/gofed/gofed/run-scan.sh}" shape="note"];
  "sha256:302c22742aab55215dc5395ee434c46478fdf634c7cded9bc4de054bf3c4ac73" [label="sha256:302c22742aab55215dc5395ee434c46478fdf634c7cded9bc4de054bf3c4ac73" shape="plaintext"];
  "sha256:04ddcba47af72201aa710190fb06c15e13101904c8ee42572bd5cd99526d629a" -> "sha256:174c453e89b82ad9ef44cf9128f89d2a5cdba353a7577695cb4c68c9cec91a97" [label=""];
  "sha256:7660ab050bfb234af4789066f0904839254f8b7a79d1ce8a4edafc0e1a96838c" -> "sha256:174c453e89b82ad9ef44cf9128f89d2a5cdba353a7577695cb4c68c9cec91a97" [label=""];
  "sha256:174c453e89b82ad9ef44cf9128f89d2a5cdba353a7577695cb4c68c9cec91a97" -> "sha256:0581d7583169708016b20f73ef2376e40ef7f7f550331585a8d781826bfdcdab" [label=""];
  "sha256:0581d7583169708016b20f73ef2376e40ef7f7f550331585a8d781826bfdcdab" -> "sha256:54c556e8473ddefd70bd816bbf5d3e87ce82dd98906ec694c837ca034205f482" [label=""];
  "sha256:54c556e8473ddefd70bd816bbf5d3e87ce82dd98906ec694c837ca034205f482" -> "sha256:03f4a3be8082d33e48e612f55b1261dc6b4e993a8bc70b201aba1e833b4fa793" [label=""];
  "sha256:7660ab050bfb234af4789066f0904839254f8b7a79d1ce8a4edafc0e1a96838c" -> "sha256:03f4a3be8082d33e48e612f55b1261dc6b4e993a8bc70b201aba1e833b4fa793" [label=""];
  "sha256:03f4a3be8082d33e48e612f55b1261dc6b4e993a8bc70b201aba1e833b4fa793" -> "sha256:3b2d64a179206df0dd8974d45708adbb36629c7758f68b3f877e8aac3f758d16" [label=""];
  "sha256:7660ab050bfb234af4789066f0904839254f8b7a79d1ce8a4edafc0e1a96838c" -> "sha256:3b2d64a179206df0dd8974d45708adbb36629c7758f68b3f877e8aac3f758d16" [label=""];
  "sha256:3b2d64a179206df0dd8974d45708adbb36629c7758f68b3f877e8aac3f758d16" -> "sha256:302c22742aab55215dc5395ee434c46478fdf634c7cded9bc4de054bf3c4ac73" [label=""];
}

