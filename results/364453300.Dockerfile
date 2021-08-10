[app/sources/364453300.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:64c3a4f685bf5fb1ff8637123dadeb2f3a1ccd28913949bbe0d21737528288a3" [label="/bin/sh -c apt-get update -y &&     apt-get install -y nginx &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:79a9436a40b6c9c2f04db0aa8479cc15fc74d686945c897e991cbb6e85a3b8b0" [label="/bin/sh -c rm -f /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:55632c79eb3fdfe2446a94cd9392a28a02fc3f8c17cd89afb0575f50752fd937" [label="local://context" shape="ellipse"];
  "sha256:a32b31f3138db0cf1852ff9c86a856c75b8bf8c32fc0467851891c5d0faadcc3" [label="copy{src=/router.nginx.conf, dest=/etc/nginx/conf.d}" shape="note"];
  "sha256:daed70348c4ce92131fc8356d8e29f1b4cf97a85e67158c2571116aab46d0968" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log" shape="box"];
  "sha256:83ef51264c7014c2713104381a2f54fcbd01fa9c2e1750ea4d98d3ccc30022f5" [label="/bin/sh -c ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:418335ec3b4741c9dde6a9f9a6fcbad0f890ae166376c7c1939626f5c5fe5572" [label="sha256:418335ec3b4741c9dde6a9f9a6fcbad0f890ae166376c7c1939626f5c5fe5572" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:64c3a4f685bf5fb1ff8637123dadeb2f3a1ccd28913949bbe0d21737528288a3" [label=""];
  "sha256:64c3a4f685bf5fb1ff8637123dadeb2f3a1ccd28913949bbe0d21737528288a3" -> "sha256:79a9436a40b6c9c2f04db0aa8479cc15fc74d686945c897e991cbb6e85a3b8b0" [label=""];
  "sha256:79a9436a40b6c9c2f04db0aa8479cc15fc74d686945c897e991cbb6e85a3b8b0" -> "sha256:a32b31f3138db0cf1852ff9c86a856c75b8bf8c32fc0467851891c5d0faadcc3" [label=""];
  "sha256:55632c79eb3fdfe2446a94cd9392a28a02fc3f8c17cd89afb0575f50752fd937" -> "sha256:a32b31f3138db0cf1852ff9c86a856c75b8bf8c32fc0467851891c5d0faadcc3" [label=""];
  "sha256:a32b31f3138db0cf1852ff9c86a856c75b8bf8c32fc0467851891c5d0faadcc3" -> "sha256:daed70348c4ce92131fc8356d8e29f1b4cf97a85e67158c2571116aab46d0968" [label=""];
  "sha256:daed70348c4ce92131fc8356d8e29f1b4cf97a85e67158c2571116aab46d0968" -> "sha256:83ef51264c7014c2713104381a2f54fcbd01fa9c2e1750ea4d98d3ccc30022f5" [label=""];
  "sha256:83ef51264c7014c2713104381a2f54fcbd01fa9c2e1750ea4d98d3ccc30022f5" -> "sha256:418335ec3b4741c9dde6a9f9a6fcbad0f890ae166376c7c1939626f5c5fe5572" [label=""];
}

