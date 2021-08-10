[app/sources/348929838.Dockerfile]
digraph {
  "sha256:a44fc20163b62f0e18197963ac5ce2c4b150815c471dbc79efe31dd22d9bcf38" [label="docker-image://docker.io/williamyeh/ansible:master-centos7-onbuild" shape="ellipse"];
  "sha256:25193b7771bbc026d42e0bcc3830f5164dab202d79bc20f3a54c478bb8492579" [label="/bin/sh -c ansible-playbook-wrapper -vvv --extra-vars \"mongodb_use_service=False\"" shape="box"];
  "sha256:76de4e6611ec5930a3c2c42005e7b02f090a12cf20d4d709c0a49f9d9af71daf" [label="/bin/sh -c echo \"===> Patch conf file to allow 0.0.0.0 and disable fork...\"  &&     sed -i -e 's/^\\(\\s*bind_ip\\)/#--- \\1/'  /etc/mongod.conf          &&     sed -i -e 's/^\\(\\s*fork\\)/#--- \\1/'     /etc/mongod.conf" shape="box"];
  "sha256:b32d2e7b23591f4cc10f62dea481e0794a6a5146dd60a14b13ccc82175389705" [label="sha256:b32d2e7b23591f4cc10f62dea481e0794a6a5146dd60a14b13ccc82175389705" shape="plaintext"];
  "sha256:a44fc20163b62f0e18197963ac5ce2c4b150815c471dbc79efe31dd22d9bcf38" -> "sha256:25193b7771bbc026d42e0bcc3830f5164dab202d79bc20f3a54c478bb8492579" [label=""];
  "sha256:25193b7771bbc026d42e0bcc3830f5164dab202d79bc20f3a54c478bb8492579" -> "sha256:76de4e6611ec5930a3c2c42005e7b02f090a12cf20d4d709c0a49f9d9af71daf" [label=""];
  "sha256:76de4e6611ec5930a3c2c42005e7b02f090a12cf20d4d709c0a49f9d9af71daf" -> "sha256:b32d2e7b23591f4cc10f62dea481e0794a6a5146dd60a14b13ccc82175389705" [label=""];
}

