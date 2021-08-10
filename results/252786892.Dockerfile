[app/sources/252786892.Dockerfile]
digraph {
  "sha256:11af60ec83213ea60ff86be9155942cfb15d476cffe8f2cc3f3583a42e2c1595" [label="docker-image://docker.io/learninglayers/base:latest" shape="ellipse"];
  "sha256:991aaaa5799c20e31a2bbdad85ef1914f74203840fdd51d02d22379071514d20" [label="/bin/sh -c apt-get update && apt-get install -y nginx" shape="box"];
  "sha256:ab89910fdb60dcf1f58c076750f37b2d8749343ed65fec1740d80a1f144ee9e7" [label="local://context" shape="ellipse"];
  "sha256:028412f1dbdc0333e69cbbf2c80f5e3a634fc606b0bfbd1d1c6d3b008b90d08a" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:ee1afc395c6e727ff09ce7238cb6a3bbb46d03da21f11cb6f20b194bd9c74415" [label="copy{src=/sites-available/*, dest=/etc/nginx/sites-available/}" shape="note"];
  "sha256:977f5120a5675184a4a69a5db6683b44f96cb3d7f637a1a53a4d7d21acb0f94c" [label="sha256:977f5120a5675184a4a69a5db6683b44f96cb3d7f637a1a53a4d7d21acb0f94c" shape="plaintext"];
  "sha256:11af60ec83213ea60ff86be9155942cfb15d476cffe8f2cc3f3583a42e2c1595" -> "sha256:991aaaa5799c20e31a2bbdad85ef1914f74203840fdd51d02d22379071514d20" [label=""];
  "sha256:991aaaa5799c20e31a2bbdad85ef1914f74203840fdd51d02d22379071514d20" -> "sha256:028412f1dbdc0333e69cbbf2c80f5e3a634fc606b0bfbd1d1c6d3b008b90d08a" [label=""];
  "sha256:ab89910fdb60dcf1f58c076750f37b2d8749343ed65fec1740d80a1f144ee9e7" -> "sha256:028412f1dbdc0333e69cbbf2c80f5e3a634fc606b0bfbd1d1c6d3b008b90d08a" [label=""];
  "sha256:028412f1dbdc0333e69cbbf2c80f5e3a634fc606b0bfbd1d1c6d3b008b90d08a" -> "sha256:ee1afc395c6e727ff09ce7238cb6a3bbb46d03da21f11cb6f20b194bd9c74415" [label=""];
  "sha256:ab89910fdb60dcf1f58c076750f37b2d8749343ed65fec1740d80a1f144ee9e7" -> "sha256:ee1afc395c6e727ff09ce7238cb6a3bbb46d03da21f11cb6f20b194bd9c74415" [label=""];
  "sha256:ee1afc395c6e727ff09ce7238cb6a3bbb46d03da21f11cb6f20b194bd9c74415" -> "sha256:977f5120a5675184a4a69a5db6683b44f96cb3d7f637a1a53a4d7d21acb0f94c" [label=""];
}

