[app/sources/351009404.Dockerfile]
digraph {
  "sha256:22c607e51fc71e914eac39e1e24c64cdd78ea44d0307fa588cd5892c5d810a7b" [label="docker-image://docker.io/library/ann-benchmarks:latest" shape="ellipse"];
  "sha256:ef7d326d11e41af814aabee3aeee09d4756ee79fc8231f9bbdef4c2796dd1296" [label="/bin/sh -c apt-get update && apt-get install -y cmake libhdf5-dev" shape="box"];
  "sha256:f717d9286197c4efc9c51053378745e4c04b0fcda99bb7a0ad2954d80083d6ea" [label="/bin/sh -c git clone https://github.com/maumueller/mih" shape="box"];
  "sha256:e6bc315c542fdb63cb2e525ed9e33d746e76c83765c664baf5653005f6442562" [label="/bin/sh -c cd mih && mkdir bin && cd bin && cmake ../ && make -j4" shape="box"];
  "sha256:2cad59e299707396ddc885d028bc2d58ec61129de098ab2227baf52171a4faf6" [label="sha256:2cad59e299707396ddc885d028bc2d58ec61129de098ab2227baf52171a4faf6" shape="plaintext"];
  "sha256:22c607e51fc71e914eac39e1e24c64cdd78ea44d0307fa588cd5892c5d810a7b" -> "sha256:ef7d326d11e41af814aabee3aeee09d4756ee79fc8231f9bbdef4c2796dd1296" [label=""];
  "sha256:ef7d326d11e41af814aabee3aeee09d4756ee79fc8231f9bbdef4c2796dd1296" -> "sha256:f717d9286197c4efc9c51053378745e4c04b0fcda99bb7a0ad2954d80083d6ea" [label=""];
  "sha256:f717d9286197c4efc9c51053378745e4c04b0fcda99bb7a0ad2954d80083d6ea" -> "sha256:e6bc315c542fdb63cb2e525ed9e33d746e76c83765c664baf5653005f6442562" [label=""];
  "sha256:e6bc315c542fdb63cb2e525ed9e33d746e76c83765c664baf5653005f6442562" -> "sha256:2cad59e299707396ddc885d028bc2d58ec61129de098ab2227baf52171a4faf6" [label=""];
}

