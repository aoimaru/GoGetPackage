[app/sources/173471427.Dockerfile]
digraph {
  "sha256:b7ea2a52d210bf39f29a2483399cfe6a5448efe676c55303f9a639cff0ffb361" [label="docker-image://docker.io/bketelsen/uibase:latest" shape="ellipse"];
  "sha256:14f238a5fb604619f7615da75a8b85922b8c5f37a10db27d4d374f802785fa11" [label="/bin/sh -c adduser $user && echo \"$user:$user\" | chpasswd && adduser $user sudo" shape="box"];
  "sha256:b559d9df3eb7d453e2033ab649e2e2a7fad4dc0085301b5da653a0f408cfa306" [label="local://context" shape="ellipse"];
  "sha256:0f97c401ec0db864daa1c580757ee93cefdd01700fe2e37ec5fa56d5156365b9" [label="copy{src=/supervisord.conf, dest=/home/bketelsen/supervisord.conf}" shape="note"];
  "sha256:8a2eeb3dd8889787b77c483ea900e7fbf64a937e48c9d2ba5cb52eade4e47331" [label="copy{src=/vncpasswd, dest=/home/bketelsen/.vnc/passwd}" shape="note"];
  "sha256:c67191ac133210d03d0b5dfe120a66156f972099b58b040b96a0c7b1a59998d4" [label="copy{src=/xstartup, dest=/home/bketelsen/.vnc/xstartup}" shape="note"];
  "sha256:28aa34964b01ceb3ca6c48b83246f37342a5942830ff28d28312524adbf1a372" [label="/bin/sh -c chown $user:$user -R /home/$user/.vnc/" shape="box"];
  "sha256:a28b391a8c3221d9c75c93b9667ae05a1e60da682ec312dec4bd04ffa53886b9" [label="/bin/sh -c chown $user:$user /home/$user/supervisord.conf" shape="box"];
  "sha256:944f5af927532d98792435e46be2f0d9340a31518750f20ee56f50585e46a128" [label="/bin/sh -c chmod 400 /home/$user/.vnc/passwd" shape="box"];
  "sha256:5fec9e3c87908307c8c5113b75ba979eaa04a0a71b73afd8f18a881e2b8bb6e8" [label="mkdir{path=/home/bketelsen}" shape="note"];
  "sha256:f2d824bab89ebe0f91c9b33ebda7609e83c4f6cbf754bf5fda6bf53a814d6160" [label="/bin/sh -c echo \"exec i3\" > /home/$user/.xinitrc" shape="box"];
  "sha256:e9a22de281357aad997da64da70b866cddd022f24b7c5a55800ab6277d4d5521" [label="/bin/sh -c chmod +x /home/$user/.vnc/xstartup" shape="box"];
  "sha256:ddf8e7fac7ea79736bb1655eab7031b4c54c837a1db620bd5dbca6d3ccc32597" [label="sha256:ddf8e7fac7ea79736bb1655eab7031b4c54c837a1db620bd5dbca6d3ccc32597" shape="plaintext"];
  "sha256:b7ea2a52d210bf39f29a2483399cfe6a5448efe676c55303f9a639cff0ffb361" -> "sha256:14f238a5fb604619f7615da75a8b85922b8c5f37a10db27d4d374f802785fa11" [label=""];
  "sha256:14f238a5fb604619f7615da75a8b85922b8c5f37a10db27d4d374f802785fa11" -> "sha256:0f97c401ec0db864daa1c580757ee93cefdd01700fe2e37ec5fa56d5156365b9" [label=""];
  "sha256:b559d9df3eb7d453e2033ab649e2e2a7fad4dc0085301b5da653a0f408cfa306" -> "sha256:0f97c401ec0db864daa1c580757ee93cefdd01700fe2e37ec5fa56d5156365b9" [label=""];
  "sha256:0f97c401ec0db864daa1c580757ee93cefdd01700fe2e37ec5fa56d5156365b9" -> "sha256:8a2eeb3dd8889787b77c483ea900e7fbf64a937e48c9d2ba5cb52eade4e47331" [label=""];
  "sha256:b559d9df3eb7d453e2033ab649e2e2a7fad4dc0085301b5da653a0f408cfa306" -> "sha256:8a2eeb3dd8889787b77c483ea900e7fbf64a937e48c9d2ba5cb52eade4e47331" [label=""];
  "sha256:8a2eeb3dd8889787b77c483ea900e7fbf64a937e48c9d2ba5cb52eade4e47331" -> "sha256:c67191ac133210d03d0b5dfe120a66156f972099b58b040b96a0c7b1a59998d4" [label=""];
  "sha256:b559d9df3eb7d453e2033ab649e2e2a7fad4dc0085301b5da653a0f408cfa306" -> "sha256:c67191ac133210d03d0b5dfe120a66156f972099b58b040b96a0c7b1a59998d4" [label=""];
  "sha256:c67191ac133210d03d0b5dfe120a66156f972099b58b040b96a0c7b1a59998d4" -> "sha256:28aa34964b01ceb3ca6c48b83246f37342a5942830ff28d28312524adbf1a372" [label=""];
  "sha256:28aa34964b01ceb3ca6c48b83246f37342a5942830ff28d28312524adbf1a372" -> "sha256:a28b391a8c3221d9c75c93b9667ae05a1e60da682ec312dec4bd04ffa53886b9" [label=""];
  "sha256:a28b391a8c3221d9c75c93b9667ae05a1e60da682ec312dec4bd04ffa53886b9" -> "sha256:944f5af927532d98792435e46be2f0d9340a31518750f20ee56f50585e46a128" [label=""];
  "sha256:944f5af927532d98792435e46be2f0d9340a31518750f20ee56f50585e46a128" -> "sha256:5fec9e3c87908307c8c5113b75ba979eaa04a0a71b73afd8f18a881e2b8bb6e8" [label=""];
  "sha256:5fec9e3c87908307c8c5113b75ba979eaa04a0a71b73afd8f18a881e2b8bb6e8" -> "sha256:f2d824bab89ebe0f91c9b33ebda7609e83c4f6cbf754bf5fda6bf53a814d6160" [label=""];
  "sha256:f2d824bab89ebe0f91c9b33ebda7609e83c4f6cbf754bf5fda6bf53a814d6160" -> "sha256:e9a22de281357aad997da64da70b866cddd022f24b7c5a55800ab6277d4d5521" [label=""];
  "sha256:e9a22de281357aad997da64da70b866cddd022f24b7c5a55800ab6277d4d5521" -> "sha256:ddf8e7fac7ea79736bb1655eab7031b4c54c837a1db620bd5dbca6d3ccc32597" [label=""];
}

