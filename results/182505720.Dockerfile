[app/sources/182505720.Dockerfile]
digraph {
  "sha256:73b113a33d69cd8dcb6b9c40b757c5112870b69c5a868a193c482ca513d4fe1a" [label="docker-image://docker.io/jjmerelo/rakudo-nostar:latest@sha256:424523a702b288df5b92bd81aa40065b47316de4ea3b0391e1300498146bd6d7" shape="ellipse"];
  "sha256:4c6138eef2f138fabb36641e6a4abee264ac4da5826348c0c613e3039214233c" [label="/bin/sh -c buildDeps='                 build-essential         cpanminus           '                       runtimeDeps='         graphviz          make              ruby-sass     '                 testDeps='         aspell     '           && set -x     && apt-get update     && apt-get --yes --no-install-recommends install $buildDeps $runtimeDeps $testDeps     && rm -rf /var/lib/apt/lists/*                                        && cpanm -vn Mojolicious      && n=/usr/local/bin/n     && curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n > \"$n\"     && chmod +x \"$n\"          && n stable" shape="box"];
  "sha256:09ab9a5bc2876c62c40e79c6d903330c9965365dddd5eecf2c3b32cf41360453" [label="mkdir{path=/perl6/doc}" shape="note"];
  "sha256:10be241e1ac9c11f5fd7e16bf4681a6a97ec6ef27862432dfb6c495eea2d882c" [label="local://context" shape="ellipse"];
  "sha256:8c8050b3ca281d542e480249594d7325c490f7991ac09b0905224d2167e95826" [label="copy{src=/, dest=/perl6/doc/}" shape="note"];
  "sha256:ec45cca499c8bc37ecaf0c1e27a910807c583f40e8e6f46fb03700d1708323dd" [label="/bin/sh -c zef install --deps-only ." shape="box"];
  "sha256:bcea6132c313ce3c8c46b7d96bd53a5ac005455a18ded5a4dd42da968fe0fdc4" [label="/bin/sh -c make test && make html" shape="box"];
  "sha256:36f85b397aac3a10c02930a43f5d508380faf0ae923c7eb8ea24599dc12028bf" [label="sha256:36f85b397aac3a10c02930a43f5d508380faf0ae923c7eb8ea24599dc12028bf" shape="plaintext"];
  "sha256:73b113a33d69cd8dcb6b9c40b757c5112870b69c5a868a193c482ca513d4fe1a" -> "sha256:4c6138eef2f138fabb36641e6a4abee264ac4da5826348c0c613e3039214233c" [label=""];
  "sha256:4c6138eef2f138fabb36641e6a4abee264ac4da5826348c0c613e3039214233c" -> "sha256:09ab9a5bc2876c62c40e79c6d903330c9965365dddd5eecf2c3b32cf41360453" [label=""];
  "sha256:09ab9a5bc2876c62c40e79c6d903330c9965365dddd5eecf2c3b32cf41360453" -> "sha256:8c8050b3ca281d542e480249594d7325c490f7991ac09b0905224d2167e95826" [label=""];
  "sha256:10be241e1ac9c11f5fd7e16bf4681a6a97ec6ef27862432dfb6c495eea2d882c" -> "sha256:8c8050b3ca281d542e480249594d7325c490f7991ac09b0905224d2167e95826" [label=""];
  "sha256:8c8050b3ca281d542e480249594d7325c490f7991ac09b0905224d2167e95826" -> "sha256:ec45cca499c8bc37ecaf0c1e27a910807c583f40e8e6f46fb03700d1708323dd" [label=""];
  "sha256:ec45cca499c8bc37ecaf0c1e27a910807c583f40e8e6f46fb03700d1708323dd" -> "sha256:bcea6132c313ce3c8c46b7d96bd53a5ac005455a18ded5a4dd42da968fe0fdc4" [label=""];
  "sha256:bcea6132c313ce3c8c46b7d96bd53a5ac005455a18ded5a4dd42da968fe0fdc4" -> "sha256:36f85b397aac3a10c02930a43f5d508380faf0ae923c7eb8ea24599dc12028bf" [label=""];
}

