[app/sources/311289188.Dockerfile]
digraph {
  "sha256:da927800b417f8ee0a036a4675f8f0e86d4552cca15bd2b9101c81ca71120f2f" [label="docker-image://docker.io/superkojiman/pwnbox:latest" shape="ellipse"];
  "sha256:67a109a85b481cd51827752147d5f59efb4acf81609c39fb0db571f613fb16f1" [label="mkdir{path=/root}" shape="note"];
  "sha256:97264ec91deec6ee183f899d883850264611026cd89b1111122c1860dc9b311a" [label="local://context" shape="ellipse"];
  "sha256:0824f2050e06b16794bb4c8d88afbcb97a3508cd83dff8991165293feb59dd3b" [label="copy{src=/vulnerable.c, dest=/root}" shape="note"];
  "sha256:59243adcbb022faacef27ab2b0d47d1c9ab7cd90e0dd7843ec61c62c0f29aed8" [label="copy{src=/exploit2.c, dest=/root}" shape="note"];
  "sha256:c1bd04aeba86e76a18c4363c0eb5bfac01152a0c5377f644003de930534f7a82" [label="/bin/sh -c gcc vulnerable.c -m32 -g -o vulnerable -fno-stack-protector -z execstack" shape="box"];
  "sha256:4d6812c252e6ecb7b0a7b2be914f2f1f00074c5d811c4ff7c40dc1974cf57cec" [label="/bin/sh -c gcc exploit2.c -m32 -g -o exploit2 -fno-stack-protector -z execstack" shape="box"];
  "sha256:594359458166afda51a21e8e7ed1fd008eb8801728fe67201639fc45ce7674f8" [label="sha256:594359458166afda51a21e8e7ed1fd008eb8801728fe67201639fc45ce7674f8" shape="plaintext"];
  "sha256:da927800b417f8ee0a036a4675f8f0e86d4552cca15bd2b9101c81ca71120f2f" -> "sha256:67a109a85b481cd51827752147d5f59efb4acf81609c39fb0db571f613fb16f1" [label=""];
  "sha256:67a109a85b481cd51827752147d5f59efb4acf81609c39fb0db571f613fb16f1" -> "sha256:0824f2050e06b16794bb4c8d88afbcb97a3508cd83dff8991165293feb59dd3b" [label=""];
  "sha256:97264ec91deec6ee183f899d883850264611026cd89b1111122c1860dc9b311a" -> "sha256:0824f2050e06b16794bb4c8d88afbcb97a3508cd83dff8991165293feb59dd3b" [label=""];
  "sha256:0824f2050e06b16794bb4c8d88afbcb97a3508cd83dff8991165293feb59dd3b" -> "sha256:59243adcbb022faacef27ab2b0d47d1c9ab7cd90e0dd7843ec61c62c0f29aed8" [label=""];
  "sha256:97264ec91deec6ee183f899d883850264611026cd89b1111122c1860dc9b311a" -> "sha256:59243adcbb022faacef27ab2b0d47d1c9ab7cd90e0dd7843ec61c62c0f29aed8" [label=""];
  "sha256:59243adcbb022faacef27ab2b0d47d1c9ab7cd90e0dd7843ec61c62c0f29aed8" -> "sha256:c1bd04aeba86e76a18c4363c0eb5bfac01152a0c5377f644003de930534f7a82" [label=""];
  "sha256:c1bd04aeba86e76a18c4363c0eb5bfac01152a0c5377f644003de930534f7a82" -> "sha256:4d6812c252e6ecb7b0a7b2be914f2f1f00074c5d811c4ff7c40dc1974cf57cec" [label=""];
  "sha256:4d6812c252e6ecb7b0a7b2be914f2f1f00074c5d811c4ff7c40dc1974cf57cec" -> "sha256:594359458166afda51a21e8e7ed1fd008eb8801728fe67201639fc45ce7674f8" [label=""];
}

