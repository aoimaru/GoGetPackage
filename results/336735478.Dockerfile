[app/sources/336735478.Dockerfile]
digraph {
  "sha256:98d260a30aba6e9532680710f7efeb16304e5d5bf4a036aabf81c5b9cf42d1ed" [label="local://context" shape="ellipse"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" [label="docker-image://docker.io/library/node:9-alpine" shape="ellipse"];
  "sha256:c5b77aa7c951ac561436b099aa4e976f79cc64ee3e2b5b35c78510fba5d84fda" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c46f53b29ca3aad7af6cdf181bf786423adad6952e9dec996555e1c9c1bd0816" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:21411bfff9b51a1f5b584cd4380ac07bf6d75d37e8f6cd2a42633b6afe6ee90a" [label="/bin/sh -c npm set progress=false && npm i --silent" shape="box"];
  "sha256:4c0bab29c770e8c188f3f1c0ecdbf4e94c081b34dfc0a5448aacd324f71c4e22" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:659e6b865df95542e25637d5f9a0e4d62de8a637789b2117c55ce684932fece7" [label="/bin/sh -c $(npm bin)/ng build --prod" shape="box"];
  "sha256:797feea95c8577291d29fa454329ac3a08d42cd10c71bb5d4a3b05bce98f8d1f" [label="docker-image://docker.io/library/nginx:1.12-alpine" shape="ellipse"];
  "sha256:91a1a615c337f2705a3b5aa820c7c19ad073e64c2281af0408ecf246feb49ecf" [label="/bin/sh -c rm -rf /usr/share/nginx/html/*" shape="box"];
  "sha256:27eee96c594dfb6db0c2b75d76bf51237a81ad29c331c642ee8f0534b56ee1e9" [label="copy{src=/usr/src/app/dist, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:a879eb3f901e19d9e19467cd7002229d446a27ab4ad6e401c06fe00d8db67176" [label="sha256:a879eb3f901e19d9e19467cd7002229d446a27ab4ad6e401c06fe00d8db67176" shape="plaintext"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" -> "sha256:c5b77aa7c951ac561436b099aa4e976f79cc64ee3e2b5b35c78510fba5d84fda" [label=""];
  "sha256:c5b77aa7c951ac561436b099aa4e976f79cc64ee3e2b5b35c78510fba5d84fda" -> "sha256:c46f53b29ca3aad7af6cdf181bf786423adad6952e9dec996555e1c9c1bd0816" [label=""];
  "sha256:98d260a30aba6e9532680710f7efeb16304e5d5bf4a036aabf81c5b9cf42d1ed" -> "sha256:c46f53b29ca3aad7af6cdf181bf786423adad6952e9dec996555e1c9c1bd0816" [label=""];
  "sha256:c46f53b29ca3aad7af6cdf181bf786423adad6952e9dec996555e1c9c1bd0816" -> "sha256:21411bfff9b51a1f5b584cd4380ac07bf6d75d37e8f6cd2a42633b6afe6ee90a" [label=""];
  "sha256:21411bfff9b51a1f5b584cd4380ac07bf6d75d37e8f6cd2a42633b6afe6ee90a" -> "sha256:4c0bab29c770e8c188f3f1c0ecdbf4e94c081b34dfc0a5448aacd324f71c4e22" [label=""];
  "sha256:98d260a30aba6e9532680710f7efeb16304e5d5bf4a036aabf81c5b9cf42d1ed" -> "sha256:4c0bab29c770e8c188f3f1c0ecdbf4e94c081b34dfc0a5448aacd324f71c4e22" [label=""];
  "sha256:4c0bab29c770e8c188f3f1c0ecdbf4e94c081b34dfc0a5448aacd324f71c4e22" -> "sha256:659e6b865df95542e25637d5f9a0e4d62de8a637789b2117c55ce684932fece7" [label=""];
  "sha256:797feea95c8577291d29fa454329ac3a08d42cd10c71bb5d4a3b05bce98f8d1f" -> "sha256:91a1a615c337f2705a3b5aa820c7c19ad073e64c2281af0408ecf246feb49ecf" [label=""];
  "sha256:91a1a615c337f2705a3b5aa820c7c19ad073e64c2281af0408ecf246feb49ecf" -> "sha256:27eee96c594dfb6db0c2b75d76bf51237a81ad29c331c642ee8f0534b56ee1e9" [label=""];
  "sha256:659e6b865df95542e25637d5f9a0e4d62de8a637789b2117c55ce684932fece7" -> "sha256:27eee96c594dfb6db0c2b75d76bf51237a81ad29c331c642ee8f0534b56ee1e9" [label=""];
  "sha256:27eee96c594dfb6db0c2b75d76bf51237a81ad29c331c642ee8f0534b56ee1e9" -> "sha256:a879eb3f901e19d9e19467cd7002229d446a27ab4ad6e401c06fe00d8db67176" [label=""];
}

