[app/sources/189408960.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:327bbf29cbadb4821de88a2fb2297ad49006ec6012d19692f3b8b5f5937ad616" [label="/bin/sh -c sed -i 's/# \\(.*multiverse$\\)/\\1/g' /etc/apt/sources.list &&   apt-get update &&   apt-get -y upgrade &&   apt-get install -y build-essential &&   apt-get install -y software-properties-common &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d65a8bbe84eb2cd0ae259e4bffb67dd73274ab7de70953893320cd5e130db031" [label="/bin/sh -c add-apt-repository -y ppa:nginx/stable &&   apt-get update &&   apt-get install -y nginx &&   rm -rf /var/lib/apt/lists/* &&   echo \"\\ndaemon off;\" >> /etc/nginx/nginx.conf &&   chown -R www-data:www-data /var/lib/nginx" shape="box"];
  "sha256:66ac281b4d8d33ba9461286f333cbf73e1eaff6ab44bfae0be39c09ecd5d6d72" [label="mkdir{path=/etc/nginx}" shape="note"];
  "sha256:15e677a145e3071b61deb57ec49579d0a99a95017698ceebc60979cc9d29b869" [label="sha256:15e677a145e3071b61deb57ec49579d0a99a95017698ceebc60979cc9d29b869" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:327bbf29cbadb4821de88a2fb2297ad49006ec6012d19692f3b8b5f5937ad616" [label=""];
  "sha256:327bbf29cbadb4821de88a2fb2297ad49006ec6012d19692f3b8b5f5937ad616" -> "sha256:d65a8bbe84eb2cd0ae259e4bffb67dd73274ab7de70953893320cd5e130db031" [label=""];
  "sha256:d65a8bbe84eb2cd0ae259e4bffb67dd73274ab7de70953893320cd5e130db031" -> "sha256:66ac281b4d8d33ba9461286f333cbf73e1eaff6ab44bfae0be39c09ecd5d6d72" [label=""];
  "sha256:66ac281b4d8d33ba9461286f333cbf73e1eaff6ab44bfae0be39c09ecd5d6d72" -> "sha256:15e677a145e3071b61deb57ec49579d0a99a95017698ceebc60979cc9d29b869" [label=""];
}

