[app/sources/205973710.Dockerfile]
digraph {
  "sha256:142c455909ccfc3aab802a44090741354a51dd41bd40a25190421eb2fa84b8e6" [label="docker-image://us-demo-4x.jfrog.info:9003/docker-framework:latest" shape="ellipse"];
  "sha256:25b50d0e5ddcda31af6982575cec547ff91302fab8ea01c6a41124e4327a2a3e" [label="local://context" shape="ellipse"];
  "sha256:bab9894dfcc405e819fb56c658a079fdc0613cf3378999cc54e35c1184ea6e1b" [label="copy{src=/war/*.war, dest=/home/exec/tomcat/webapps/swampup.war}" shape="note"];
  "sha256:ab299efc4a2315c3446c1ae2c659efd455ac0bfb5cec3c785e8e7291bf8f8394" [label="sha256:ab299efc4a2315c3446c1ae2c659efd455ac0bfb5cec3c785e8e7291bf8f8394" shape="plaintext"];
  "sha256:142c455909ccfc3aab802a44090741354a51dd41bd40a25190421eb2fa84b8e6" -> "sha256:bab9894dfcc405e819fb56c658a079fdc0613cf3378999cc54e35c1184ea6e1b" [label=""];
  "sha256:25b50d0e5ddcda31af6982575cec547ff91302fab8ea01c6a41124e4327a2a3e" -> "sha256:bab9894dfcc405e819fb56c658a079fdc0613cf3378999cc54e35c1184ea6e1b" [label=""];
  "sha256:bab9894dfcc405e819fb56c658a079fdc0613cf3378999cc54e35c1184ea6e1b" -> "sha256:ab299efc4a2315c3446c1ae2c659efd455ac0bfb5cec3c785e8e7291bf8f8394" [label=""];
}

