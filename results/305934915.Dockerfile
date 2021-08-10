[app/sources/305934915.Dockerfile]
digraph {
  "sha256:8bfa3d2e9589b53b0c5bc02b051c2b5791aa2d55a8347df69b4990a62d5ed206" [label="docker-image://docker.io/library/node:8.9.4" shape="ellipse"];
  "sha256:18f62e9b646efb4acfbdbfbf34803007319156caea9c98048649dd5d35e8bf68" [label="mkdir{path=/reactapp}" shape="note"];
  "sha256:3477386bc4e985bcda18baa6c545ef8d68cf97dc181434695b46448814ddebb0" [label="/bin/sh -c npm install -g yarn" shape="box"];
  "sha256:b8194f6cd763cc9d916af14d9171e171ac9019f58465f972c6dd2c0ce849d5df" [label="local://context" shape="ellipse"];
  "sha256:3bc2f15f5ce4cd22a4b7436d8a57af05caaaf603aefa4fe6f78b8a7c89a9cc0b" [label="copy{src=/package.json, dest=/reactapp/},copy{src=/yarn.lock, dest=/reactapp/}" shape="note"];
  "sha256:ff712a20dea7de19b2b9cf83c9caae6ee774f4e3b2d6a5c17ac642804148b06f" [label="copy{src=/internals, dest=/reactapp/internals}" shape="note"];
  "sha256:bd4cb95b21f9175a8dd7f28a9e4b1e480e880297d135d2f4dd9d1ed79625d6ba" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:116e7e53f41a4d608b3931c51fb285fa3df74230a2b1e0f65566e48901f047ef" [label="copy{src=/, dest=/reactapp/}" shape="note"];
  "sha256:365821dca7d3a87447ed5aff75b9f46f7412722c0a3c67d7b8dfe0482b6e3cae" [label="sha256:365821dca7d3a87447ed5aff75b9f46f7412722c0a3c67d7b8dfe0482b6e3cae" shape="plaintext"];
  "sha256:8bfa3d2e9589b53b0c5bc02b051c2b5791aa2d55a8347df69b4990a62d5ed206" -> "sha256:18f62e9b646efb4acfbdbfbf34803007319156caea9c98048649dd5d35e8bf68" [label=""];
  "sha256:18f62e9b646efb4acfbdbfbf34803007319156caea9c98048649dd5d35e8bf68" -> "sha256:3477386bc4e985bcda18baa6c545ef8d68cf97dc181434695b46448814ddebb0" [label=""];
  "sha256:3477386bc4e985bcda18baa6c545ef8d68cf97dc181434695b46448814ddebb0" -> "sha256:3bc2f15f5ce4cd22a4b7436d8a57af05caaaf603aefa4fe6f78b8a7c89a9cc0b" [label=""];
  "sha256:b8194f6cd763cc9d916af14d9171e171ac9019f58465f972c6dd2c0ce849d5df" -> "sha256:3bc2f15f5ce4cd22a4b7436d8a57af05caaaf603aefa4fe6f78b8a7c89a9cc0b" [label=""];
  "sha256:3bc2f15f5ce4cd22a4b7436d8a57af05caaaf603aefa4fe6f78b8a7c89a9cc0b" -> "sha256:ff712a20dea7de19b2b9cf83c9caae6ee774f4e3b2d6a5c17ac642804148b06f" [label=""];
  "sha256:b8194f6cd763cc9d916af14d9171e171ac9019f58465f972c6dd2c0ce849d5df" -> "sha256:ff712a20dea7de19b2b9cf83c9caae6ee774f4e3b2d6a5c17ac642804148b06f" [label=""];
  "sha256:ff712a20dea7de19b2b9cf83c9caae6ee774f4e3b2d6a5c17ac642804148b06f" -> "sha256:bd4cb95b21f9175a8dd7f28a9e4b1e480e880297d135d2f4dd9d1ed79625d6ba" [label=""];
  "sha256:bd4cb95b21f9175a8dd7f28a9e4b1e480e880297d135d2f4dd9d1ed79625d6ba" -> "sha256:116e7e53f41a4d608b3931c51fb285fa3df74230a2b1e0f65566e48901f047ef" [label=""];
  "sha256:b8194f6cd763cc9d916af14d9171e171ac9019f58465f972c6dd2c0ce849d5df" -> "sha256:116e7e53f41a4d608b3931c51fb285fa3df74230a2b1e0f65566e48901f047ef" [label=""];
  "sha256:116e7e53f41a4d608b3931c51fb285fa3df74230a2b1e0f65566e48901f047ef" -> "sha256:365821dca7d3a87447ed5aff75b9f46f7412722c0a3c67d7b8dfe0482b6e3cae" [label=""];
}

