[app/sources/205866927.Dockerfile]
digraph {
  "sha256:c431db7399175af9933df437b448e49f96631107e1fc178267dd615182ab6602" [label="local://context" shape="ellipse"];
  "sha256:3d23057039b7f7b3fe0abe88102e52ca0541e03171f4f54d364668c340150467" [label="docker-image://docker.io/jeanblanchard/tomcat:8" shape="ellipse"];
  "sha256:e4b04a1c8b0869cc534997d35e6d4f5104a51a28705ab886ec6461a4011ef554" [label="copy{src=/build/backend.war, dest=/webapps/}" shape="note"];
  "sha256:0559c02df2e1fa677967ec88ea6da5aa34102ac5bdfc9a84abee5bab02c8a605" [label="/bin/sh -c mv ${CATALINA_HOME}/webapps/ROOT ${CATALINA_HOME}/webapps/tomcat" shape="box"];
  "sha256:d76f3224161e64c1bc9ec2d605255a23e5a472a32359cd5e1f4efd026a56ae34" [label="/bin/sh -c mv ${CATALINA_HOME}/webapps/backend.war ${CATALINA_HOME}/webapps/ROOT.war" shape="box"];
  "sha256:96bf3f4467c2bc712dc0abf1d7308a80e107b8b964b0aa1ac0541061aacdd219" [label="/bin/sh -c apk add --no-cache ${ET_RUNTIME_DEPS}" shape="box"];
  "sha256:7848005e1374859dd4f6e5b469cdd4fd905a3981ac38d2a14d7f2094a2783a4a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:80d86fa81b46af7e0c5252aa9f17eb26476c69dd65566da18a1b5d0ecf0acf2e" [label="/bin/sh -c apk add logrotate" shape="box"];
  "sha256:4c1207b948ab2fe6544d585beeaf96b5c5ac3f5fba9f47d0c67be787087b62aa" [label="/bin/sh -c mv /etc/periodic/daily/logrotate /etc/periodic/15min/logrotate" shape="box"];
  "sha256:cc3842f7c5ea6519c3d932d675f4c0cac304f6c221b895baf640b4e20be0a373" [label="/bin/sh -c crond" shape="box"];
  "sha256:4ab86099ac955d12eeb7d330856aafd523bbe7911a3137b19cbdfd97945d60bc" [label="copy{src=/build/scripts/wait-for-cmd.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:9693a7463d5dbdc47d8db48ecdd118b5857ef6fc86e3a4b1a55522e54e0750b8" [label="copy{src=/build/scripts/run-process.sh, dest=/}" shape="note"];
  "sha256:11f3a6366c7c821fc636195b8cfd870d5d8f6769ed407ca5f07e7d12b7c958ea" [label="copy{src=/build/scripts/tomcat, dest=/etc/logrotate.d/tomcat}" shape="note"];
  "sha256:5d370e487bb36a75989140ca2ce0df0c738cc5642321995af77e087144af9332" [label="/bin/sh -c rm /opt/tomcat/conf/logging.properties" shape="box"];
  "sha256:b4e09635c949c78e45b52e04e3158bc317db8c08608e55d012507550b58c060c" [label="copy{src=/build/scripts/logging.properties, dest=/opt/tomcat/conf/logging.properties}" shape="note"];
  "sha256:ee6abc34c17a27ec546e5c0598a5e5d0818cd03a120b2931d8b95f330d91ee04" [label="/bin/sh -c sed -i 's/prefix/rotatable=\\\"false\\\" prefix/' /opt/tomcat/conf/server.xml" shape="box"];
  "sha256:f2b49db8f88d8b453f021354c039634d689d1bc3a811304eddbfd0cd26bcce42" [label="sha256:f2b49db8f88d8b453f021354c039634d689d1bc3a811304eddbfd0cd26bcce42" shape="plaintext"];
  "sha256:3d23057039b7f7b3fe0abe88102e52ca0541e03171f4f54d364668c340150467" -> "sha256:e4b04a1c8b0869cc534997d35e6d4f5104a51a28705ab886ec6461a4011ef554" [label=""];
  "sha256:c431db7399175af9933df437b448e49f96631107e1fc178267dd615182ab6602" -> "sha256:e4b04a1c8b0869cc534997d35e6d4f5104a51a28705ab886ec6461a4011ef554" [label=""];
  "sha256:e4b04a1c8b0869cc534997d35e6d4f5104a51a28705ab886ec6461a4011ef554" -> "sha256:0559c02df2e1fa677967ec88ea6da5aa34102ac5bdfc9a84abee5bab02c8a605" [label=""];
  "sha256:0559c02df2e1fa677967ec88ea6da5aa34102ac5bdfc9a84abee5bab02c8a605" -> "sha256:d76f3224161e64c1bc9ec2d605255a23e5a472a32359cd5e1f4efd026a56ae34" [label=""];
  "sha256:d76f3224161e64c1bc9ec2d605255a23e5a472a32359cd5e1f4efd026a56ae34" -> "sha256:96bf3f4467c2bc712dc0abf1d7308a80e107b8b964b0aa1ac0541061aacdd219" [label=""];
  "sha256:96bf3f4467c2bc712dc0abf1d7308a80e107b8b964b0aa1ac0541061aacdd219" -> "sha256:7848005e1374859dd4f6e5b469cdd4fd905a3981ac38d2a14d7f2094a2783a4a" [label=""];
  "sha256:7848005e1374859dd4f6e5b469cdd4fd905a3981ac38d2a14d7f2094a2783a4a" -> "sha256:80d86fa81b46af7e0c5252aa9f17eb26476c69dd65566da18a1b5d0ecf0acf2e" [label=""];
  "sha256:80d86fa81b46af7e0c5252aa9f17eb26476c69dd65566da18a1b5d0ecf0acf2e" -> "sha256:4c1207b948ab2fe6544d585beeaf96b5c5ac3f5fba9f47d0c67be787087b62aa" [label=""];
  "sha256:4c1207b948ab2fe6544d585beeaf96b5c5ac3f5fba9f47d0c67be787087b62aa" -> "sha256:cc3842f7c5ea6519c3d932d675f4c0cac304f6c221b895baf640b4e20be0a373" [label=""];
  "sha256:cc3842f7c5ea6519c3d932d675f4c0cac304f6c221b895baf640b4e20be0a373" -> "sha256:4ab86099ac955d12eeb7d330856aafd523bbe7911a3137b19cbdfd97945d60bc" [label=""];
  "sha256:c431db7399175af9933df437b448e49f96631107e1fc178267dd615182ab6602" -> "sha256:4ab86099ac955d12eeb7d330856aafd523bbe7911a3137b19cbdfd97945d60bc" [label=""];
  "sha256:4ab86099ac955d12eeb7d330856aafd523bbe7911a3137b19cbdfd97945d60bc" -> "sha256:9693a7463d5dbdc47d8db48ecdd118b5857ef6fc86e3a4b1a55522e54e0750b8" [label=""];
  "sha256:c431db7399175af9933df437b448e49f96631107e1fc178267dd615182ab6602" -> "sha256:9693a7463d5dbdc47d8db48ecdd118b5857ef6fc86e3a4b1a55522e54e0750b8" [label=""];
  "sha256:9693a7463d5dbdc47d8db48ecdd118b5857ef6fc86e3a4b1a55522e54e0750b8" -> "sha256:11f3a6366c7c821fc636195b8cfd870d5d8f6769ed407ca5f07e7d12b7c958ea" [label=""];
  "sha256:c431db7399175af9933df437b448e49f96631107e1fc178267dd615182ab6602" -> "sha256:11f3a6366c7c821fc636195b8cfd870d5d8f6769ed407ca5f07e7d12b7c958ea" [label=""];
  "sha256:11f3a6366c7c821fc636195b8cfd870d5d8f6769ed407ca5f07e7d12b7c958ea" -> "sha256:5d370e487bb36a75989140ca2ce0df0c738cc5642321995af77e087144af9332" [label=""];
  "sha256:5d370e487bb36a75989140ca2ce0df0c738cc5642321995af77e087144af9332" -> "sha256:b4e09635c949c78e45b52e04e3158bc317db8c08608e55d012507550b58c060c" [label=""];
  "sha256:c431db7399175af9933df437b448e49f96631107e1fc178267dd615182ab6602" -> "sha256:b4e09635c949c78e45b52e04e3158bc317db8c08608e55d012507550b58c060c" [label=""];
  "sha256:b4e09635c949c78e45b52e04e3158bc317db8c08608e55d012507550b58c060c" -> "sha256:ee6abc34c17a27ec546e5c0598a5e5d0818cd03a120b2931d8b95f330d91ee04" [label=""];
  "sha256:ee6abc34c17a27ec546e5c0598a5e5d0818cd03a120b2931d8b95f330d91ee04" -> "sha256:f2b49db8f88d8b453f021354c039634d689d1bc3a811304eddbfd0cd26bcce42" [label=""];
}

