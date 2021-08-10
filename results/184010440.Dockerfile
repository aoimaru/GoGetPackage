[app/sources/184010440.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:d896500322adc14fb5a17ef7fc81f2bee723df2e6f1c514ed97e89ff650ba30e" [label="local://context" shape="ellipse"];
  "sha256:bc4aff8bc77df64db95d7c0c706f8020d187768bf96329326454423e548279d2" [label="copy{src=/scripts/install_deps, dest=/tmp/install_deps}" shape="note"];
  "sha256:6ddc83e4861655c7e544fac65e0b193e0341c27c021899e94f6629362fee81b7" [label="/bin/sh -c /tmp/install_deps   && rm /tmp/install_deps" shape="box"];
  "sha256:5bafcadec67a0667d49942fd6a6808120372efa0b0fed8fe9a637cf4283b8912" [label="copy{src=/, dest=/chromaprint}" shape="note"];
  "sha256:7adcabf0dd0109f61c3dd094a25a35381037c9945ece9daa2f62a33b767c6d68" [label="mkdir{path=/chromaprint}" shape="note"];
  "sha256:0f635cb14daebcd402d856108d18a3d328eef344a260c6d99cbccd3681c8d9d8" [label="/bin/sh -c sbt reload" shape="box"];
  "sha256:015d4b549706130785b1df4dd4ef6a56c2925fe26e7a3f6d7f96d66afe2cdcfa" [label="/bin/sh -c sbt \"; test; package; assembly\"" shape="box"];
  "sha256:ca7f33b8014c136eb730244adfddb6c404abc6b4443646a85a13d879a32e6041" [label="sha256:ca7f33b8014c136eb730244adfddb6c404abc6b4443646a85a13d879a32e6041" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:bc4aff8bc77df64db95d7c0c706f8020d187768bf96329326454423e548279d2" [label=""];
  "sha256:d896500322adc14fb5a17ef7fc81f2bee723df2e6f1c514ed97e89ff650ba30e" -> "sha256:bc4aff8bc77df64db95d7c0c706f8020d187768bf96329326454423e548279d2" [label=""];
  "sha256:bc4aff8bc77df64db95d7c0c706f8020d187768bf96329326454423e548279d2" -> "sha256:6ddc83e4861655c7e544fac65e0b193e0341c27c021899e94f6629362fee81b7" [label=""];
  "sha256:6ddc83e4861655c7e544fac65e0b193e0341c27c021899e94f6629362fee81b7" -> "sha256:5bafcadec67a0667d49942fd6a6808120372efa0b0fed8fe9a637cf4283b8912" [label=""];
  "sha256:d896500322adc14fb5a17ef7fc81f2bee723df2e6f1c514ed97e89ff650ba30e" -> "sha256:5bafcadec67a0667d49942fd6a6808120372efa0b0fed8fe9a637cf4283b8912" [label=""];
  "sha256:5bafcadec67a0667d49942fd6a6808120372efa0b0fed8fe9a637cf4283b8912" -> "sha256:7adcabf0dd0109f61c3dd094a25a35381037c9945ece9daa2f62a33b767c6d68" [label=""];
  "sha256:7adcabf0dd0109f61c3dd094a25a35381037c9945ece9daa2f62a33b767c6d68" -> "sha256:0f635cb14daebcd402d856108d18a3d328eef344a260c6d99cbccd3681c8d9d8" [label=""];
  "sha256:0f635cb14daebcd402d856108d18a3d328eef344a260c6d99cbccd3681c8d9d8" -> "sha256:015d4b549706130785b1df4dd4ef6a56c2925fe26e7a3f6d7f96d66afe2cdcfa" [label=""];
  "sha256:015d4b549706130785b1df4dd4ef6a56c2925fe26e7a3f6d7f96d66afe2cdcfa" -> "sha256:ca7f33b8014c136eb730244adfddb6c404abc6b4443646a85a13d879a32e6041" [label=""];
}

