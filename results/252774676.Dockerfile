[app/sources/252774676.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:a8ac522779fef980836d7002fee6994ddae98f6cc91566e0ee4f8a67d82c78f2" [label="local://context" shape="ellipse"];
  "sha256:5b18f1afd50e98c7c483e22dc011fa040d69b86c6fc9c18ecee9e3be856d5c7c" [label="copy{src=/start.sh, dest=/opt/start.sh}" shape="note"];
  "sha256:e40ae3977ef0a3b750731149a13d82e66ca55c4ad21e1a34d375f29a608cf4a7" [label="/bin/sh -c apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get install -y postfix && apt-get clean && rm -rf /var/lib/apt/lists/* && ln -sf /etc/services /var/spool/postfix/etc/services && postconf myhostname={{.Hostname}} && postconf -X mydestination && postconf virtual_alias_domains={{.Domains}} && postconf virtual_alias_maps=hash:/etc/postfix/virtual && postconf -F smtp/unix/chroot=n" shape="box"];
  "sha256:8058748ae0c48236053ca00525079efe6e87472247d6f093ea86ed0634771999" [label="sha256:8058748ae0c48236053ca00525079efe6e87472247d6f093ea86ed0634771999" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:5b18f1afd50e98c7c483e22dc011fa040d69b86c6fc9c18ecee9e3be856d5c7c" [label=""];
  "sha256:a8ac522779fef980836d7002fee6994ddae98f6cc91566e0ee4f8a67d82c78f2" -> "sha256:5b18f1afd50e98c7c483e22dc011fa040d69b86c6fc9c18ecee9e3be856d5c7c" [label=""];
  "sha256:5b18f1afd50e98c7c483e22dc011fa040d69b86c6fc9c18ecee9e3be856d5c7c" -> "sha256:e40ae3977ef0a3b750731149a13d82e66ca55c4ad21e1a34d375f29a608cf4a7" [label=""];
  "sha256:e40ae3977ef0a3b750731149a13d82e66ca55c4ad21e1a34d375f29a608cf4a7" -> "sha256:8058748ae0c48236053ca00525079efe6e87472247d6f093ea86ed0634771999" [label=""];
}

