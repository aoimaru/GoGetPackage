[app/sources/289923725.Dockerfile]
digraph {
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" [label="docker-image://docker.io/library/node:9-alpine" shape="ellipse"];
  "sha256:d922d45de2709411dc4189fac5fb7c87b2587c27e5814d4e922cd0ee00bdd855" [label="mkdir{path=/app}" shape="note"];
  "sha256:3cfee0874a5e8664a3981cc260854958e5556e621dce4975d167b53272d2c445" [label="local://context" shape="ellipse"];
  "sha256:560545ff13acb9aae8673aa220c526733c13e84f4163567a2874e53efbacaeec" [label="copy{src=/package.json, dest=/app}" shape="note"];
  "sha256:90d0a9b62944e509e0789122a6786f0058bfdff7079188b26ee50df081c50c27" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9acf595834d7f7546aff03f43a892acd3c8444468bedb008432cd99bdc18ca3e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:4bedd25ebbc9b69bbee7c0d9940a5608207654182babfb9fb7a47f1b1f83e6cf" [label="sha256:4bedd25ebbc9b69bbee7c0d9940a5608207654182babfb9fb7a47f1b1f83e6cf" shape="plaintext"];
  "sha256:dc8bc7d0589656994b6a56905a63badb7a7c20edad9d53db823274ffae84a9ce" -> "sha256:d922d45de2709411dc4189fac5fb7c87b2587c27e5814d4e922cd0ee00bdd855" [label=""];
  "sha256:d922d45de2709411dc4189fac5fb7c87b2587c27e5814d4e922cd0ee00bdd855" -> "sha256:560545ff13acb9aae8673aa220c526733c13e84f4163567a2874e53efbacaeec" [label=""];
  "sha256:3cfee0874a5e8664a3981cc260854958e5556e621dce4975d167b53272d2c445" -> "sha256:560545ff13acb9aae8673aa220c526733c13e84f4163567a2874e53efbacaeec" [label=""];
  "sha256:560545ff13acb9aae8673aa220c526733c13e84f4163567a2874e53efbacaeec" -> "sha256:90d0a9b62944e509e0789122a6786f0058bfdff7079188b26ee50df081c50c27" [label=""];
  "sha256:90d0a9b62944e509e0789122a6786f0058bfdff7079188b26ee50df081c50c27" -> "sha256:9acf595834d7f7546aff03f43a892acd3c8444468bedb008432cd99bdc18ca3e" [label=""];
  "sha256:3cfee0874a5e8664a3981cc260854958e5556e621dce4975d167b53272d2c445" -> "sha256:9acf595834d7f7546aff03f43a892acd3c8444468bedb008432cd99bdc18ca3e" [label=""];
  "sha256:9acf595834d7f7546aff03f43a892acd3c8444468bedb008432cd99bdc18ca3e" -> "sha256:4bedd25ebbc9b69bbee7c0d9940a5608207654182babfb9fb7a47f1b1f83e6cf" [label=""];
}

