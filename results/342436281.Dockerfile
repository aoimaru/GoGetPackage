[app/sources/342436281.Dockerfile]
digraph {
  "sha256:93360fcba4af9dc472e59a928ed6033fcf2876f2f6521b9cfad483823ec4b484" [label="docker-image://docker.io/library/node:9.5-slim" shape="ellipse"];
  "sha256:4f83790eb65c1a76228312351f4b4489afdef8cd8ffa42d5f2ea8a415b4e8d1d" [label="/bin/sh -c apt-get update && apt-get install -y wget --no-install-recommends     && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -     && sh -c 'echo \"deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google.list'     && apt-get update     && apt-get install -y google-chrome-unstable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst ttf-freefont       --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && apt-get purge --auto-remove -y curl     && rm -rf /src/*.deb" shape="box"];
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" [label="https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64" shape="ellipse"];
  "sha256:e99be89e34f31148a3dbec4f9d9fd6c4bad8f468ac859f072956ba7892b05666" [label="copy{src=/dumb-init_1.2.0_amd64, dest=/usr/local/bin/dumb-init}" shape="note"];
  "sha256:fc3399ae80d7aa4700deb953fbf2856f30dfac300060d6ae6aeb9f008b28bdf0" [label="/bin/sh -c chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:4064c86c16a4b63d7ca3d3b54289676a95c0f9ebfc4746ee8604f6097a614284" [label="local://context" shape="ellipse"];
  "sha256:f43ebf5b48ce852ece7f2810604126c2750c26565b37a23078120cf51796644f" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f5883190766955c5c1ac9fb9f66679f159b722fb88ddc4024f9e45ca52e9fdd9" [label="mkdir{path=/app}" shape="note"];
  "sha256:868f8d7a42daa6524d93c8e5a55d88779e4117a6c8e57620e6c1464d295a5da4" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:e50d9ccca7c5e890e5765263b25165cafb86fca9a899d01ee3eb41100a91da84" [label="/bin/sh -c yarn --production" shape="box"];
  "sha256:599b26cb57e859218595e48574547d539d2672746c2adc5863321d3e6e1a677f" [label="copy{src=/server.mjs, dest=/app/}" shape="note"];
  "sha256:94cbfd10d7655b9617f35bf2e9cd2b2c69e1120dea6bea6bd7f2291b88e105be" [label="/bin/sh -c groupadd -r pptruser && useradd -r -g pptruser -G audio,video pptruser     && mkdir -p /home/pptruser/Downloads     && chown -R pptruser:pptruser /home/pptruser     && chown -R pptruser:pptruser /app" shape="box"];
  "sha256:104becdaae93a5c33caf013402646aba190bb4b3b9cdec63b6f163451893aba5" [label="sha256:104becdaae93a5c33caf013402646aba190bb4b3b9cdec63b6f163451893aba5" shape="plaintext"];
  "sha256:93360fcba4af9dc472e59a928ed6033fcf2876f2f6521b9cfad483823ec4b484" -> "sha256:4f83790eb65c1a76228312351f4b4489afdef8cd8ffa42d5f2ea8a415b4e8d1d" [label=""];
  "sha256:4f83790eb65c1a76228312351f4b4489afdef8cd8ffa42d5f2ea8a415b4e8d1d" -> "sha256:e99be89e34f31148a3dbec4f9d9fd6c4bad8f468ac859f072956ba7892b05666" [label=""];
  "sha256:951c2712c041636321e64eb8f8adecec9155cf8f397ddf9237b9127147dfc7a6" -> "sha256:e99be89e34f31148a3dbec4f9d9fd6c4bad8f468ac859f072956ba7892b05666" [label=""];
  "sha256:e99be89e34f31148a3dbec4f9d9fd6c4bad8f468ac859f072956ba7892b05666" -> "sha256:fc3399ae80d7aa4700deb953fbf2856f30dfac300060d6ae6aeb9f008b28bdf0" [label=""];
  "sha256:fc3399ae80d7aa4700deb953fbf2856f30dfac300060d6ae6aeb9f008b28bdf0" -> "sha256:f43ebf5b48ce852ece7f2810604126c2750c26565b37a23078120cf51796644f" [label=""];
  "sha256:4064c86c16a4b63d7ca3d3b54289676a95c0f9ebfc4746ee8604f6097a614284" -> "sha256:f43ebf5b48ce852ece7f2810604126c2750c26565b37a23078120cf51796644f" [label=""];
  "sha256:f43ebf5b48ce852ece7f2810604126c2750c26565b37a23078120cf51796644f" -> "sha256:f5883190766955c5c1ac9fb9f66679f159b722fb88ddc4024f9e45ca52e9fdd9" [label=""];
  "sha256:f5883190766955c5c1ac9fb9f66679f159b722fb88ddc4024f9e45ca52e9fdd9" -> "sha256:868f8d7a42daa6524d93c8e5a55d88779e4117a6c8e57620e6c1464d295a5da4" [label=""];
  "sha256:4064c86c16a4b63d7ca3d3b54289676a95c0f9ebfc4746ee8604f6097a614284" -> "sha256:868f8d7a42daa6524d93c8e5a55d88779e4117a6c8e57620e6c1464d295a5da4" [label=""];
  "sha256:868f8d7a42daa6524d93c8e5a55d88779e4117a6c8e57620e6c1464d295a5da4" -> "sha256:e50d9ccca7c5e890e5765263b25165cafb86fca9a899d01ee3eb41100a91da84" [label=""];
  "sha256:e50d9ccca7c5e890e5765263b25165cafb86fca9a899d01ee3eb41100a91da84" -> "sha256:599b26cb57e859218595e48574547d539d2672746c2adc5863321d3e6e1a677f" [label=""];
  "sha256:4064c86c16a4b63d7ca3d3b54289676a95c0f9ebfc4746ee8604f6097a614284" -> "sha256:599b26cb57e859218595e48574547d539d2672746c2adc5863321d3e6e1a677f" [label=""];
  "sha256:599b26cb57e859218595e48574547d539d2672746c2adc5863321d3e6e1a677f" -> "sha256:94cbfd10d7655b9617f35bf2e9cd2b2c69e1120dea6bea6bd7f2291b88e105be" [label=""];
  "sha256:94cbfd10d7655b9617f35bf2e9cd2b2c69e1120dea6bea6bd7f2291b88e105be" -> "sha256:104becdaae93a5c33caf013402646aba190bb4b3b9cdec63b6f163451893aba5" [label=""];
}

