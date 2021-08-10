[app/sources/202361607.Dockerfile]
digraph {
  "sha256:5b6a9c0e18bf650a89d4a50380bd82cf48d088827c36c4075d4f6ca6e7e0684f" [label="docker-image://quay.io/continuouspipe/varnish4:latest@sha256:406d332ee42cb4ad0318935f5cbbc6d40b7bb13c2fd215c7a2b6fc3761688482" shape="ellipse"];
  "sha256:15f0d9e5969ac7b926f87421d7bdded9f664dad0e1ab08c6dd346cd7b1a551cc" [label="local://context" shape="ellipse"];
  "sha256:8e0de1327de980ea4aac172f08bf273c24c690053c445f2a16fd260893c192ce" [label="copy{src=/etc, dest=/etc/}" shape="note"];
  "sha256:01b043b2ce05074aafcbb318735361a69d6ce54cc76d992be05b222305221ac2" [label="copy{src=/usr, dest=/usr/}" shape="note"];
  "sha256:05d9cea20d983ee38558c1846b157f1f85ab3a1993e40a5c24b0562edbd971b8" [label="sha256:05d9cea20d983ee38558c1846b157f1f85ab3a1993e40a5c24b0562edbd971b8" shape="plaintext"];
  "sha256:5b6a9c0e18bf650a89d4a50380bd82cf48d088827c36c4075d4f6ca6e7e0684f" -> "sha256:8e0de1327de980ea4aac172f08bf273c24c690053c445f2a16fd260893c192ce" [label=""];
  "sha256:15f0d9e5969ac7b926f87421d7bdded9f664dad0e1ab08c6dd346cd7b1a551cc" -> "sha256:8e0de1327de980ea4aac172f08bf273c24c690053c445f2a16fd260893c192ce" [label=""];
  "sha256:8e0de1327de980ea4aac172f08bf273c24c690053c445f2a16fd260893c192ce" -> "sha256:01b043b2ce05074aafcbb318735361a69d6ce54cc76d992be05b222305221ac2" [label=""];
  "sha256:15f0d9e5969ac7b926f87421d7bdded9f664dad0e1ab08c6dd346cd7b1a551cc" -> "sha256:01b043b2ce05074aafcbb318735361a69d6ce54cc76d992be05b222305221ac2" [label=""];
  "sha256:01b043b2ce05074aafcbb318735361a69d6ce54cc76d992be05b222305221ac2" -> "sha256:05d9cea20d983ee38558c1846b157f1f85ab3a1993e40a5c24b0562edbd971b8" [label=""];
}

