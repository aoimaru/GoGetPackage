[app/sources/135583970.Dockerfile]
digraph {
  "sha256:195fdbee52b444e82fb5a72ce8f58197d21eb86624fba64b0a3be57e7741ef67" [label="docker-image://docker.io/library/postgres:8.4" shape="ellipse"];
  "sha256:3206929254af68062a2321019bf0acdd380df01501ed1bcfb7a20169d0bffa8a" [label="/bin/sh -c apt-get update     && apt-get install -y postgresql-plperl-8.4=8.4.22-1.pgdg70+1     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ceb266ec5755fcf98482238bbc97aa390fcbc8402f1e41e573834887f2510403" [label="sha256:ceb266ec5755fcf98482238bbc97aa390fcbc8402f1e41e573834887f2510403" shape="plaintext"];
  "sha256:195fdbee52b444e82fb5a72ce8f58197d21eb86624fba64b0a3be57e7741ef67" -> "sha256:3206929254af68062a2321019bf0acdd380df01501ed1bcfb7a20169d0bffa8a" [label=""];
  "sha256:3206929254af68062a2321019bf0acdd380df01501ed1bcfb7a20169d0bffa8a" -> "sha256:ceb266ec5755fcf98482238bbc97aa390fcbc8402f1e41e573834887f2510403" [label=""];
}

