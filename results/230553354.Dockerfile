[app/sources/230553354.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:cc875fad63f71bca605e051edd03e8bca816eb2b90550d6326f81bb64269da10" [label="/bin/sh -c apt-get update \t&& apt-get install  -y \t\t\t\t\t\tca-certificates \t\t\t\t\t\tnginx \t\t\t\t\t\tcurl" shape="box"];
  "sha256:b4350a7e9a7083c2ee91256503164874655a216d56570172d85dcd7406c053fd" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log \t&& ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:d9dd0d2411502ce98d568264674abb494acf5b8004e54dddc1d03c8bed470619" [label="sha256:d9dd0d2411502ce98d568264674abb494acf5b8004e54dddc1d03c8bed470619" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:cc875fad63f71bca605e051edd03e8bca816eb2b90550d6326f81bb64269da10" [label=""];
  "sha256:cc875fad63f71bca605e051edd03e8bca816eb2b90550d6326f81bb64269da10" -> "sha256:b4350a7e9a7083c2ee91256503164874655a216d56570172d85dcd7406c053fd" [label=""];
  "sha256:b4350a7e9a7083c2ee91256503164874655a216d56570172d85dcd7406c053fd" -> "sha256:d9dd0d2411502ce98d568264674abb494acf5b8004e54dddc1d03c8bed470619" [label=""];
}

