[app/sources/337812000.Dockerfile]
digraph {
  "sha256:8000c7d2c4bc5d1e96712b3e2bef666912a780681e9cc840e10ba36bbe0f0dbf" [label="docker-image://registry.access.redhat.com/redhat-sso-7/sso71-openshift:1.0" shape="ellipse"];
  "sha256:5b99029bd5080905d4bbd51a6aedb766497b171e4b7db9580d7c0b0cda328bff" [label="/bin/sh -c rm -rf /opt/eap/standalone/configuration/standalone_xml_history/current/" shape="box"];
  "sha256:d45387d2e20b3516a3ffa3fba0fb9ff5e02749471193bd256f84b918280832a2" [label="sha256:d45387d2e20b3516a3ffa3fba0fb9ff5e02749471193bd256f84b918280832a2" shape="plaintext"];
  "sha256:8000c7d2c4bc5d1e96712b3e2bef666912a780681e9cc840e10ba36bbe0f0dbf" -> "sha256:5b99029bd5080905d4bbd51a6aedb766497b171e4b7db9580d7c0b0cda328bff" [label=""];
  "sha256:5b99029bd5080905d4bbd51a6aedb766497b171e4b7db9580d7c0b0cda328bff" -> "sha256:d45387d2e20b3516a3ffa3fba0fb9ff5e02749471193bd256f84b918280832a2" [label=""];
}

