[app/sources/445240417.Dockerfile]
digraph {
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" [label="docker-image://docker.io/jboss/wildfly:latest" shape="ellipse"];
  "sha256:bce1b3be5bf0e50fcf5ea0f3afc9564f9ca524700aff58088f9a12bdaf49e123" [label="/bin/sh -c /opt/jboss/wildfly/bin/add-user.sh admin admin --silent" shape="box"];
  "sha256:55001518553aa7e6062147919c1c31ace60f469c0e61bb14030cb34923f5a05f" [label="local://context" shape="ellipse"];
  "sha256:7d4a4e375f1fcbee2e34ec257d9ce5e905fd64e9fdd4ed9e617001844825ef0c" [label="copy{src=/wildfly-monitor-module.zip, dest=/tmp/}" shape="note"];
  "sha256:f6bc2d6c1eacbcdaa4a9eb4d24c17952229bd55d6ed08b55c55f7cdbdfaab2e6" [label="/bin/sh -c unzip -q /tmp/wildfly-monitor-module.zip -d /opt/jboss/wildfly" shape="box"];
  "sha256:6d0b8145235917b06a2f0480a588ad8d29fba3d237918c37123b14edfbc7a010" [label="copy{src=/standalone/configuration/*, dest=/opt/jboss/wildfly/standalone/configuration/}" shape="note"];
  "sha256:01602f4e10a574fa30792556c875b6466202326bed3f30e328d15eb4bbb1b34d" [label="copy{src=/deployments/*, dest=/opt/jboss/wildfly/standalone/deployments/}" shape="note"];
  "sha256:8f958955ea900c55ce27cab2c09e588977bc256fd643350acc2bec81e8cb7ee3" [label="/bin/sh -c chown -R jboss:jboss /opt/jboss/wildfly" shape="box"];
  "sha256:ca6c1baa89ff718e7f3a6f2b2bf42ea80b08e93f3c71026f78466eb66236235c" [label="sha256:ca6c1baa89ff718e7f3a6f2b2bf42ea80b08e93f3c71026f78466eb66236235c" shape="plaintext"];
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" -> "sha256:bce1b3be5bf0e50fcf5ea0f3afc9564f9ca524700aff58088f9a12bdaf49e123" [label=""];
  "sha256:bce1b3be5bf0e50fcf5ea0f3afc9564f9ca524700aff58088f9a12bdaf49e123" -> "sha256:7d4a4e375f1fcbee2e34ec257d9ce5e905fd64e9fdd4ed9e617001844825ef0c" [label=""];
  "sha256:55001518553aa7e6062147919c1c31ace60f469c0e61bb14030cb34923f5a05f" -> "sha256:7d4a4e375f1fcbee2e34ec257d9ce5e905fd64e9fdd4ed9e617001844825ef0c" [label=""];
  "sha256:7d4a4e375f1fcbee2e34ec257d9ce5e905fd64e9fdd4ed9e617001844825ef0c" -> "sha256:f6bc2d6c1eacbcdaa4a9eb4d24c17952229bd55d6ed08b55c55f7cdbdfaab2e6" [label=""];
  "sha256:f6bc2d6c1eacbcdaa4a9eb4d24c17952229bd55d6ed08b55c55f7cdbdfaab2e6" -> "sha256:6d0b8145235917b06a2f0480a588ad8d29fba3d237918c37123b14edfbc7a010" [label=""];
  "sha256:55001518553aa7e6062147919c1c31ace60f469c0e61bb14030cb34923f5a05f" -> "sha256:6d0b8145235917b06a2f0480a588ad8d29fba3d237918c37123b14edfbc7a010" [label=""];
  "sha256:6d0b8145235917b06a2f0480a588ad8d29fba3d237918c37123b14edfbc7a010" -> "sha256:01602f4e10a574fa30792556c875b6466202326bed3f30e328d15eb4bbb1b34d" [label=""];
  "sha256:55001518553aa7e6062147919c1c31ace60f469c0e61bb14030cb34923f5a05f" -> "sha256:01602f4e10a574fa30792556c875b6466202326bed3f30e328d15eb4bbb1b34d" [label=""];
  "sha256:01602f4e10a574fa30792556c875b6466202326bed3f30e328d15eb4bbb1b34d" -> "sha256:8f958955ea900c55ce27cab2c09e588977bc256fd643350acc2bec81e8cb7ee3" [label=""];
  "sha256:8f958955ea900c55ce27cab2c09e588977bc256fd643350acc2bec81e8cb7ee3" -> "sha256:ca6c1baa89ff718e7f3a6f2b2bf42ea80b08e93f3c71026f78466eb66236235c" [label=""];
}

