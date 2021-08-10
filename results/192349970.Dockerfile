[app/sources/192349970.Dockerfile]
digraph {
  "sha256:b4e803ea59c1542bf2884e7e99f3d52cb8d2270ed717f9c2eb47a72f93344d14" [label="docker-image://10.245.2.2:5000/dward/eap-openshift:latest" shape="ellipse"];
  "sha256:a680e014a9495db23d82c51bd38171289af347df1992c1e487c66a686ea259e2" [label="local://context" shape="ellipse"];
  "sha256:9fae18af22da6849e499d04900ad4d3b1dd9466fb09ee88168bfc45064c40d53" [label="copy{src=/standalone-openshift.xml, dest=/opt/jboss/eap/standalone/configuration/standalone-openshift.xml}" shape="note"];
  "sha256:6609ec61d6933d394680fc900535624ea387a79b899dd957924afe4a0a29e1e1" [label="/bin/sh -c chown jboss:jboss /opt/jboss/eap/standalone/configuration/standalone-openshift.xml" shape="box"];
  "sha256:384c06d23ca65e44f3a0ea6df959b3a1a1cfc3b59f3f49439de880906d37ab28" [label="copy{src=/basic-app-cache.war, dest=/opt/jboss/eap/standalone/deployments/basic-app-cache.war}" shape="note"];
  "sha256:d3cab4068d3c064e721435aaef624481ee3004cfd69d6f4398bad1d1b48437a7" [label="/bin/sh -c chown jboss:jboss /opt/jboss/eap/standalone/deployments/basic-app-cache.war" shape="box"];
  "sha256:d53861d0a0ad07b9d1bf6af71cb0fb9315503970dddaf32e363fd514395952b7" [label="copy{src=/basic-web-session.war, dest=/opt/jboss/eap/standalone/deployments/basic-web-session.war}" shape="note"];
  "sha256:451d447af2b13c5b96d5c0d87ee548d948c5426d90cb5b9d391e5a5a5461cc1c" [label="/bin/sh -c chown jboss:jboss /opt/jboss/eap/standalone/deployments/basic-web-session.war" shape="box"];
  "sha256:a0c13f2397d4be7d3b4ba2c010ee8d435c75342714ca9618b464b42ab85bd486" [label="copy{src=/hello-servlet.war, dest=/opt/jboss/eap/standalone/deployments/hello-servlet.war}" shape="note"];
  "sha256:bb9b99c5f8ebc19b773acbc1f26f8030f57a76b12988e46c5ec9bca999bda2c3" [label="/bin/sh -c chown jboss:jboss /opt/jboss/eap/standalone/deployments/hello-servlet.war" shape="box"];
  "sha256:dc3f852d25f425e0903fa06d64baa06e9b5e1e47535bfa31153f731ec83c739b" [label="sha256:dc3f852d25f425e0903fa06d64baa06e9b5e1e47535bfa31153f731ec83c739b" shape="plaintext"];
  "sha256:b4e803ea59c1542bf2884e7e99f3d52cb8d2270ed717f9c2eb47a72f93344d14" -> "sha256:9fae18af22da6849e499d04900ad4d3b1dd9466fb09ee88168bfc45064c40d53" [label=""];
  "sha256:a680e014a9495db23d82c51bd38171289af347df1992c1e487c66a686ea259e2" -> "sha256:9fae18af22da6849e499d04900ad4d3b1dd9466fb09ee88168bfc45064c40d53" [label=""];
  "sha256:9fae18af22da6849e499d04900ad4d3b1dd9466fb09ee88168bfc45064c40d53" -> "sha256:6609ec61d6933d394680fc900535624ea387a79b899dd957924afe4a0a29e1e1" [label=""];
  "sha256:6609ec61d6933d394680fc900535624ea387a79b899dd957924afe4a0a29e1e1" -> "sha256:384c06d23ca65e44f3a0ea6df959b3a1a1cfc3b59f3f49439de880906d37ab28" [label=""];
  "sha256:a680e014a9495db23d82c51bd38171289af347df1992c1e487c66a686ea259e2" -> "sha256:384c06d23ca65e44f3a0ea6df959b3a1a1cfc3b59f3f49439de880906d37ab28" [label=""];
  "sha256:384c06d23ca65e44f3a0ea6df959b3a1a1cfc3b59f3f49439de880906d37ab28" -> "sha256:d3cab4068d3c064e721435aaef624481ee3004cfd69d6f4398bad1d1b48437a7" [label=""];
  "sha256:d3cab4068d3c064e721435aaef624481ee3004cfd69d6f4398bad1d1b48437a7" -> "sha256:d53861d0a0ad07b9d1bf6af71cb0fb9315503970dddaf32e363fd514395952b7" [label=""];
  "sha256:a680e014a9495db23d82c51bd38171289af347df1992c1e487c66a686ea259e2" -> "sha256:d53861d0a0ad07b9d1bf6af71cb0fb9315503970dddaf32e363fd514395952b7" [label=""];
  "sha256:d53861d0a0ad07b9d1bf6af71cb0fb9315503970dddaf32e363fd514395952b7" -> "sha256:451d447af2b13c5b96d5c0d87ee548d948c5426d90cb5b9d391e5a5a5461cc1c" [label=""];
  "sha256:451d447af2b13c5b96d5c0d87ee548d948c5426d90cb5b9d391e5a5a5461cc1c" -> "sha256:a0c13f2397d4be7d3b4ba2c010ee8d435c75342714ca9618b464b42ab85bd486" [label=""];
  "sha256:a680e014a9495db23d82c51bd38171289af347df1992c1e487c66a686ea259e2" -> "sha256:a0c13f2397d4be7d3b4ba2c010ee8d435c75342714ca9618b464b42ab85bd486" [label=""];
  "sha256:a0c13f2397d4be7d3b4ba2c010ee8d435c75342714ca9618b464b42ab85bd486" -> "sha256:bb9b99c5f8ebc19b773acbc1f26f8030f57a76b12988e46c5ec9bca999bda2c3" [label=""];
  "sha256:bb9b99c5f8ebc19b773acbc1f26f8030f57a76b12988e46c5ec9bca999bda2c3" -> "sha256:dc3f852d25f425e0903fa06d64baa06e9b5e1e47535bfa31153f731ec83c739b" [label=""];
}

