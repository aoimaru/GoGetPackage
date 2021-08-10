[app/sources/338189020.Dockerfile]
digraph {
  "sha256:4a553c96e46759da8aff9701f718009dc80b2df63f35ef3086e760a00a36645d" [label="docker-image://docker.io/library/node:9.0.0-alpine" shape="ellipse"];
  "sha256:172c0e16b7dd61c01d89b9c318966bab108360743f59b97521762fa1de4e9ba4" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:476d72c5f565604bd3f04a7093047636662d7aadc0bde981a933b348ab30ad82" [label="local://context" shape="ellipse"];
  "sha256:69fe29d86dbdf423de543ae3995001108a3995e04c6d88ee8fc40fd8106b73d7" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:43124287e1db7a57d8dbce3f6db132f6269876fe13ac5d14e9d66bc91bf8a179" [label="copy{src=/.env.stage, dest=/usr/src/app/.env}" shape="note"];
  "sha256:876367514cad5b5d8aa9421e115fa5a2aee3d435d1412e43468fd42f0a627dfd" [label="/bin/sh -c apk add --no-cache --update nginx &&   rm -rf /var/cache/apk/*" shape="box"];
  "sha256:83136b3c4d369bd436d105959c230b01459234de179611a0d0108e967885b4ac" [label="/bin/sh -c yarn && npm rebuild node-sass && yarn build &&   rm -rf ./src ./node_modules /usr/local/lib/node_modules /usr/local/share/.cache/yarn/ &&   mkdir -p /run/nginx" shape="box"];
  "sha256:fb30b725d60adad49fefed161282793acb91bde9e8d203e8a8bd9e7fb4432cdd" [label="copy{src=/nginx-stage/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:eeda08a17ab50f8965bf906a4ffb3f72e23aaf37d3d2f54c0154e70d67b3229c" [label="sha256:eeda08a17ab50f8965bf906a4ffb3f72e23aaf37d3d2f54c0154e70d67b3229c" shape="plaintext"];
  "sha256:4a553c96e46759da8aff9701f718009dc80b2df63f35ef3086e760a00a36645d" -> "sha256:172c0e16b7dd61c01d89b9c318966bab108360743f59b97521762fa1de4e9ba4" [label=""];
  "sha256:172c0e16b7dd61c01d89b9c318966bab108360743f59b97521762fa1de4e9ba4" -> "sha256:69fe29d86dbdf423de543ae3995001108a3995e04c6d88ee8fc40fd8106b73d7" [label=""];
  "sha256:476d72c5f565604bd3f04a7093047636662d7aadc0bde981a933b348ab30ad82" -> "sha256:69fe29d86dbdf423de543ae3995001108a3995e04c6d88ee8fc40fd8106b73d7" [label=""];
  "sha256:69fe29d86dbdf423de543ae3995001108a3995e04c6d88ee8fc40fd8106b73d7" -> "sha256:43124287e1db7a57d8dbce3f6db132f6269876fe13ac5d14e9d66bc91bf8a179" [label=""];
  "sha256:476d72c5f565604bd3f04a7093047636662d7aadc0bde981a933b348ab30ad82" -> "sha256:43124287e1db7a57d8dbce3f6db132f6269876fe13ac5d14e9d66bc91bf8a179" [label=""];
  "sha256:43124287e1db7a57d8dbce3f6db132f6269876fe13ac5d14e9d66bc91bf8a179" -> "sha256:876367514cad5b5d8aa9421e115fa5a2aee3d435d1412e43468fd42f0a627dfd" [label=""];
  "sha256:876367514cad5b5d8aa9421e115fa5a2aee3d435d1412e43468fd42f0a627dfd" -> "sha256:83136b3c4d369bd436d105959c230b01459234de179611a0d0108e967885b4ac" [label=""];
  "sha256:83136b3c4d369bd436d105959c230b01459234de179611a0d0108e967885b4ac" -> "sha256:fb30b725d60adad49fefed161282793acb91bde9e8d203e8a8bd9e7fb4432cdd" [label=""];
  "sha256:476d72c5f565604bd3f04a7093047636662d7aadc0bde981a933b348ab30ad82" -> "sha256:fb30b725d60adad49fefed161282793acb91bde9e8d203e8a8bd9e7fb4432cdd" [label=""];
  "sha256:fb30b725d60adad49fefed161282793acb91bde9e8d203e8a8bd9e7fb4432cdd" -> "sha256:eeda08a17ab50f8965bf906a4ffb3f72e23aaf37d3d2f54c0154e70d67b3229c" [label=""];
}

