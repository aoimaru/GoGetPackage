[app/sources/258430048.Dockerfile]
digraph {
  "sha256:ee41ba988f49c766d8dbf297954077e22e42f65aef0e19a911df3d14431cf782" [label="docker-image://docker.io/purplekarrot/base:latest" shape="ellipse"];
  "sha256:e33cab31603cb275b68653b7102c91aa94a36b345cf886604df99c7cdb24b076" [label="/bin/sh -c dpkg --add-architecture i386     && apt-get -qq update     && apt-get -qq install -y --no-install-recommends         g++-mingw-w64-i686         nsis         wine         wine32     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:12eb3ad32aa1e41d21163ce12127fe715414c38f2685150a977d5cc3d49f9b5b" [label="/bin/sh -c buildDeps='procps'     && apt-get -qq update     && apt-get -qq install -y $buildDeps --no-install-recommends     && wine hostname > /dev/null     && while pgrep wineserver > /dev/null; do sleep 1; done     && apt-get -qq purge --auto-remove -y $buildDeps     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ab5f824afdfa444f46986845d49378c7a823bf8c5163af746c203c7c80295668" [label="local://context" shape="ellipse"];
  "sha256:e6f1d2010f2052e5ae7bdcc36f566eb14739bafb3ee4f6be6ce03452ecb955d9" [label="copy{src=/toolchain.cmake, dest=/}" shape="note"];
  "sha256:53cc96554f393bf5c85a40eec5c3ffcc948efe64cd264fbf3fefaef87243c5f7" [label="sha256:53cc96554f393bf5c85a40eec5c3ffcc948efe64cd264fbf3fefaef87243c5f7" shape="plaintext"];
  "sha256:ee41ba988f49c766d8dbf297954077e22e42f65aef0e19a911df3d14431cf782" -> "sha256:e33cab31603cb275b68653b7102c91aa94a36b345cf886604df99c7cdb24b076" [label=""];
  "sha256:e33cab31603cb275b68653b7102c91aa94a36b345cf886604df99c7cdb24b076" -> "sha256:12eb3ad32aa1e41d21163ce12127fe715414c38f2685150a977d5cc3d49f9b5b" [label=""];
  "sha256:12eb3ad32aa1e41d21163ce12127fe715414c38f2685150a977d5cc3d49f9b5b" -> "sha256:e6f1d2010f2052e5ae7bdcc36f566eb14739bafb3ee4f6be6ce03452ecb955d9" [label=""];
  "sha256:ab5f824afdfa444f46986845d49378c7a823bf8c5163af746c203c7c80295668" -> "sha256:e6f1d2010f2052e5ae7bdcc36f566eb14739bafb3ee4f6be6ce03452ecb955d9" [label=""];
  "sha256:e6f1d2010f2052e5ae7bdcc36f566eb14739bafb3ee4f6be6ce03452ecb955d9" -> "sha256:53cc96554f393bf5c85a40eec5c3ffcc948efe64cd264fbf3fefaef87243c5f7" [label=""];
}

