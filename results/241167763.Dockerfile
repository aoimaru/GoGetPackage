[app/sources/241167763.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e94dda27ed237f1c3114ed3d51801dd64b38a65c7df8b2b014115cdc4364ba2b" [label="/bin/sh -c apt-get update && apt-get upgrade -y -o DPkg::Options::=--force-confold" shape="box"];
  "sha256:176b357f71aa40245c49cdce95033f8b1222923f9fe563b838ee23aa97473c28" [label="/bin/sh -c apt-get install -y software-properties-common" shape="box"];
  "sha256:19853ce7e4c898a124bf2a7451a6c6ae269c5512bece59d437fcbfecd02d6b05" [label="/bin/sh -c apt-get install -y vim" shape="box"];
  "sha256:cac3503209ba32573cc6929bf8f46d7574ccc249923a6433d61039318601cae3" [label="/bin/sh -c apt-get install -y apt-transport-https ca-certificates" shape="box"];
  "sha256:4bced0af157feb91443bb28d50b0c992926443ab9bc8339c5c514cbd30b7e6de" [label="/bin/sh -c apt-get install -y salt-master salt-minion" shape="box"];
  "sha256:14eab55ce60afcce2b83c25900af1bfa6d18941e297a8488e760accceb61d266" [label="/bin/sh -c sed -i \"s|#master: salt|master: localhost|g\" /etc/salt/minion" shape="box"];
  "sha256:fa6e50fafc072784b41a8243a3a666de63f1ea4df4aabb88893c80cafdb10d17" [label="/bin/sh -c sed -i \"s|#auto_accept: False|auto_accept: True|g\" /etc/salt/master" shape="box"];
  "sha256:17f6f7f1b99e50a9cd48492466ffeeb1f1eaeff3f09b04ca811a6a0285e3bbb6" [label="/bin/sh -c sed -i \"s|#open_mode: False|open_mode: True|g\" /etc/salt/master" shape="box"];
  "sha256:4069ebce334b151b7363e1f09b192e7f50b09dc550234bc26087a5c6d79eda1e" [label="local://context" shape="ellipse"];
  "sha256:a65820e8b55e7e55bb785ace9071b23fafe57ea9be77b9d3b3791237a00ddde9" [label="copy{src=/signalfx-agent, dest=/srv/salt/signalfx-agent/}" shape="note"];
  "sha256:73cca44980f3a3e432770e75314984c89ae724524c01027872e5e5c21ca76518" [label="copy{src=/pillar.example, dest=/srv/pillar/signalfx-agent.sls}" shape="note"];
  "sha256:e9bd888c9cd69cc90b9e828d9921b7ad3629b7120e230553fc19e88dc8e486a5" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/entrypoint.sh}" shape="note"];
  "sha256:6bd0a36e42a5d30fd13dd621677c2555cf8d20d03ef1942b8e8ef2e50861ccef" [label="/bin/sh -c chmod +x /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:0b1940e890c0964d216df9c0fb13fb1550e21cbe82d670ae05d3a2baa881026d" [label="sha256:0b1940e890c0964d216df9c0fb13fb1550e21cbe82d670ae05d3a2baa881026d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e94dda27ed237f1c3114ed3d51801dd64b38a65c7df8b2b014115cdc4364ba2b" [label=""];
  "sha256:e94dda27ed237f1c3114ed3d51801dd64b38a65c7df8b2b014115cdc4364ba2b" -> "sha256:176b357f71aa40245c49cdce95033f8b1222923f9fe563b838ee23aa97473c28" [label=""];
  "sha256:176b357f71aa40245c49cdce95033f8b1222923f9fe563b838ee23aa97473c28" -> "sha256:19853ce7e4c898a124bf2a7451a6c6ae269c5512bece59d437fcbfecd02d6b05" [label=""];
  "sha256:19853ce7e4c898a124bf2a7451a6c6ae269c5512bece59d437fcbfecd02d6b05" -> "sha256:cac3503209ba32573cc6929bf8f46d7574ccc249923a6433d61039318601cae3" [label=""];
  "sha256:cac3503209ba32573cc6929bf8f46d7574ccc249923a6433d61039318601cae3" -> "sha256:4bced0af157feb91443bb28d50b0c992926443ab9bc8339c5c514cbd30b7e6de" [label=""];
  "sha256:4bced0af157feb91443bb28d50b0c992926443ab9bc8339c5c514cbd30b7e6de" -> "sha256:14eab55ce60afcce2b83c25900af1bfa6d18941e297a8488e760accceb61d266" [label=""];
  "sha256:14eab55ce60afcce2b83c25900af1bfa6d18941e297a8488e760accceb61d266" -> "sha256:fa6e50fafc072784b41a8243a3a666de63f1ea4df4aabb88893c80cafdb10d17" [label=""];
  "sha256:fa6e50fafc072784b41a8243a3a666de63f1ea4df4aabb88893c80cafdb10d17" -> "sha256:17f6f7f1b99e50a9cd48492466ffeeb1f1eaeff3f09b04ca811a6a0285e3bbb6" [label=""];
  "sha256:17f6f7f1b99e50a9cd48492466ffeeb1f1eaeff3f09b04ca811a6a0285e3bbb6" -> "sha256:a65820e8b55e7e55bb785ace9071b23fafe57ea9be77b9d3b3791237a00ddde9" [label=""];
  "sha256:4069ebce334b151b7363e1f09b192e7f50b09dc550234bc26087a5c6d79eda1e" -> "sha256:a65820e8b55e7e55bb785ace9071b23fafe57ea9be77b9d3b3791237a00ddde9" [label=""];
  "sha256:a65820e8b55e7e55bb785ace9071b23fafe57ea9be77b9d3b3791237a00ddde9" -> "sha256:73cca44980f3a3e432770e75314984c89ae724524c01027872e5e5c21ca76518" [label=""];
  "sha256:4069ebce334b151b7363e1f09b192e7f50b09dc550234bc26087a5c6d79eda1e" -> "sha256:73cca44980f3a3e432770e75314984c89ae724524c01027872e5e5c21ca76518" [label=""];
  "sha256:73cca44980f3a3e432770e75314984c89ae724524c01027872e5e5c21ca76518" -> "sha256:e9bd888c9cd69cc90b9e828d9921b7ad3629b7120e230553fc19e88dc8e486a5" [label=""];
  "sha256:4069ebce334b151b7363e1f09b192e7f50b09dc550234bc26087a5c6d79eda1e" -> "sha256:e9bd888c9cd69cc90b9e828d9921b7ad3629b7120e230553fc19e88dc8e486a5" [label=""];
  "sha256:e9bd888c9cd69cc90b9e828d9921b7ad3629b7120e230553fc19e88dc8e486a5" -> "sha256:6bd0a36e42a5d30fd13dd621677c2555cf8d20d03ef1942b8e8ef2e50861ccef" [label=""];
  "sha256:6bd0a36e42a5d30fd13dd621677c2555cf8d20d03ef1942b8e8ef2e50861ccef" -> "sha256:0b1940e890c0964d216df9c0fb13fb1550e21cbe82d670ae05d3a2baa881026d" [label=""];
}

