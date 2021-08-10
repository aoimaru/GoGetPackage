[app/sources/235833142.Dockerfile]
digraph {
  "sha256:4f4c1a15bc392dd22e24e6433a6244e3f51ca6906c1204f528d1e7c4dd46e71f" [label="local://context" shape="ellipse"];
  "sha256:f6ce568a1c77ec5830896deb630917a306de301b5355e066b80b8a15295c80ca" [label="docker-image://gcr.io/percy-dev/baseimage-web:2018-06-27-230729" shape="ellipse"];
  "sha256:3c68992a4195b203833e913e6f3d25c6b75997f969cd623436bf72782eb00539" [label="copy{src=/config/nginx-main.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:f22b3b0b1c927cbcc96bc7559dd7b957e8720cffe2cf79af4152863fa4766453" [label="copy{src=/config/nginx-default-site.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:2cc994c5628323de6d06845f3e7af68bc163e73819bcff46751c27d10f1bbaf8" [label="copy{src=/config/run-nginx.sh, dest=/etc/service/nginx/run}" shape="note"];
  "sha256:36719e1cf197ee714443328bb450fc15b68561d80f895cdf5c3af9a5e3dc4560" [label="/bin/sh -c chmod +x /etc/service/*/run" shape="box"];
  "sha256:34640dade6202a6d9553cc6bb7eae7531ff0ff6d96afc783a5d4e0e3ed0ec8b9" [label="copy{src=/package.json, dest=/app/src/},copy{src=/yarn.lock, dest=/app/src/},copy{src=/bower.json, dest=/app/src/}" shape="note"];
  "sha256:108b9c72e70375130f8d099d7ee0192bac113812972fd97431ddaaf877ed9e06" [label="mkdir{path=/app/src}" shape="note"];
  "sha256:21b41e46d04dcc54d64a8adb75cdd68bb3b9afe707277b261586842094eca87a" [label="/bin/sh -c yarn install --pure-lockfile" shape="box"];
  "sha256:6c07870feac991dd60dbbc43f75474a38c03ed84abe0d6b12add18558f3b700f" [label="/bin/sh -c bower install --allow-root" shape="box"];
  "sha256:a384a4df881f79724fd16c09b1ddd3df19749e3077f57cc46e60df778dde62e4" [label="copy{src=/, dest=/app/src/}" shape="note"];
  "sha256:3b2bbaa61733fbd0c60bc87cd9f4272f0d5c9627eb8c9de0dd23f0bdbe74c32e" [label="/bin/sh -c if [ \"$testing\" = \"true\" ] ; then   yarn run build-test; else   yarn run build-production; fi" shape="box"];
  "sha256:1328aa9dad195680197df0a0e0f235cdb30b4bbd3cd5a6a4792cdf2edba26a70" [label="sha256:1328aa9dad195680197df0a0e0f235cdb30b4bbd3cd5a6a4792cdf2edba26a70" shape="plaintext"];
  "sha256:f6ce568a1c77ec5830896deb630917a306de301b5355e066b80b8a15295c80ca" -> "sha256:3c68992a4195b203833e913e6f3d25c6b75997f969cd623436bf72782eb00539" [label=""];
  "sha256:4f4c1a15bc392dd22e24e6433a6244e3f51ca6906c1204f528d1e7c4dd46e71f" -> "sha256:3c68992a4195b203833e913e6f3d25c6b75997f969cd623436bf72782eb00539" [label=""];
  "sha256:3c68992a4195b203833e913e6f3d25c6b75997f969cd623436bf72782eb00539" -> "sha256:f22b3b0b1c927cbcc96bc7559dd7b957e8720cffe2cf79af4152863fa4766453" [label=""];
  "sha256:4f4c1a15bc392dd22e24e6433a6244e3f51ca6906c1204f528d1e7c4dd46e71f" -> "sha256:f22b3b0b1c927cbcc96bc7559dd7b957e8720cffe2cf79af4152863fa4766453" [label=""];
  "sha256:f22b3b0b1c927cbcc96bc7559dd7b957e8720cffe2cf79af4152863fa4766453" -> "sha256:2cc994c5628323de6d06845f3e7af68bc163e73819bcff46751c27d10f1bbaf8" [label=""];
  "sha256:4f4c1a15bc392dd22e24e6433a6244e3f51ca6906c1204f528d1e7c4dd46e71f" -> "sha256:2cc994c5628323de6d06845f3e7af68bc163e73819bcff46751c27d10f1bbaf8" [label=""];
  "sha256:2cc994c5628323de6d06845f3e7af68bc163e73819bcff46751c27d10f1bbaf8" -> "sha256:36719e1cf197ee714443328bb450fc15b68561d80f895cdf5c3af9a5e3dc4560" [label=""];
  "sha256:36719e1cf197ee714443328bb450fc15b68561d80f895cdf5c3af9a5e3dc4560" -> "sha256:34640dade6202a6d9553cc6bb7eae7531ff0ff6d96afc783a5d4e0e3ed0ec8b9" [label=""];
  "sha256:4f4c1a15bc392dd22e24e6433a6244e3f51ca6906c1204f528d1e7c4dd46e71f" -> "sha256:34640dade6202a6d9553cc6bb7eae7531ff0ff6d96afc783a5d4e0e3ed0ec8b9" [label=""];
  "sha256:34640dade6202a6d9553cc6bb7eae7531ff0ff6d96afc783a5d4e0e3ed0ec8b9" -> "sha256:108b9c72e70375130f8d099d7ee0192bac113812972fd97431ddaaf877ed9e06" [label=""];
  "sha256:108b9c72e70375130f8d099d7ee0192bac113812972fd97431ddaaf877ed9e06" -> "sha256:21b41e46d04dcc54d64a8adb75cdd68bb3b9afe707277b261586842094eca87a" [label=""];
  "sha256:21b41e46d04dcc54d64a8adb75cdd68bb3b9afe707277b261586842094eca87a" -> "sha256:6c07870feac991dd60dbbc43f75474a38c03ed84abe0d6b12add18558f3b700f" [label=""];
  "sha256:6c07870feac991dd60dbbc43f75474a38c03ed84abe0d6b12add18558f3b700f" -> "sha256:a384a4df881f79724fd16c09b1ddd3df19749e3077f57cc46e60df778dde62e4" [label=""];
  "sha256:4f4c1a15bc392dd22e24e6433a6244e3f51ca6906c1204f528d1e7c4dd46e71f" -> "sha256:a384a4df881f79724fd16c09b1ddd3df19749e3077f57cc46e60df778dde62e4" [label=""];
  "sha256:a384a4df881f79724fd16c09b1ddd3df19749e3077f57cc46e60df778dde62e4" -> "sha256:3b2bbaa61733fbd0c60bc87cd9f4272f0d5c9627eb8c9de0dd23f0bdbe74c32e" [label=""];
  "sha256:3b2bbaa61733fbd0c60bc87cd9f4272f0d5c9627eb8c9de0dd23f0bdbe74c32e" -> "sha256:1328aa9dad195680197df0a0e0f235cdb30b4bbd3cd5a6a4792cdf2edba26a70" [label=""];
}

