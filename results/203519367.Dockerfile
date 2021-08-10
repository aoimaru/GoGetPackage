[app/sources/203519367.Dockerfile]
digraph {
  "sha256:b30fe45465a26e08f4c326947490923195922efe82d2b66d53170c81ce75c6d8" [label="docker-image://docker.io/souffle/oraclelinux:7-base" shape="ellipse"];
  "sha256:c03f7d04d9a1b60355f5062ca819d73e2337302ff338e06bc720af8257c5e99a" [label="/bin/sh -c git clone https://github.com/${SOUFFLE_GITHUB_USER}/souffle /home/souffle/souffle" shape="box"];
  "sha256:82c307ba95d19cf265cfd03a23065f2f25da93e01511cec72b62d6e00460946a" [label="mkdir{path=/home/souffle/souffle}" shape="note"];
  "sha256:a62edee8864b706802be61209b95537bb25d0b1e49fe2a3564ca70529ddd5313" [label="/bin/sh -c git pull" shape="box"];
  "sha256:913b04231ea91bbf3d687979820b9efae2b383d2a0efd21b7524f64c18c183ea" [label="/bin/sh -c git checkout ${SOUFFLE_GIT_BRANCH}" shape="box"];
  "sha256:4d17b4bdd92acfdc4d723ef056ae411eb75d72f66c3ea9340ecb0f9d49277f58" [label="/bin/sh -c git reset --hard ${SOUFFLE_GIT_REVISION}" shape="box"];
  "sha256:735bfe9cc2dbd16019a596af30beb66ec9efeb2ec855ef17b1937523bfe376e3" [label="/bin/sh -c git clean -xdf" shape="box"];
  "sha256:697cccfb9355d877b714b48c61eff0eefaf95e172839f272bdfa618ff0a7b1f3" [label="/bin/sh -c ./bootstrap" shape="box"];
  "sha256:78763c2d5163709a64f34d7d1a15afe422e7f98f45cb41526d986d6f2f7d0b6c" [label="/bin/sh -c ./configure ${SOUFFLE_CONFIGURE_OPTIONS}" shape="box"];
  "sha256:36cdf0aebd405914260405eb20d7150dd74afe35ad24eb2b272c0f98b565e3c8" [label="/bin/sh -c make -j${SOUFFLE_MAKE_JOBS}" shape="box"];
  "sha256:14d6464d01e80e1937e33070c029e4cc04e922a1e9ebaad98059c909f158540f" [label="/bin/sh -c ./src/souffle" shape="box"];
  "sha256:6467787af5f72b054e906466b059b2a75bb232a7e6624e6cd2b6d3c53fe380c5" [label="/bin/sh -c make install -j${SOUFFLE_MAKE_JOBS}" shape="box"];
  "sha256:df7afc0fb81819a4733e03736199f1e72ea111de9a2d387b7ea349a7af008d8d" [label="/bin/sh -c souffle -h" shape="box"];
  "sha256:e6210b068536297c179b386ff2827a28d577bae73990e32fb72c5f4ec39cd601" [label="sha256:e6210b068536297c179b386ff2827a28d577bae73990e32fb72c5f4ec39cd601" shape="plaintext"];
  "sha256:b30fe45465a26e08f4c326947490923195922efe82d2b66d53170c81ce75c6d8" -> "sha256:c03f7d04d9a1b60355f5062ca819d73e2337302ff338e06bc720af8257c5e99a" [label=""];
  "sha256:c03f7d04d9a1b60355f5062ca819d73e2337302ff338e06bc720af8257c5e99a" -> "sha256:82c307ba95d19cf265cfd03a23065f2f25da93e01511cec72b62d6e00460946a" [label=""];
  "sha256:82c307ba95d19cf265cfd03a23065f2f25da93e01511cec72b62d6e00460946a" -> "sha256:a62edee8864b706802be61209b95537bb25d0b1e49fe2a3564ca70529ddd5313" [label=""];
  "sha256:a62edee8864b706802be61209b95537bb25d0b1e49fe2a3564ca70529ddd5313" -> "sha256:913b04231ea91bbf3d687979820b9efae2b383d2a0efd21b7524f64c18c183ea" [label=""];
  "sha256:913b04231ea91bbf3d687979820b9efae2b383d2a0efd21b7524f64c18c183ea" -> "sha256:4d17b4bdd92acfdc4d723ef056ae411eb75d72f66c3ea9340ecb0f9d49277f58" [label=""];
  "sha256:4d17b4bdd92acfdc4d723ef056ae411eb75d72f66c3ea9340ecb0f9d49277f58" -> "sha256:735bfe9cc2dbd16019a596af30beb66ec9efeb2ec855ef17b1937523bfe376e3" [label=""];
  "sha256:735bfe9cc2dbd16019a596af30beb66ec9efeb2ec855ef17b1937523bfe376e3" -> "sha256:697cccfb9355d877b714b48c61eff0eefaf95e172839f272bdfa618ff0a7b1f3" [label=""];
  "sha256:697cccfb9355d877b714b48c61eff0eefaf95e172839f272bdfa618ff0a7b1f3" -> "sha256:78763c2d5163709a64f34d7d1a15afe422e7f98f45cb41526d986d6f2f7d0b6c" [label=""];
  "sha256:78763c2d5163709a64f34d7d1a15afe422e7f98f45cb41526d986d6f2f7d0b6c" -> "sha256:36cdf0aebd405914260405eb20d7150dd74afe35ad24eb2b272c0f98b565e3c8" [label=""];
  "sha256:36cdf0aebd405914260405eb20d7150dd74afe35ad24eb2b272c0f98b565e3c8" -> "sha256:14d6464d01e80e1937e33070c029e4cc04e922a1e9ebaad98059c909f158540f" [label=""];
  "sha256:14d6464d01e80e1937e33070c029e4cc04e922a1e9ebaad98059c909f158540f" -> "sha256:6467787af5f72b054e906466b059b2a75bb232a7e6624e6cd2b6d3c53fe380c5" [label=""];
  "sha256:6467787af5f72b054e906466b059b2a75bb232a7e6624e6cd2b6d3c53fe380c5" -> "sha256:df7afc0fb81819a4733e03736199f1e72ea111de9a2d387b7ea349a7af008d8d" [label=""];
  "sha256:df7afc0fb81819a4733e03736199f1e72ea111de9a2d387b7ea349a7af008d8d" -> "sha256:e6210b068536297c179b386ff2827a28d577bae73990e32fb72c5f4ec39cd601" [label=""];
}

