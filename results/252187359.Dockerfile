[app/sources/252187359.Dockerfile]
digraph {
  "sha256:809f234f52e695cac35fc0d151fb6b04b7d854d9a77369af5c1789bceb56b1d5" [label="docker-image://docker.io/grafana/grafana:5.4.3" shape="ellipse"];
  "sha256:30558cf02e6e6ac581a79133743d75c6a2a51d75ca504ce755635e07502a64bb" [label="/bin/sh -c apt-get update &&     apt-get install -y dnsutils net-tools gettext-base p7zip-full netcat &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:70da0e71846440c57c1754c83f50d48261590bd871083485377b3c975559046f" [label="local://context" shape="ellipse"];
  "sha256:6d940117139afb0c6af475006a721b61ca79524fdf87815ce0b552fd8919eecd" [label="copy{src=/enroller/server_template.json, dest=/},copy{src=/traffic_ops/to-access.sh, dest=/},copy{src=/optional/grafana/run-grafana.sh, dest=/},copy{src=/optional/grafana/datasources.yml.template, dest=/},copy{src=/traffic_stats/traffic_stats.rpm, dest=/}" shape="note"];
  "sha256:5817e29d85119f236f6e43e9d247a9f4e0e7d771a783f2fd6d793e02f0f731d2" [label="/bin/sh -c cd ~     && 7z x /traffic_stats.rpm     && 7z e traffic_stats-*.cpio *.js -r     && mv *.js /usr/share/grafana/public/dashboards     && rm /traffic_stats.rpm     && rm ~/traffic_stats-*.cpio" shape="box"];
  "sha256:fee47dd14d321c1590eafd832e5a804ecd462e49c74357c430f875cdd133c1e3" [label="sha256:fee47dd14d321c1590eafd832e5a804ecd462e49c74357c430f875cdd133c1e3" shape="plaintext"];
  "sha256:809f234f52e695cac35fc0d151fb6b04b7d854d9a77369af5c1789bceb56b1d5" -> "sha256:30558cf02e6e6ac581a79133743d75c6a2a51d75ca504ce755635e07502a64bb" [label=""];
  "sha256:30558cf02e6e6ac581a79133743d75c6a2a51d75ca504ce755635e07502a64bb" -> "sha256:6d940117139afb0c6af475006a721b61ca79524fdf87815ce0b552fd8919eecd" [label=""];
  "sha256:70da0e71846440c57c1754c83f50d48261590bd871083485377b3c975559046f" -> "sha256:6d940117139afb0c6af475006a721b61ca79524fdf87815ce0b552fd8919eecd" [label=""];
  "sha256:6d940117139afb0c6af475006a721b61ca79524fdf87815ce0b552fd8919eecd" -> "sha256:5817e29d85119f236f6e43e9d247a9f4e0e7d771a783f2fd6d793e02f0f731d2" [label=""];
  "sha256:5817e29d85119f236f6e43e9d247a9f4e0e7d771a783f2fd6d793e02f0f731d2" -> "sha256:fee47dd14d321c1590eafd832e5a804ecd462e49c74357c430f875cdd133c1e3" [label=""];
}

