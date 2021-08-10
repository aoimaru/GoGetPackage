[app/sources/252424720.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:e386db24dd99f39c3ac1e492834ceb4caff73e3adcd03b68b31629fd448fbf67" [label="mkdir{path=/root}" shape="note"];
  "sha256:89e122ef17847188582fc647716a08f705e713dea3529642e20dd012050abbda" [label="local://context" shape="ellipse"];
  "sha256:6156c10f0b7f08725eb32ffcac1095a5a35c2c5428e9c7224711051a5cd228a2" [label="copy{src=/ENTRYPOINT.sh, dest=/}" shape="note"];
  "sha256:2a221f5448fc662e4249e334d60d553c492c222ec9b2284efb75f3de791c7a15" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     curl     iproute2     iputils-ping     mininet     net-tools     openvswitch-switch     openvswitch-testcontroller     tcpdump     vim     x11-xserver-utils     xterm  && rm -rf /var/lib/apt/lists/*  && chmod +x /ENTRYPOINT.sh" shape="box"];
  "sha256:3f8167da8d8234768c3f4414908e4533945be74142e2c40551839491c1eb6377" [label="sha256:3f8167da8d8234768c3f4414908e4533945be74142e2c40551839491c1eb6377" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:e386db24dd99f39c3ac1e492834ceb4caff73e3adcd03b68b31629fd448fbf67" [label=""];
  "sha256:e386db24dd99f39c3ac1e492834ceb4caff73e3adcd03b68b31629fd448fbf67" -> "sha256:6156c10f0b7f08725eb32ffcac1095a5a35c2c5428e9c7224711051a5cd228a2" [label=""];
  "sha256:89e122ef17847188582fc647716a08f705e713dea3529642e20dd012050abbda" -> "sha256:6156c10f0b7f08725eb32ffcac1095a5a35c2c5428e9c7224711051a5cd228a2" [label=""];
  "sha256:6156c10f0b7f08725eb32ffcac1095a5a35c2c5428e9c7224711051a5cd228a2" -> "sha256:2a221f5448fc662e4249e334d60d553c492c222ec9b2284efb75f3de791c7a15" [label=""];
  "sha256:2a221f5448fc662e4249e334d60d553c492c222ec9b2284efb75f3de791c7a15" -> "sha256:3f8167da8d8234768c3f4414908e4533945be74142e2c40551839491c1eb6377" [label=""];
}

