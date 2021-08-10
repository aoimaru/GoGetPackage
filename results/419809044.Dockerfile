[app/sources/419809044.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:d5d5b6bd901f484d5b3829faae9e2bf0f55dc4e6a8bc86dfedb631477e715a48" [label="/bin/sh -c apk add --update bash python py-pip py-yaml ca-certificates curl wget" shape="box"];
  "sha256:00fc36c88bf764e4b93e1336c8c04cc3442de6ca915433d4adcf30869faca949" [label="/bin/sh -c mkdir /app /app/zk_watcher" shape="box"];
  "sha256:74dd14ffd53a753011657664919412a066fcd01abe6f12eace5cd753d1d58a8d" [label="local://context" shape="ellipse"];
  "sha256:a0e757c31ec1f67790970dbed1a20e219ccb34877f0723812752fdf00a9d0d8c" [label="copy{src=/requirements*.txt, dest=/app/}" shape="note"];
  "sha256:7c7b589eede8da18cb001b4e58fbe42ab1919ddd15a034e05e885f70057dd299" [label="/bin/sh -c pip install -r /app/requirements.test.txt -r /app/requirements.txt" shape="box"];
  "sha256:01499ab28287eda4fbe2a62cbd7777a97e0486d6c30f9cf7ca1227cac9c211fa" [label="copy{src=/setup.py, dest=/app/}" shape="note"];
  "sha256:dc6cffe1e35b6e9777099c54be2bf66aad10395dedec373c00cd956ba36e0de6" [label="copy{src=/README.rst, dest=/app/}" shape="note"];
  "sha256:0e34660c8028c24b4cd9e6b5d69aa46f66b3fc2328040f8005f151ebd52f1122" [label="copy{src=/zk_watcher, dest=/app/zk_watcher/}" shape="note"];
  "sha256:a30821ad5ad838852373e8a55b19bd463afe782e62b7bcfc708900dbaa7a8a59" [label="/bin/sh -c cd /app; python setup.py install" shape="box"];
  "sha256:5d6c1ff0ba4e002e1900836f53df0f4fc2eb4a1329ce1df2e7225f7782478708" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:714ad917377f428c30b4a5108248639054260002001336a3f9fc95ad88b89368" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:480af709f70689c3d220d58aa1495e513e4ada7b6e1146153b7b64ad93901e4a" [label="sha256:480af709f70689c3d220d58aa1495e513e4ada7b6e1146153b7b64ad93901e4a" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:d5d5b6bd901f484d5b3829faae9e2bf0f55dc4e6a8bc86dfedb631477e715a48" [label=""];
  "sha256:d5d5b6bd901f484d5b3829faae9e2bf0f55dc4e6a8bc86dfedb631477e715a48" -> "sha256:00fc36c88bf764e4b93e1336c8c04cc3442de6ca915433d4adcf30869faca949" [label=""];
  "sha256:00fc36c88bf764e4b93e1336c8c04cc3442de6ca915433d4adcf30869faca949" -> "sha256:a0e757c31ec1f67790970dbed1a20e219ccb34877f0723812752fdf00a9d0d8c" [label=""];
  "sha256:74dd14ffd53a753011657664919412a066fcd01abe6f12eace5cd753d1d58a8d" -> "sha256:a0e757c31ec1f67790970dbed1a20e219ccb34877f0723812752fdf00a9d0d8c" [label=""];
  "sha256:a0e757c31ec1f67790970dbed1a20e219ccb34877f0723812752fdf00a9d0d8c" -> "sha256:7c7b589eede8da18cb001b4e58fbe42ab1919ddd15a034e05e885f70057dd299" [label=""];
  "sha256:7c7b589eede8da18cb001b4e58fbe42ab1919ddd15a034e05e885f70057dd299" -> "sha256:01499ab28287eda4fbe2a62cbd7777a97e0486d6c30f9cf7ca1227cac9c211fa" [label=""];
  "sha256:74dd14ffd53a753011657664919412a066fcd01abe6f12eace5cd753d1d58a8d" -> "sha256:01499ab28287eda4fbe2a62cbd7777a97e0486d6c30f9cf7ca1227cac9c211fa" [label=""];
  "sha256:01499ab28287eda4fbe2a62cbd7777a97e0486d6c30f9cf7ca1227cac9c211fa" -> "sha256:dc6cffe1e35b6e9777099c54be2bf66aad10395dedec373c00cd956ba36e0de6" [label=""];
  "sha256:74dd14ffd53a753011657664919412a066fcd01abe6f12eace5cd753d1d58a8d" -> "sha256:dc6cffe1e35b6e9777099c54be2bf66aad10395dedec373c00cd956ba36e0de6" [label=""];
  "sha256:dc6cffe1e35b6e9777099c54be2bf66aad10395dedec373c00cd956ba36e0de6" -> "sha256:0e34660c8028c24b4cd9e6b5d69aa46f66b3fc2328040f8005f151ebd52f1122" [label=""];
  "sha256:74dd14ffd53a753011657664919412a066fcd01abe6f12eace5cd753d1d58a8d" -> "sha256:0e34660c8028c24b4cd9e6b5d69aa46f66b3fc2328040f8005f151ebd52f1122" [label=""];
  "sha256:0e34660c8028c24b4cd9e6b5d69aa46f66b3fc2328040f8005f151ebd52f1122" -> "sha256:a30821ad5ad838852373e8a55b19bd463afe782e62b7bcfc708900dbaa7a8a59" [label=""];
  "sha256:a30821ad5ad838852373e8a55b19bd463afe782e62b7bcfc708900dbaa7a8a59" -> "sha256:5d6c1ff0ba4e002e1900836f53df0f4fc2eb4a1329ce1df2e7225f7782478708" [label=""];
  "sha256:74dd14ffd53a753011657664919412a066fcd01abe6f12eace5cd753d1d58a8d" -> "sha256:5d6c1ff0ba4e002e1900836f53df0f4fc2eb4a1329ce1df2e7225f7782478708" [label=""];
  "sha256:5d6c1ff0ba4e002e1900836f53df0f4fc2eb4a1329ce1df2e7225f7782478708" -> "sha256:714ad917377f428c30b4a5108248639054260002001336a3f9fc95ad88b89368" [label=""];
  "sha256:714ad917377f428c30b4a5108248639054260002001336a3f9fc95ad88b89368" -> "sha256:480af709f70689c3d220d58aa1495e513e4ada7b6e1146153b7b64ad93901e4a" [label=""];
}

