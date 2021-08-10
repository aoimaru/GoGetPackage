[app/sources/243365596.Dockerfile]
digraph {
  "sha256:358d1d58727d98d13d8c77767696a67c47c4e6e71a3244276ccb28c93882d09a" [label="local://context" shape="ellipse"];
  "sha256:c2e1c5bb062d2348855f17157b743381529ff142fd4ba2ca9d240872560f0cbd" [label="docker-image://docker.io/library/nginx:1.13.8-alpine" shape="ellipse"];
  "sha256:152e8268ac5f8826fff7aef218bf47bd07f4acb19f0676da2205d7131607933b" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:b364ee6941f2529608c4cdb84a9f66815e85685425095edf5e8dc5a249a041a0" [label="copy{src=/config/jenkins.conf, dest=/etc/nginx/conf.d/jenkins.conf}" shape="note"];
  "sha256:9236d2a50d3e8173d4db8d45ac55425ea012608d9129e243aa3ac15dd07a8fe3" [label="copy{src=/config/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:70d32737d7cca505b2a29ba691569a92dec89e964d21a3c0a6543fa3b6d91d16" [label="/bin/sh -c chmod -v 0444 /etc/nginx/conf.d/jenkins.conf   && chmod -v 0444 /etc/nginx/nginx.conf" shape="box"];
  "sha256:ded28c443080c8efba3e94e3be46c1ffa4ea4297ca38a1f3cfbff5d6671b6ac9" [label="sha256:ded28c443080c8efba3e94e3be46c1ffa4ea4297ca38a1f3cfbff5d6671b6ac9" shape="plaintext"];
  "sha256:c2e1c5bb062d2348855f17157b743381529ff142fd4ba2ca9d240872560f0cbd" -> "sha256:152e8268ac5f8826fff7aef218bf47bd07f4acb19f0676da2205d7131607933b" [label=""];
  "sha256:152e8268ac5f8826fff7aef218bf47bd07f4acb19f0676da2205d7131607933b" -> "sha256:b364ee6941f2529608c4cdb84a9f66815e85685425095edf5e8dc5a249a041a0" [label=""];
  "sha256:358d1d58727d98d13d8c77767696a67c47c4e6e71a3244276ccb28c93882d09a" -> "sha256:b364ee6941f2529608c4cdb84a9f66815e85685425095edf5e8dc5a249a041a0" [label=""];
  "sha256:b364ee6941f2529608c4cdb84a9f66815e85685425095edf5e8dc5a249a041a0" -> "sha256:9236d2a50d3e8173d4db8d45ac55425ea012608d9129e243aa3ac15dd07a8fe3" [label=""];
  "sha256:358d1d58727d98d13d8c77767696a67c47c4e6e71a3244276ccb28c93882d09a" -> "sha256:9236d2a50d3e8173d4db8d45ac55425ea012608d9129e243aa3ac15dd07a8fe3" [label=""];
  "sha256:9236d2a50d3e8173d4db8d45ac55425ea012608d9129e243aa3ac15dd07a8fe3" -> "sha256:70d32737d7cca505b2a29ba691569a92dec89e964d21a3c0a6543fa3b6d91d16" [label=""];
  "sha256:70d32737d7cca505b2a29ba691569a92dec89e964d21a3c0a6543fa3b6d91d16" -> "sha256:ded28c443080c8efba3e94e3be46c1ffa4ea4297ca38a1f3cfbff5d6671b6ac9" [label=""];
}

