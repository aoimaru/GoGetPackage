[app/sources/198513318.Dockerfile]
digraph {
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" [label="docker-image://docker.io/mhart/alpine-node:6" shape="ellipse"];
  "sha256:44188d9b5515c9cfedc7c8e847d4893300e83e9e1f6e3a68151cb2919b1a33b1" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:f1c0fcb060b5dad769b78e65ee693cdfa47110c49201f5a598cb4c0e23fa83cb" [label="local://context" shape="ellipse"];
  "sha256:7bc92570afa2a81d2039335d33d479005fb5badab6711a591edd4ea916b1660f" [label="copy{src=/package.json, dest=/src/}" shape="note"];
  "sha256:40b2fbddec28419c29cb197c18e17c1dbd3edec4618ec24743da4438d97f655a" [label="mkdir{path=/src}" shape="note"];
  "sha256:442d562a67835d6281e0b4c7649258aedfb3aeb4a08964e2a7e78a6a7d4062d2" [label="/bin/sh -c apk update &&     apk add make gcc g++ python git &&     npm install --production &&     apk del make gcc g++ python git" shape="box"];
  "sha256:18d03099f3a51ac1c915d2266f742f199ddacb40e561282f366db9166ea23707" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:ebd28d1c6b8808ea91f972ae37077849885cf78ddba3e2fb32173573f64ea7cf" [label="sha256:ebd28d1c6b8808ea91f972ae37077849885cf78ddba3e2fb32173573f64ea7cf" shape="plaintext"];
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" -> "sha256:44188d9b5515c9cfedc7c8e847d4893300e83e9e1f6e3a68151cb2919b1a33b1" [label=""];
  "sha256:44188d9b5515c9cfedc7c8e847d4893300e83e9e1f6e3a68151cb2919b1a33b1" -> "sha256:7bc92570afa2a81d2039335d33d479005fb5badab6711a591edd4ea916b1660f" [label=""];
  "sha256:f1c0fcb060b5dad769b78e65ee693cdfa47110c49201f5a598cb4c0e23fa83cb" -> "sha256:7bc92570afa2a81d2039335d33d479005fb5badab6711a591edd4ea916b1660f" [label=""];
  "sha256:7bc92570afa2a81d2039335d33d479005fb5badab6711a591edd4ea916b1660f" -> "sha256:40b2fbddec28419c29cb197c18e17c1dbd3edec4618ec24743da4438d97f655a" [label=""];
  "sha256:40b2fbddec28419c29cb197c18e17c1dbd3edec4618ec24743da4438d97f655a" -> "sha256:442d562a67835d6281e0b4c7649258aedfb3aeb4a08964e2a7e78a6a7d4062d2" [label=""];
  "sha256:442d562a67835d6281e0b4c7649258aedfb3aeb4a08964e2a7e78a6a7d4062d2" -> "sha256:18d03099f3a51ac1c915d2266f742f199ddacb40e561282f366db9166ea23707" [label=""];
  "sha256:f1c0fcb060b5dad769b78e65ee693cdfa47110c49201f5a598cb4c0e23fa83cb" -> "sha256:18d03099f3a51ac1c915d2266f742f199ddacb40e561282f366db9166ea23707" [label=""];
  "sha256:18d03099f3a51ac1c915d2266f742f199ddacb40e561282f366db9166ea23707" -> "sha256:ebd28d1c6b8808ea91f972ae37077849885cf78ddba3e2fb32173573f64ea7cf" [label=""];
}

