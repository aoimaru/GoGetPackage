[app/sources/269047231.Dockerfile]
digraph {
  "sha256:b9b1cf61f20b2b991d095de6c3de57bbb2a1fd5d729f5a07c89f392fa27751b0" [label="docker-image://docker.io/library/nginx:stable-alpine@sha256:bac218df22fef66a173cfa65d0dfa0acca80a3a39df41665be742596977b6c7c" shape="ellipse"];
  "sha256:c8e4843e22acc0577328468ad9cdd1451cdacb935b19f316b9a8ffdfeefbd5b2" [label="/bin/sh -c apk update;     apk upgrade;" shape="box"];
  "sha256:c6975e784d0ba028dadd5a0f75ab17cea504bd93fef6293012df4c08db6b4c00" [label="sha256:c6975e784d0ba028dadd5a0f75ab17cea504bd93fef6293012df4c08db6b4c00" shape="plaintext"];
  "sha256:b9b1cf61f20b2b991d095de6c3de57bbb2a1fd5d729f5a07c89f392fa27751b0" -> "sha256:c8e4843e22acc0577328468ad9cdd1451cdacb935b19f316b9a8ffdfeefbd5b2" [label=""];
  "sha256:c8e4843e22acc0577328468ad9cdd1451cdacb935b19f316b9a8ffdfeefbd5b2" -> "sha256:c6975e784d0ba028dadd5a0f75ab17cea504bd93fef6293012df4c08db6b4c00" [label=""];
}

