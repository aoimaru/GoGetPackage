[app/sources/205848496.Dockerfile]
digraph {
  "sha256:d5737431dcfb7a9a3ba1caef4c2b21e54248f3e9b08b2b974b7b5b008f163b8b" [label="docker-image://docker.io/alexellis2/ghost-armv7:0.8.0" shape="ellipse"];
  "sha256:d484553e77422dbfd72096ab888d0979829aa2afad14f40dbc67d81f27ed3c3b" [label="/bin/sh -c sed -i s/my-ghost-blog.com/blog.alexellis.io/g config.js" shape="box"];
  "sha256:5b499fa965b279e294f3acf2b378fead9e256a53bd1994bea244dd1f92a0cddf" [label="sha256:5b499fa965b279e294f3acf2b378fead9e256a53bd1994bea244dd1f92a0cddf" shape="plaintext"];
  "sha256:d5737431dcfb7a9a3ba1caef4c2b21e54248f3e9b08b2b974b7b5b008f163b8b" -> "sha256:d484553e77422dbfd72096ab888d0979829aa2afad14f40dbc67d81f27ed3c3b" [label=""];
  "sha256:d484553e77422dbfd72096ab888d0979829aa2afad14f40dbc67d81f27ed3c3b" -> "sha256:5b499fa965b279e294f3acf2b378fead9e256a53bd1994bea244dd1f92a0cddf" [label=""];
}

