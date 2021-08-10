[app/sources/315883261.Dockerfile]
digraph {
  "sha256:db39c1a8925fc1de5559f13dd1726f2bb99f7341b475098530b80e0e641fe674" [label="docker-image://docker.io/xoelabs/dockery-odoo-base:11.0" shape="ellipse"];
  "sha256:ba7f9f09c0966c48eb0e869bdd2d688745b7421419bdd1221e99866c4eff36af" [label="/bin/sh -c pip --quiet --quiet install redis prometheus_client" shape="box"];
  "sha256:8ac644595b9b3277bc2dedfbe1ef22fa37841b486eebe5aa359c19827cd1976f" [label="local://context" shape="ellipse"];
  "sha256:d0e9e35f1253f44798458bca50671b2ba20b2c8bd76dca9f76511552cb171b97" [label="copy{src=/patches.d, dest=/opt/odoo/patches.d}" shape="note"];
  "sha256:1ed6b5852cc64ae383adeba33ed0b347094b70a691ce703ec9bff55c550215ac" [label="sha256:1ed6b5852cc64ae383adeba33ed0b347094b70a691ce703ec9bff55c550215ac" shape="plaintext"];
  "sha256:db39c1a8925fc1de5559f13dd1726f2bb99f7341b475098530b80e0e641fe674" -> "sha256:ba7f9f09c0966c48eb0e869bdd2d688745b7421419bdd1221e99866c4eff36af" [label=""];
  "sha256:ba7f9f09c0966c48eb0e869bdd2d688745b7421419bdd1221e99866c4eff36af" -> "sha256:d0e9e35f1253f44798458bca50671b2ba20b2c8bd76dca9f76511552cb171b97" [label=""];
  "sha256:8ac644595b9b3277bc2dedfbe1ef22fa37841b486eebe5aa359c19827cd1976f" -> "sha256:d0e9e35f1253f44798458bca50671b2ba20b2c8bd76dca9f76511552cb171b97" [label=""];
  "sha256:d0e9e35f1253f44798458bca50671b2ba20b2c8bd76dca9f76511552cb171b97" -> "sha256:1ed6b5852cc64ae383adeba33ed0b347094b70a691ce703ec9bff55c550215ac" [label=""];
}

