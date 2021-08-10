[app/sources/267398037.Dockerfile]
digraph {
  "sha256:9cd250c3a45cce5fbbe582bbf23046d83d2f1ac50f9a011e90a29ee60a4f3ee6" [label="docker-image://docker.io/library/osf_scraper_base:latest" shape="ellipse"];
  "sha256:905a8c2a76ce8eede98425be5f9f7835c871fdfca65b3664a0c2ad96e137e73d" [label="/bin/sh -c echo \"++ building Dockerfile for env: ${BUILD_ENV}\"" shape="box"];
  "sha256:8465585f319e7afa350628fb10ff94b920ade3e6245f72c43d58edf143c9dd9a" [label="local://context" shape="ellipse"];
  "sha256:eaa399cfcd9165c7fbf3d1d6340d3547441f3e3659946571e0f499c9dc885359" [label="copy{src=/osf_scraper_api/devops/build/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:b9f7369bf8aae01bdad45dadb39ed96a2bae0e7f5776b8102930ab6cb44d75a9" [label="copy{src=/osf_scraper_api/devops/build/nginx_site.conf, dest=/etc/nginx/sites-available/app.conf}" shape="note"];
  "sha256:ae9b6c7837622235b42702f23981bd2545efb61c9f6379c1f0205ac14fdff60e" [label="/bin/sh -c rm /etc/nginx/sites-enabled/*" shape="box"];
  "sha256:688af0288738e7acfd80047c65d97f078abbdfea12ad3f8c29f6629d0def8dc0" [label="/bin/sh -c ln -s     /etc/nginx/sites-available/app.conf     /etc/nginx/sites-enabled/app.conf" shape="box"];
  "sha256:27e92d244459063b01dbb0688401a0f8044b0fd8e56f58b4ecea9e8ad50b319e" [label="copy{src=/osf_scraper_api/osf_scraper_api, dest=/srv/app/osf_scraper_api}" shape="note"];
  "sha256:2eecf2db2e0469101db01bcf4537493f2c7ca3b32da5cb8b292c263fa80560fd" [label="copy{src=/osf/osf, dest=/srv/app/osf}" shape="note"];
  "sha256:f18025654cd4971b50264f7d25f8852334ab9e76cd5c8a81880ce66af9674a15" [label="copy{src=/osf_scraper_api/devops/build/app.ini, dest=/srv/app/app.ini}" shape="note"];
  "sha256:1de0aa05cff42ba23067ab9a80912c8f2cf2d002905981659e17629cdfb2f9a2" [label="/bin/sh -c echo \"++ env_path: \"$ENV_PATH" shape="box"];
  "sha256:f5995700f4322411c5b30c2c6a96abe2a093fa63ef6e361f85cb8b3ed79a8183" [label="/bin/sh -c rm \"${WDIR}/env.json\"" shape="box"];
  "sha256:592cf166376ca948e8fb28b52a7e3776aa79d103d91bfd8881deda3ac17c243b" [label="copy{src=/devops/secret_files/env, dest=/srv/app/osf_scraper_api/env.json}" shape="note"];
  "sha256:1d28c40ca0d6ee63a86fbc5e9e5720331f2733ceab27bb409c64f2d6d2198873" [label="/bin/sh -c chgrp -R webgroup /srv" shape="box"];
  "sha256:f79b2524a67ca4406c6e45982ebe71cc012f1c2b1a1feba90d55d18d613c2855" [label="/bin/sh -c chmod -R u=rwX,g=rwX,o=X /srv" shape="box"];
  "sha256:f24714d6ae6d206fba909099c47e6e2d3f21b5c93099b4cec70dfa1014dc468d" [label="/bin/sh -c pip install -r \"${SRC_DIR}/osf_scraper_api/requirements.txt\"" shape="box"];
  "sha256:8380a02d8a39136fab9d4a6a0bec74d6c6de4d1984a3163afed0d7b9bbc32a27" [label="sha256:8380a02d8a39136fab9d4a6a0bec74d6c6de4d1984a3163afed0d7b9bbc32a27" shape="plaintext"];
  "sha256:9cd250c3a45cce5fbbe582bbf23046d83d2f1ac50f9a011e90a29ee60a4f3ee6" -> "sha256:905a8c2a76ce8eede98425be5f9f7835c871fdfca65b3664a0c2ad96e137e73d" [label=""];
  "sha256:905a8c2a76ce8eede98425be5f9f7835c871fdfca65b3664a0c2ad96e137e73d" -> "sha256:eaa399cfcd9165c7fbf3d1d6340d3547441f3e3659946571e0f499c9dc885359" [label=""];
  "sha256:8465585f319e7afa350628fb10ff94b920ade3e6245f72c43d58edf143c9dd9a" -> "sha256:eaa399cfcd9165c7fbf3d1d6340d3547441f3e3659946571e0f499c9dc885359" [label=""];
  "sha256:eaa399cfcd9165c7fbf3d1d6340d3547441f3e3659946571e0f499c9dc885359" -> "sha256:b9f7369bf8aae01bdad45dadb39ed96a2bae0e7f5776b8102930ab6cb44d75a9" [label=""];
  "sha256:8465585f319e7afa350628fb10ff94b920ade3e6245f72c43d58edf143c9dd9a" -> "sha256:b9f7369bf8aae01bdad45dadb39ed96a2bae0e7f5776b8102930ab6cb44d75a9" [label=""];
  "sha256:b9f7369bf8aae01bdad45dadb39ed96a2bae0e7f5776b8102930ab6cb44d75a9" -> "sha256:ae9b6c7837622235b42702f23981bd2545efb61c9f6379c1f0205ac14fdff60e" [label=""];
  "sha256:ae9b6c7837622235b42702f23981bd2545efb61c9f6379c1f0205ac14fdff60e" -> "sha256:688af0288738e7acfd80047c65d97f078abbdfea12ad3f8c29f6629d0def8dc0" [label=""];
  "sha256:688af0288738e7acfd80047c65d97f078abbdfea12ad3f8c29f6629d0def8dc0" -> "sha256:27e92d244459063b01dbb0688401a0f8044b0fd8e56f58b4ecea9e8ad50b319e" [label=""];
  "sha256:8465585f319e7afa350628fb10ff94b920ade3e6245f72c43d58edf143c9dd9a" -> "sha256:27e92d244459063b01dbb0688401a0f8044b0fd8e56f58b4ecea9e8ad50b319e" [label=""];
  "sha256:27e92d244459063b01dbb0688401a0f8044b0fd8e56f58b4ecea9e8ad50b319e" -> "sha256:2eecf2db2e0469101db01bcf4537493f2c7ca3b32da5cb8b292c263fa80560fd" [label=""];
  "sha256:8465585f319e7afa350628fb10ff94b920ade3e6245f72c43d58edf143c9dd9a" -> "sha256:2eecf2db2e0469101db01bcf4537493f2c7ca3b32da5cb8b292c263fa80560fd" [label=""];
  "sha256:2eecf2db2e0469101db01bcf4537493f2c7ca3b32da5cb8b292c263fa80560fd" -> "sha256:f18025654cd4971b50264f7d25f8852334ab9e76cd5c8a81880ce66af9674a15" [label=""];
  "sha256:8465585f319e7afa350628fb10ff94b920ade3e6245f72c43d58edf143c9dd9a" -> "sha256:f18025654cd4971b50264f7d25f8852334ab9e76cd5c8a81880ce66af9674a15" [label=""];
  "sha256:f18025654cd4971b50264f7d25f8852334ab9e76cd5c8a81880ce66af9674a15" -> "sha256:1de0aa05cff42ba23067ab9a80912c8f2cf2d002905981659e17629cdfb2f9a2" [label=""];
  "sha256:1de0aa05cff42ba23067ab9a80912c8f2cf2d002905981659e17629cdfb2f9a2" -> "sha256:f5995700f4322411c5b30c2c6a96abe2a093fa63ef6e361f85cb8b3ed79a8183" [label=""];
  "sha256:f5995700f4322411c5b30c2c6a96abe2a093fa63ef6e361f85cb8b3ed79a8183" -> "sha256:592cf166376ca948e8fb28b52a7e3776aa79d103d91bfd8881deda3ac17c243b" [label=""];
  "sha256:8465585f319e7afa350628fb10ff94b920ade3e6245f72c43d58edf143c9dd9a" -> "sha256:592cf166376ca948e8fb28b52a7e3776aa79d103d91bfd8881deda3ac17c243b" [label=""];
  "sha256:592cf166376ca948e8fb28b52a7e3776aa79d103d91bfd8881deda3ac17c243b" -> "sha256:1d28c40ca0d6ee63a86fbc5e9e5720331f2733ceab27bb409c64f2d6d2198873" [label=""];
  "sha256:1d28c40ca0d6ee63a86fbc5e9e5720331f2733ceab27bb409c64f2d6d2198873" -> "sha256:f79b2524a67ca4406c6e45982ebe71cc012f1c2b1a1feba90d55d18d613c2855" [label=""];
  "sha256:f79b2524a67ca4406c6e45982ebe71cc012f1c2b1a1feba90d55d18d613c2855" -> "sha256:f24714d6ae6d206fba909099c47e6e2d3f21b5c93099b4cec70dfa1014dc468d" [label=""];
  "sha256:f24714d6ae6d206fba909099c47e6e2d3f21b5c93099b4cec70dfa1014dc468d" -> "sha256:8380a02d8a39136fab9d4a6a0bec74d6c6de4d1984a3163afed0d7b9bbc32a27" [label=""];
}

