[app/sources/400231889.Dockerfile]
digraph {
  "sha256:fc6df17b70c13b47a6ce8b6b9d25229d1955461b1cd1ed7211e4b74f5633e99f" [label="docker-image://quay.io/acoustid/postgresql:master@sha256:bd75bce22a2022e56f1b9ac663685d7c96978afea63b9baba30921bacbd352e5" shape="ellipse"];
  "sha256:778d88be667f210c5637104e83863454d71254245079226dd2804ca865be8380" [label="local://context" shape="ellipse"];
  "sha256:c8f77024bafd5960950704faf637dfffca51c6b03ef9b6e5084b948a8615d0b0" [label="copy{src=/admin/ci/create_db.sql, dest=/docker-entrypoint-initdb.d/10_create_db.sql}" shape="note"];
  "sha256:3fa06406b8a12915daf5ea89bbf04de5bd1f2ea2fac9a95dbb71d0c9b0c882ad" [label="sha256:3fa06406b8a12915daf5ea89bbf04de5bd1f2ea2fac9a95dbb71d0c9b0c882ad" shape="plaintext"];
  "sha256:fc6df17b70c13b47a6ce8b6b9d25229d1955461b1cd1ed7211e4b74f5633e99f" -> "sha256:c8f77024bafd5960950704faf637dfffca51c6b03ef9b6e5084b948a8615d0b0" [label=""];
  "sha256:778d88be667f210c5637104e83863454d71254245079226dd2804ca865be8380" -> "sha256:c8f77024bafd5960950704faf637dfffca51c6b03ef9b6e5084b948a8615d0b0" [label=""];
  "sha256:c8f77024bafd5960950704faf637dfffca51c6b03ef9b6e5084b948a8615d0b0" -> "sha256:3fa06406b8a12915daf5ea89bbf04de5bd1f2ea2fac9a95dbb71d0c9b0c882ad" [label=""];
}

