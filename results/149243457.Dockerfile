[app/sources/149243457.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:7030b58afca31d5161b32f9920b991510af124049b68905503f96ea5d874da08" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise main universe\" > /etc/apt/sources.list" shape="box"];
  "sha256:a03ce4b3dcb21a58c177ac012a8276bb1a6bade7e3496d236ff41ee80eb53469" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e9ffb7c304deb6ed74a9d7df77c58eaa51cf8dab624e9a539e67fe47b44d6588" [label="/bin/sh -c apt-get -y -f install curl net-tools" shape="box"];
  "sha256:bb3431eca03675b8a1af05d3bdb371cd76b8183643d801459fb52ec244776aeb" [label="/bin/sh -c apt-get -y install git" shape="box"];
  "sha256:1d282de3bae94e03b77eb3b95b00b8a8fc2bb4e3c5286e991fc4ae454b6f4981" [label="/bin/sh -c apt-get -y install maven" shape="box"];
  "sha256:a2a5ac9ddf00e1d6b4c5a06941357687e0847482611a992c60992852d31cdc30" [label="/bin/sh -c curl -L http://debian.datastax.com/debian/repo_key | apt-key add -" shape="box"];
  "sha256:c565f3e07cb3a50af1cc50d0645ac7f0a4e3555b92b754256e9975fc70307719" [label="/bin/sh -c echo \"deb http://debian.datastax.com/community/ stable main\" >> /etc/apt/sources.list.d/datastax.list" shape="box"];
  "sha256:87b54d7ece2547cec71806e380bb8209a3731ef1d53d3903ddc724a579a5093e" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-software-properties" shape="box"];
  "sha256:859d95db2631f44b2f63e7f49cb311f58edc97157a188b3f013247dff5527192" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java -y" shape="box"];
  "sha256:ff8ee7eba876738375d81b90da02d768ce9d955bee1413d489559f6e41b7c58f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:79a7a264f2e6b4da283dff0b24c54d3714330f29b61651020083803904fe55ef" [label="/bin/sh -c echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:8df8e48dcb6ee846d20eac2452768b560950381b7abe94ebddb9a90991d846b5" [label="/bin/sh -c apt-get install -y oracle-java7-installer" shape="box"];
  "sha256:c1dd374e980c304195dfbe8e2ac6876d42103760b6777bcb002272e36d21acec" [label="/bin/sh -c update-java-alternatives -s java-7-oracle" shape="box"];
  "sha256:f56f0540551786d4596695646166f4eaeda9cb865cc46f1655f037b38c7cb652" [label="/bin/sh -c apt-get install cassandra -y" shape="box"];
  "sha256:cb7bf0c203bc8d9219a25f03eff7222f218027cc483598f7609b6ab22257d05a" [label="/bin/sh -c git clone http://github.com/rackerlabs/blueflood.git /src/blueflood" shape="box"];
  "sha256:a897df1d0240127143abc0fa9823b35782673286faf6791ad68e3feb2c0b4208" [label="local://context" shape="ellipse"];
  "sha256:c2f82c423700639bf21ba71a1737ed263597956a32521a703dc269d4acc4eb8a" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:3a37bd955a421b353f7b42bd913629adebc16a23901f79a3ad54b873cad3029e" [label="/bin/sh -c chmod +x /src/start.sh" shape="box"];
  "sha256:0a22173c6e4db68ac4dd95f00b015ae2abc260e9369099438f07744157e8f3cf" [label="sha256:0a22173c6e4db68ac4dd95f00b015ae2abc260e9369099438f07744157e8f3cf" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:7030b58afca31d5161b32f9920b991510af124049b68905503f96ea5d874da08" [label=""];
  "sha256:7030b58afca31d5161b32f9920b991510af124049b68905503f96ea5d874da08" -> "sha256:a03ce4b3dcb21a58c177ac012a8276bb1a6bade7e3496d236ff41ee80eb53469" [label=""];
  "sha256:a03ce4b3dcb21a58c177ac012a8276bb1a6bade7e3496d236ff41ee80eb53469" -> "sha256:e9ffb7c304deb6ed74a9d7df77c58eaa51cf8dab624e9a539e67fe47b44d6588" [label=""];
  "sha256:e9ffb7c304deb6ed74a9d7df77c58eaa51cf8dab624e9a539e67fe47b44d6588" -> "sha256:bb3431eca03675b8a1af05d3bdb371cd76b8183643d801459fb52ec244776aeb" [label=""];
  "sha256:bb3431eca03675b8a1af05d3bdb371cd76b8183643d801459fb52ec244776aeb" -> "sha256:1d282de3bae94e03b77eb3b95b00b8a8fc2bb4e3c5286e991fc4ae454b6f4981" [label=""];
  "sha256:1d282de3bae94e03b77eb3b95b00b8a8fc2bb4e3c5286e991fc4ae454b6f4981" -> "sha256:a2a5ac9ddf00e1d6b4c5a06941357687e0847482611a992c60992852d31cdc30" [label=""];
  "sha256:a2a5ac9ddf00e1d6b4c5a06941357687e0847482611a992c60992852d31cdc30" -> "sha256:c565f3e07cb3a50af1cc50d0645ac7f0a4e3555b92b754256e9975fc70307719" [label=""];
  "sha256:c565f3e07cb3a50af1cc50d0645ac7f0a4e3555b92b754256e9975fc70307719" -> "sha256:87b54d7ece2547cec71806e380bb8209a3731ef1d53d3903ddc724a579a5093e" [label=""];
  "sha256:87b54d7ece2547cec71806e380bb8209a3731ef1d53d3903ddc724a579a5093e" -> "sha256:859d95db2631f44b2f63e7f49cb311f58edc97157a188b3f013247dff5527192" [label=""];
  "sha256:859d95db2631f44b2f63e7f49cb311f58edc97157a188b3f013247dff5527192" -> "sha256:ff8ee7eba876738375d81b90da02d768ce9d955bee1413d489559f6e41b7c58f" [label=""];
  "sha256:ff8ee7eba876738375d81b90da02d768ce9d955bee1413d489559f6e41b7c58f" -> "sha256:79a7a264f2e6b4da283dff0b24c54d3714330f29b61651020083803904fe55ef" [label=""];
  "sha256:79a7a264f2e6b4da283dff0b24c54d3714330f29b61651020083803904fe55ef" -> "sha256:8df8e48dcb6ee846d20eac2452768b560950381b7abe94ebddb9a90991d846b5" [label=""];
  "sha256:8df8e48dcb6ee846d20eac2452768b560950381b7abe94ebddb9a90991d846b5" -> "sha256:c1dd374e980c304195dfbe8e2ac6876d42103760b6777bcb002272e36d21acec" [label=""];
  "sha256:c1dd374e980c304195dfbe8e2ac6876d42103760b6777bcb002272e36d21acec" -> "sha256:f56f0540551786d4596695646166f4eaeda9cb865cc46f1655f037b38c7cb652" [label=""];
  "sha256:f56f0540551786d4596695646166f4eaeda9cb865cc46f1655f037b38c7cb652" -> "sha256:cb7bf0c203bc8d9219a25f03eff7222f218027cc483598f7609b6ab22257d05a" [label=""];
  "sha256:cb7bf0c203bc8d9219a25f03eff7222f218027cc483598f7609b6ab22257d05a" -> "sha256:c2f82c423700639bf21ba71a1737ed263597956a32521a703dc269d4acc4eb8a" [label=""];
  "sha256:a897df1d0240127143abc0fa9823b35782673286faf6791ad68e3feb2c0b4208" -> "sha256:c2f82c423700639bf21ba71a1737ed263597956a32521a703dc269d4acc4eb8a" [label=""];
  "sha256:c2f82c423700639bf21ba71a1737ed263597956a32521a703dc269d4acc4eb8a" -> "sha256:3a37bd955a421b353f7b42bd913629adebc16a23901f79a3ad54b873cad3029e" [label=""];
  "sha256:3a37bd955a421b353f7b42bd913629adebc16a23901f79a3ad54b873cad3029e" -> "sha256:0a22173c6e4db68ac4dd95f00b015ae2abc260e9369099438f07744157e8f3cf" [label=""];
}

