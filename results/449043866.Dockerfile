[app/sources/449043866.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:33c7c859dc45b0a885224aed2b28798595292d7de5f521dd478a1ccbe07caa13" [label="/bin/sh -c apt-get install -y -q software-properties-common" shape="box"];
  "sha256:1c1cb0275e20e2758775175b78b41b900756055225dd3d692f1b5390f48c5c0b" [label="/bin/sh -c add-apt-repository -y ppa:webupd8team/java" shape="box"];
  "sha256:6d8dee82c2ab735258cf8c83d7e50514b0b4bfe9c99dfa5bd9e4eb2958f7af54" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:0799ef81554a95d80a8a05f977d582c61d3241d2a6e767f0ebaadcb0bd0da31a" [label="/bin/sh -c echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections" shape="box"];
  "sha256:5fb1905c753f285aa07fdb512dfe76a19afd3d4a036be521ae5970876820de03" [label="/bin/sh -c apt-get install oracle-java7-installer -y" shape="box"];
  "sha256:c1a6dffe493a35aa6a9ebc5e607864b02e3f0f28a5df76122a7f114488cfef7a" [label="/bin/sh -c apt-get -y -q install wget" shape="box"];
  "sha256:2fd72015a788f2b2eac84bc01ba3fb1bbfa7559080b64817522532f6c0873b23" [label="/bin/sh -c apt-get -y -q install git" shape="box"];
  "sha256:9ba52d965449f03f1bbb0de76e6504d00929c212e7cc7afe4099e75dd480113e" [label="/bin/sh -c apt-get -y -q install scala" shape="box"];
  "sha256:989ef021be928af96261eaee9bef6262bef924faad838a7f938eec0ee8184b7c" [label="/bin/sh -c wget -q -O - http://www.us.apache.org/dist/spark/spark-1.3.0/spark-1.3.0-bin-cdh4.tgz   | tar -C /opt -xzv" shape="box"];
  "sha256:2ab117d46b22b2d02533c7fe95ff5e3bc78945cba347ce57087822da7fb62318" [label="mkdir{path=/opt/spark-1.3.0-bin-cdh4}" shape="note"];
  "sha256:2285d656a6c2555e661e94896fce161ef3ce7b81d0993d6c6c38eaa009477cd3" [label="local://context" shape="ellipse"];
  "sha256:52a0e7cd994a4f1d93097bdf60fade5c07938c970ac4cbd0538592b7a1bb70a7" [label="copy{src=/spark-worker.sh, dest=/opt/spark-worker.sh}" shape="note"];
  "sha256:f71b0a564dc34235411f9b0ad6165094f25744f9e052620731e728da9f4e4b49" [label="/bin/sh -c chmod 755 /opt/spark-worker.sh" shape="box"];
  "sha256:6ef07bb122fbbd0037c49ee029522e90fd0f9502842f0baac901a66781895570" [label="sha256:6ef07bb122fbbd0037c49ee029522e90fd0f9502842f0baac901a66781895570" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:33c7c859dc45b0a885224aed2b28798595292d7de5f521dd478a1ccbe07caa13" [label=""];
  "sha256:33c7c859dc45b0a885224aed2b28798595292d7de5f521dd478a1ccbe07caa13" -> "sha256:1c1cb0275e20e2758775175b78b41b900756055225dd3d692f1b5390f48c5c0b" [label=""];
  "sha256:1c1cb0275e20e2758775175b78b41b900756055225dd3d692f1b5390f48c5c0b" -> "sha256:6d8dee82c2ab735258cf8c83d7e50514b0b4bfe9c99dfa5bd9e4eb2958f7af54" [label=""];
  "sha256:6d8dee82c2ab735258cf8c83d7e50514b0b4bfe9c99dfa5bd9e4eb2958f7af54" -> "sha256:0799ef81554a95d80a8a05f977d582c61d3241d2a6e767f0ebaadcb0bd0da31a" [label=""];
  "sha256:0799ef81554a95d80a8a05f977d582c61d3241d2a6e767f0ebaadcb0bd0da31a" -> "sha256:5fb1905c753f285aa07fdb512dfe76a19afd3d4a036be521ae5970876820de03" [label=""];
  "sha256:5fb1905c753f285aa07fdb512dfe76a19afd3d4a036be521ae5970876820de03" -> "sha256:c1a6dffe493a35aa6a9ebc5e607864b02e3f0f28a5df76122a7f114488cfef7a" [label=""];
  "sha256:c1a6dffe493a35aa6a9ebc5e607864b02e3f0f28a5df76122a7f114488cfef7a" -> "sha256:2fd72015a788f2b2eac84bc01ba3fb1bbfa7559080b64817522532f6c0873b23" [label=""];
  "sha256:2fd72015a788f2b2eac84bc01ba3fb1bbfa7559080b64817522532f6c0873b23" -> "sha256:9ba52d965449f03f1bbb0de76e6504d00929c212e7cc7afe4099e75dd480113e" [label=""];
  "sha256:9ba52d965449f03f1bbb0de76e6504d00929c212e7cc7afe4099e75dd480113e" -> "sha256:989ef021be928af96261eaee9bef6262bef924faad838a7f938eec0ee8184b7c" [label=""];
  "sha256:989ef021be928af96261eaee9bef6262bef924faad838a7f938eec0ee8184b7c" -> "sha256:2ab117d46b22b2d02533c7fe95ff5e3bc78945cba347ce57087822da7fb62318" [label=""];
  "sha256:2ab117d46b22b2d02533c7fe95ff5e3bc78945cba347ce57087822da7fb62318" -> "sha256:52a0e7cd994a4f1d93097bdf60fade5c07938c970ac4cbd0538592b7a1bb70a7" [label=""];
  "sha256:2285d656a6c2555e661e94896fce161ef3ce7b81d0993d6c6c38eaa009477cd3" -> "sha256:52a0e7cd994a4f1d93097bdf60fade5c07938c970ac4cbd0538592b7a1bb70a7" [label=""];
  "sha256:52a0e7cd994a4f1d93097bdf60fade5c07938c970ac4cbd0538592b7a1bb70a7" -> "sha256:f71b0a564dc34235411f9b0ad6165094f25744f9e052620731e728da9f4e4b49" [label=""];
  "sha256:f71b0a564dc34235411f9b0ad6165094f25744f9e052620731e728da9f4e4b49" -> "sha256:6ef07bb122fbbd0037c49ee029522e90fd0f9502842f0baac901a66781895570" [label=""];
}

