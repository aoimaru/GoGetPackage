[app/sources/315528347.Dockerfile]
digraph {
  "sha256:23d1c960f866bac204365b0ea08ab2be33879d6b75eb28c8ecc3c2d3df02812a" [label="local://context" shape="ellipse"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:1d57ec5ebd16ed71de1b3a61ef1b1b657c39a6bc533b9c2a37525ec899b74ecc" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:44ed664e31d45e5075623214514c62f549dfa4a37e2570fd0138d3880b56e13d" [label="/bin/sh -c pip install --no-cache-dir -r /requirements.txt" shape="box"];
  "sha256:b566fcf0d98238bb70fe1f8c9a46ee51fb9a71955e39687f569c2869875d8777" [label="mkdir{path=/data}" shape="note"];
  "sha256:4d423af2f8aae5df55152300831c1f5d8d090afc8a0e7debc0da7499af03555f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:1e0995c29a258500ff7131d777f4c37bf1c5f3c8c1c440073d7fa7c76ec0a635" [label="/bin/sh -c pip install --no-cache-dir /app" shape="box"];
  "sha256:aaf80b4bd34bd301f6fcc8efecde07096f65a101a594a0ee22bea64d23d44977" [label="copy{src=/docker-scripts/batch-entrypoint.sh, dest=/batch-entrypoint.sh}" shape="note"];
  "sha256:3e7371c769c903e21bb6177299698645629e220f28d354908074e3e16a30ce72" [label="/bin/sh -c chmod +x /batch-entrypoint.sh" shape="box"];
  "sha256:a286d6c9d90f11696cc97cec3e8f4dc93f9797a1d88aea9405cfb1a83446dafa" [label="sha256:a286d6c9d90f11696cc97cec3e8f4dc93f9797a1d88aea9405cfb1a83446dafa" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:1d57ec5ebd16ed71de1b3a61ef1b1b657c39a6bc533b9c2a37525ec899b74ecc" [label=""];
  "sha256:23d1c960f866bac204365b0ea08ab2be33879d6b75eb28c8ecc3c2d3df02812a" -> "sha256:1d57ec5ebd16ed71de1b3a61ef1b1b657c39a6bc533b9c2a37525ec899b74ecc" [label=""];
  "sha256:1d57ec5ebd16ed71de1b3a61ef1b1b657c39a6bc533b9c2a37525ec899b74ecc" -> "sha256:44ed664e31d45e5075623214514c62f549dfa4a37e2570fd0138d3880b56e13d" [label=""];
  "sha256:44ed664e31d45e5075623214514c62f549dfa4a37e2570fd0138d3880b56e13d" -> "sha256:b566fcf0d98238bb70fe1f8c9a46ee51fb9a71955e39687f569c2869875d8777" [label=""];
  "sha256:b566fcf0d98238bb70fe1f8c9a46ee51fb9a71955e39687f569c2869875d8777" -> "sha256:4d423af2f8aae5df55152300831c1f5d8d090afc8a0e7debc0da7499af03555f" [label=""];
  "sha256:23d1c960f866bac204365b0ea08ab2be33879d6b75eb28c8ecc3c2d3df02812a" -> "sha256:4d423af2f8aae5df55152300831c1f5d8d090afc8a0e7debc0da7499af03555f" [label=""];
  "sha256:4d423af2f8aae5df55152300831c1f5d8d090afc8a0e7debc0da7499af03555f" -> "sha256:1e0995c29a258500ff7131d777f4c37bf1c5f3c8c1c440073d7fa7c76ec0a635" [label=""];
  "sha256:1e0995c29a258500ff7131d777f4c37bf1c5f3c8c1c440073d7fa7c76ec0a635" -> "sha256:aaf80b4bd34bd301f6fcc8efecde07096f65a101a594a0ee22bea64d23d44977" [label=""];
  "sha256:23d1c960f866bac204365b0ea08ab2be33879d6b75eb28c8ecc3c2d3df02812a" -> "sha256:aaf80b4bd34bd301f6fcc8efecde07096f65a101a594a0ee22bea64d23d44977" [label=""];
  "sha256:aaf80b4bd34bd301f6fcc8efecde07096f65a101a594a0ee22bea64d23d44977" -> "sha256:3e7371c769c903e21bb6177299698645629e220f28d354908074e3e16a30ce72" [label=""];
  "sha256:3e7371c769c903e21bb6177299698645629e220f28d354908074e3e16a30ce72" -> "sha256:a286d6c9d90f11696cc97cec3e8f4dc93f9797a1d88aea9405cfb1a83446dafa" [label=""];
}

