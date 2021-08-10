[app/sources/231504613.Dockerfile]
digraph {
  "sha256:4a4260da054ac7f9a57a996934b5c74775ca4cb2f0a26e30c7ef99343ba32216" [label="docker-image://docker.io/library/geonetwork:3.4.3" shape="ellipse"];
  "sha256:32f083c3202c8e83befdced33e26740ece4b23a33e74140f66e3aa015b4fb328" [label="/bin/sh -c apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:28bf80da9f28d75a00be3c800f970d8191fa6a3f1c74894d1ab339d523245117" [label="/bin/sh -c sed -i -e 's#<import resource=\"../config-db/h2.xml\"/>#<!--<import resource=\"../config-db/h2.xml\"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource=\"../config-db/postgres.xml\"/>-->#<import resource=\"../config-db/postgres.xml\"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml" shape="box"];
  "sha256:8ab13d264c94693acd6e6d82581d47b899620fd4e08c152ac187175a9c41cd7f" [label="local://context" shape="ellipse"];
  "sha256:ed1dd3d8993f06ac65fe47c9764b53ccd5e00e43a038812f84e5636472589558" [label="copy{src=/jdbc.properties, dest=/webapps/geonetwork/WEB-INF/config-db/jdbc.properties}" shape="note"];
  "sha256:3a135413c34d489b9f015ab23c78990257e3cb1d3981d479b2207045d0d25e3a" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:b536873ede55a43196b70887dd1c090c29cf72083a5a4db8938de4a10929620f" [label="sha256:b536873ede55a43196b70887dd1c090c29cf72083a5a4db8938de4a10929620f" shape="plaintext"];
  "sha256:4a4260da054ac7f9a57a996934b5c74775ca4cb2f0a26e30c7ef99343ba32216" -> "sha256:32f083c3202c8e83befdced33e26740ece4b23a33e74140f66e3aa015b4fb328" [label=""];
  "sha256:32f083c3202c8e83befdced33e26740ece4b23a33e74140f66e3aa015b4fb328" -> "sha256:28bf80da9f28d75a00be3c800f970d8191fa6a3f1c74894d1ab339d523245117" [label=""];
  "sha256:28bf80da9f28d75a00be3c800f970d8191fa6a3f1c74894d1ab339d523245117" -> "sha256:ed1dd3d8993f06ac65fe47c9764b53ccd5e00e43a038812f84e5636472589558" [label=""];
  "sha256:8ab13d264c94693acd6e6d82581d47b899620fd4e08c152ac187175a9c41cd7f" -> "sha256:ed1dd3d8993f06ac65fe47c9764b53ccd5e00e43a038812f84e5636472589558" [label=""];
  "sha256:ed1dd3d8993f06ac65fe47c9764b53ccd5e00e43a038812f84e5636472589558" -> "sha256:3a135413c34d489b9f015ab23c78990257e3cb1d3981d479b2207045d0d25e3a" [label=""];
  "sha256:8ab13d264c94693acd6e6d82581d47b899620fd4e08c152ac187175a9c41cd7f" -> "sha256:3a135413c34d489b9f015ab23c78990257e3cb1d3981d479b2207045d0d25e3a" [label=""];
  "sha256:3a135413c34d489b9f015ab23c78990257e3cb1d3981d479b2207045d0d25e3a" -> "sha256:b536873ede55a43196b70887dd1c090c29cf72083a5a4db8938de4a10929620f" [label=""];
}

