[app/sources/180412506.Dockerfile]
digraph {
  "sha256:b3ebacfe66a03fa136cfdb58ad951792bb976ddc65898caabdd1b1eddb3badd7" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:03d196771fc2ae4a9f88d9aed3d4dab9be7930accfb0b4eb028573472f4408ab" [label="/bin/sh -c apt-get install -y nginx python python-dev python-pip" shape="box"];
  "sha256:8d265a233c63976afb203c2ef800252ef9fd4bf637a86822c036b10284127e43" [label="/bin/sh -c pip install Jinja2" shape="box"];
  "sha256:e07f5292f1eff0335844babd45a35886465375d6f928b9028bbea0e3d5d57da7" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:26a034193a9036f9657ac66f97c14a0dab8ed2455f3c83ccb58537bf477f7b04" [label="copy{src=/html, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:b3e30018f0beaddae12d5a6ae221f1997b91ff9d7827f8e10a2263b6c056ebc7" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled/}" shape="note"];
  "sha256:ae2fc28c18e13ec2d6721623568ca7c1371ae9e697cb193a596950efdcc9be66" [label="copy{src=/ssl, dest=/etc/nginx/ssl/}" shape="note"];
  "sha256:18877a225cae412794b89997178c607312aa4964d1430d88665a4a620c206dd2" [label="copy{src=/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:97c57992c90ae1d7738698d2330f925300726133f35752c2266523ecdd141840" [label="copy{src=/scripts, dest=/scripts/}" shape="note"];
  "sha256:cb8d282518fe3370d57ba875ba0fc59c6a61e5b3e89ca0c084842033059655a0" [label="mkdir{path=/scripts}" shape="note"];
  "sha256:0f6656ffbda83db5468ec2d9d558a32268489f0812d2f8fc97a952793ec4327e" [label="sha256:0f6656ffbda83db5468ec2d9d558a32268489f0812d2f8fc97a952793ec4327e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:03d196771fc2ae4a9f88d9aed3d4dab9be7930accfb0b4eb028573472f4408ab" [label=""];
  "sha256:03d196771fc2ae4a9f88d9aed3d4dab9be7930accfb0b4eb028573472f4408ab" -> "sha256:8d265a233c63976afb203c2ef800252ef9fd4bf637a86822c036b10284127e43" [label=""];
  "sha256:8d265a233c63976afb203c2ef800252ef9fd4bf637a86822c036b10284127e43" -> "sha256:e07f5292f1eff0335844babd45a35886465375d6f928b9028bbea0e3d5d57da7" [label=""];
  "sha256:e07f5292f1eff0335844babd45a35886465375d6f928b9028bbea0e3d5d57da7" -> "sha256:26a034193a9036f9657ac66f97c14a0dab8ed2455f3c83ccb58537bf477f7b04" [label=""];
  "sha256:b3ebacfe66a03fa136cfdb58ad951792bb976ddc65898caabdd1b1eddb3badd7" -> "sha256:26a034193a9036f9657ac66f97c14a0dab8ed2455f3c83ccb58537bf477f7b04" [label=""];
  "sha256:26a034193a9036f9657ac66f97c14a0dab8ed2455f3c83ccb58537bf477f7b04" -> "sha256:b3e30018f0beaddae12d5a6ae221f1997b91ff9d7827f8e10a2263b6c056ebc7" [label=""];
  "sha256:b3ebacfe66a03fa136cfdb58ad951792bb976ddc65898caabdd1b1eddb3badd7" -> "sha256:b3e30018f0beaddae12d5a6ae221f1997b91ff9d7827f8e10a2263b6c056ebc7" [label=""];
  "sha256:b3e30018f0beaddae12d5a6ae221f1997b91ff9d7827f8e10a2263b6c056ebc7" -> "sha256:ae2fc28c18e13ec2d6721623568ca7c1371ae9e697cb193a596950efdcc9be66" [label=""];
  "sha256:b3ebacfe66a03fa136cfdb58ad951792bb976ddc65898caabdd1b1eddb3badd7" -> "sha256:ae2fc28c18e13ec2d6721623568ca7c1371ae9e697cb193a596950efdcc9be66" [label=""];
  "sha256:ae2fc28c18e13ec2d6721623568ca7c1371ae9e697cb193a596950efdcc9be66" -> "sha256:18877a225cae412794b89997178c607312aa4964d1430d88665a4a620c206dd2" [label=""];
  "sha256:b3ebacfe66a03fa136cfdb58ad951792bb976ddc65898caabdd1b1eddb3badd7" -> "sha256:18877a225cae412794b89997178c607312aa4964d1430d88665a4a620c206dd2" [label=""];
  "sha256:18877a225cae412794b89997178c607312aa4964d1430d88665a4a620c206dd2" -> "sha256:97c57992c90ae1d7738698d2330f925300726133f35752c2266523ecdd141840" [label=""];
  "sha256:b3ebacfe66a03fa136cfdb58ad951792bb976ddc65898caabdd1b1eddb3badd7" -> "sha256:97c57992c90ae1d7738698d2330f925300726133f35752c2266523ecdd141840" [label=""];
  "sha256:97c57992c90ae1d7738698d2330f925300726133f35752c2266523ecdd141840" -> "sha256:cb8d282518fe3370d57ba875ba0fc59c6a61e5b3e89ca0c084842033059655a0" [label=""];
  "sha256:cb8d282518fe3370d57ba875ba0fc59c6a61e5b3e89ca0c084842033059655a0" -> "sha256:0f6656ffbda83db5468ec2d9d558a32268489f0812d2f8fc97a952793ec4327e" [label=""];
}

