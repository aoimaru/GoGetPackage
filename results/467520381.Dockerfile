[app/sources/467520381.Dockerfile]
digraph {
  "sha256:ced68c9707bddb3138048cdde4833a787ed13854d4013e131a4a818dd416d706" [label="docker-image://docker.io/library/node:11.11.0-alpine@sha256:632727f42753f351cd6d1d6b9339a30fd37a1c5e02420cf0c7339ef9b5c1d5ba" shape="ellipse"];
  "sha256:304d53020a732fd66a6c7d8810ebc09ce564c23cfdaac20fdc72cd5861137047" [label="/bin/sh -c apk add --no-cache tini" shape="box"];
  "sha256:4b20f179335edd1f926bd76f6b962d1389c7d92a8a38d198e0a65507de0efc8f" [label="/bin/sh -c mkdir /yarn-config     && touch /yarn-config/.yarnrc     && ln -s /yarn-config/.yarnrc /usr/local/share/.yarnrc" shape="box"];
  "sha256:82de20918c247403a3d82de702fa1e8b6b9b687f2633b35b144d5ac26c08a852" [label="/bin/sh -c apk add --no-cache bash git openssh" shape="box"];
  "sha256:266003330ed2d9fcda8c7dfb2c54d9662ef92bd0f1365d3e72bb355dda2a58f9" [label="local://context" shape="ellipse"];
  "sha256:efd87304dc77a90f5d70461dcdaa8ddeabe7411b74c7a7c23e1619d5ecae8952" [label="copy{src=/, dest=/srv}" shape="note"];
  "sha256:387c5fd6329f400c13f9309250e8de297c78407103107d72ff39d39e12eec3b6" [label="mkdir{path=/srv/server}" shape="note"];
  "sha256:2693ecd86464c38136aa98c1933df2ab42db8ec9eccf0f8dd9185d2eb20d8484" [label="sha256:2693ecd86464c38136aa98c1933df2ab42db8ec9eccf0f8dd9185d2eb20d8484" shape="plaintext"];
  "sha256:ced68c9707bddb3138048cdde4833a787ed13854d4013e131a4a818dd416d706" -> "sha256:304d53020a732fd66a6c7d8810ebc09ce564c23cfdaac20fdc72cd5861137047" [label=""];
  "sha256:304d53020a732fd66a6c7d8810ebc09ce564c23cfdaac20fdc72cd5861137047" -> "sha256:4b20f179335edd1f926bd76f6b962d1389c7d92a8a38d198e0a65507de0efc8f" [label=""];
  "sha256:4b20f179335edd1f926bd76f6b962d1389c7d92a8a38d198e0a65507de0efc8f" -> "sha256:82de20918c247403a3d82de702fa1e8b6b9b687f2633b35b144d5ac26c08a852" [label=""];
  "sha256:82de20918c247403a3d82de702fa1e8b6b9b687f2633b35b144d5ac26c08a852" -> "sha256:efd87304dc77a90f5d70461dcdaa8ddeabe7411b74c7a7c23e1619d5ecae8952" [label=""];
  "sha256:266003330ed2d9fcda8c7dfb2c54d9662ef92bd0f1365d3e72bb355dda2a58f9" -> "sha256:efd87304dc77a90f5d70461dcdaa8ddeabe7411b74c7a7c23e1619d5ecae8952" [label=""];
  "sha256:efd87304dc77a90f5d70461dcdaa8ddeabe7411b74c7a7c23e1619d5ecae8952" -> "sha256:387c5fd6329f400c13f9309250e8de297c78407103107d72ff39d39e12eec3b6" [label=""];
  "sha256:387c5fd6329f400c13f9309250e8de297c78407103107d72ff39d39e12eec3b6" -> "sha256:2693ecd86464c38136aa98c1933df2ab42db8ec9eccf0f8dd9185d2eb20d8484" [label=""];
}

