[app/sources/252772031.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:ef7e988eada0f1d68afc2569ea688007c5c6dc9536ba30a79dbe40c867f707c9" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:410884b046638d9a5032b28e34c562e8b9ddfacadf0a45c92daf59695be4ae82" [label="mkdir{path=/code}" shape="note"];
  "sha256:f559fea7bb1fcdfa475be1ac82fb983f3901eb18951ee61e255e79ba54b6d6fc" [label="local://context" shape="ellipse"];
  "sha256:6c4f405a1e52442157d25a04c290ef0ab36c739434fa472b96e26943b216bc0f" [label="copy{src=/requirements.txt, dest=/code/}" shape="note"];
  "sha256:5db05cf63c17020e646c9908485a31b3e45c88fd91d4f2d5d3625087184ecaa0" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:72817965a9f8473c0980cc41c7045cab8a13727024d4cc388960969202f733db" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:fff664086e972a466bd18b90a5e76454a97008d17bb5e603d09e610b6be29bed" [label="sha256:fff664086e972a466bd18b90a5e76454a97008d17bb5e603d09e610b6be29bed" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:ef7e988eada0f1d68afc2569ea688007c5c6dc9536ba30a79dbe40c867f707c9" [label=""];
  "sha256:ef7e988eada0f1d68afc2569ea688007c5c6dc9536ba30a79dbe40c867f707c9" -> "sha256:410884b046638d9a5032b28e34c562e8b9ddfacadf0a45c92daf59695be4ae82" [label=""];
  "sha256:410884b046638d9a5032b28e34c562e8b9ddfacadf0a45c92daf59695be4ae82" -> "sha256:6c4f405a1e52442157d25a04c290ef0ab36c739434fa472b96e26943b216bc0f" [label=""];
  "sha256:f559fea7bb1fcdfa475be1ac82fb983f3901eb18951ee61e255e79ba54b6d6fc" -> "sha256:6c4f405a1e52442157d25a04c290ef0ab36c739434fa472b96e26943b216bc0f" [label=""];
  "sha256:6c4f405a1e52442157d25a04c290ef0ab36c739434fa472b96e26943b216bc0f" -> "sha256:5db05cf63c17020e646c9908485a31b3e45c88fd91d4f2d5d3625087184ecaa0" [label=""];
  "sha256:5db05cf63c17020e646c9908485a31b3e45c88fd91d4f2d5d3625087184ecaa0" -> "sha256:72817965a9f8473c0980cc41c7045cab8a13727024d4cc388960969202f733db" [label=""];
  "sha256:f559fea7bb1fcdfa475be1ac82fb983f3901eb18951ee61e255e79ba54b6d6fc" -> "sha256:72817965a9f8473c0980cc41c7045cab8a13727024d4cc388960969202f733db" [label=""];
  "sha256:72817965a9f8473c0980cc41c7045cab8a13727024d4cc388960969202f733db" -> "sha256:fff664086e972a466bd18b90a5e76454a97008d17bb5e603d09e610b6be29bed" [label=""];
}

