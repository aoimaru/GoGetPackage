[app/sources/482258579.Dockerfile]
digraph {
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" [label="local://context" shape="ellipse"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:64be4f16b43f39fdc729ebf3c490f3b68da8bc739a50032605a6ee0cb3296b24" [label="copy{src=/conf/atomic/pgdump/help.1, dest=/help.1}" shape="note"];
  "sha256:fc4d6ddf9721dd50b517e91bf86095b54844f61e47eeccd96d843d461c270a9d" [label="copy{src=/conf/atomic/pgdump/help.md, dest=/help.md}" shape="note"];
  "sha256:40f1a7b52241296d4d2f99b814dddd9be770b23aa90742b080e8bcc958524bb0" [label="copy{src=/conf/licenses, dest=/licenses}" shape="note"];
  "sha256:eec8a06c21744ca0fbfe5678e28debce0efdc8b782a88311c5859f7e562340e2" [label="copy{src=/conf/CRUNCHY-GPG-KEY.public, dest=/}" shape="note"];
  "sha256:1591f0510108a248a95f0998e98709509f0b663e26187e493c2015571bb4dbb4" [label="copy{src=/conf/crunchypg10.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:472386abefa862401c311c2206d329bc55ade49fc01ba23bcaa8ef346483f2be" [label="/bin/sh -c rpm --import CRUNCHY-GPG-KEY.public" shape="box"];
  "sha256:8f43d1db6798a64854838578b4a2354c6b7c26992def4be0cb91c2d4cafbae99" [label="/bin/sh -c rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  && yum -y --enablerepo=rhel-7-server-ose-3.11-rpms --disablerepo=crunchy* update  && yum install -y bind-utils \tgettext \thostname \tprocps-ng \tunzip  && yum -y install postgresql10 postgresql10-server  && yum clean all -y" shape="box"];
  "sha256:52e44acad48dc70a06586de5a1e5c742b91787186136baa2cbda33131194972b" [label="/bin/sh -c mkdir -p /opt/cpm/bin /opt/cpm/conf /pgdata" shape="box"];
  "sha256:3a3488b6c4f2c487d7788d824ef85728da1132d900379a1b83b8aa20cea8692b" [label="copy{src=/bin/pgdump, dest=/opt/cpm/bin}" shape="note"];
  "sha256:9184ac5f273387533dc092bf939e2da7567efa336ed8b7627c98a617c0ce83a9" [label="copy{src=/bin/common, dest=/opt/cpm/bin}" shape="note"];
  "sha256:6ce1134455e59a4c34bf3d637c1c6d31d8c6daa04dbafe29c3e31d92044e359d" [label="copy{src=/conf/pgdump, dest=/opt/cpm/conf}" shape="note"];
  "sha256:9e94d987a57601969eb59a5b137b1f532d03370576d32db7fe006204b5f4c3d7" [label="/bin/sh -c chgrp -R 0 /opt/cpm /pgdata &&     chmod -R g=u /opt/cpm /pgdata" shape="box"];
  "sha256:a3fdc3a6121518b09dd25105c674436567aa2218e91c59ddbf1d6e29ed3e0957" [label="/bin/sh -c chmod g=u /etc/passwd && \tchmod g=u /etc/group" shape="box"];
  "sha256:9760f98d3cc884804424b26d601b3b37d3b24e4c582bdbaf5af2a7c511955300" [label="sha256:9760f98d3cc884804424b26d601b3b37d3b24e4c582bdbaf5af2a7c511955300" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:64be4f16b43f39fdc729ebf3c490f3b68da8bc739a50032605a6ee0cb3296b24" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:64be4f16b43f39fdc729ebf3c490f3b68da8bc739a50032605a6ee0cb3296b24" [label=""];
  "sha256:64be4f16b43f39fdc729ebf3c490f3b68da8bc739a50032605a6ee0cb3296b24" -> "sha256:fc4d6ddf9721dd50b517e91bf86095b54844f61e47eeccd96d843d461c270a9d" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:fc4d6ddf9721dd50b517e91bf86095b54844f61e47eeccd96d843d461c270a9d" [label=""];
  "sha256:fc4d6ddf9721dd50b517e91bf86095b54844f61e47eeccd96d843d461c270a9d" -> "sha256:40f1a7b52241296d4d2f99b814dddd9be770b23aa90742b080e8bcc958524bb0" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:40f1a7b52241296d4d2f99b814dddd9be770b23aa90742b080e8bcc958524bb0" [label=""];
  "sha256:40f1a7b52241296d4d2f99b814dddd9be770b23aa90742b080e8bcc958524bb0" -> "sha256:eec8a06c21744ca0fbfe5678e28debce0efdc8b782a88311c5859f7e562340e2" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:eec8a06c21744ca0fbfe5678e28debce0efdc8b782a88311c5859f7e562340e2" [label=""];
  "sha256:eec8a06c21744ca0fbfe5678e28debce0efdc8b782a88311c5859f7e562340e2" -> "sha256:1591f0510108a248a95f0998e98709509f0b663e26187e493c2015571bb4dbb4" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:1591f0510108a248a95f0998e98709509f0b663e26187e493c2015571bb4dbb4" [label=""];
  "sha256:1591f0510108a248a95f0998e98709509f0b663e26187e493c2015571bb4dbb4" -> "sha256:472386abefa862401c311c2206d329bc55ade49fc01ba23bcaa8ef346483f2be" [label=""];
  "sha256:472386abefa862401c311c2206d329bc55ade49fc01ba23bcaa8ef346483f2be" -> "sha256:8f43d1db6798a64854838578b4a2354c6b7c26992def4be0cb91c2d4cafbae99" [label=""];
  "sha256:8f43d1db6798a64854838578b4a2354c6b7c26992def4be0cb91c2d4cafbae99" -> "sha256:52e44acad48dc70a06586de5a1e5c742b91787186136baa2cbda33131194972b" [label=""];
  "sha256:52e44acad48dc70a06586de5a1e5c742b91787186136baa2cbda33131194972b" -> "sha256:3a3488b6c4f2c487d7788d824ef85728da1132d900379a1b83b8aa20cea8692b" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:3a3488b6c4f2c487d7788d824ef85728da1132d900379a1b83b8aa20cea8692b" [label=""];
  "sha256:3a3488b6c4f2c487d7788d824ef85728da1132d900379a1b83b8aa20cea8692b" -> "sha256:9184ac5f273387533dc092bf939e2da7567efa336ed8b7627c98a617c0ce83a9" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:9184ac5f273387533dc092bf939e2da7567efa336ed8b7627c98a617c0ce83a9" [label=""];
  "sha256:9184ac5f273387533dc092bf939e2da7567efa336ed8b7627c98a617c0ce83a9" -> "sha256:6ce1134455e59a4c34bf3d637c1c6d31d8c6daa04dbafe29c3e31d92044e359d" [label=""];
  "sha256:e4912135f1de8b5603c63f3480334e8ece6adf31effe97e1e5a83dde46650427" -> "sha256:6ce1134455e59a4c34bf3d637c1c6d31d8c6daa04dbafe29c3e31d92044e359d" [label=""];
  "sha256:6ce1134455e59a4c34bf3d637c1c6d31d8c6daa04dbafe29c3e31d92044e359d" -> "sha256:9e94d987a57601969eb59a5b137b1f532d03370576d32db7fe006204b5f4c3d7" [label=""];
  "sha256:9e94d987a57601969eb59a5b137b1f532d03370576d32db7fe006204b5f4c3d7" -> "sha256:a3fdc3a6121518b09dd25105c674436567aa2218e91c59ddbf1d6e29ed3e0957" [label=""];
  "sha256:a3fdc3a6121518b09dd25105c674436567aa2218e91c59ddbf1d6e29ed3e0957" -> "sha256:9760f98d3cc884804424b26d601b3b37d3b24e4c582bdbaf5af2a7c511955300" [label=""];
}

