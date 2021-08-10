[app/sources/256780872.Dockerfile]
digraph {
  "sha256:3ba9773650c97f34efb884195214763e5ee80b7bbb32a8d5efbcc78614fbbceb" [label="docker-image://docker.io/microsoft/windowsservercore:latest" shape="ellipse"];
  "sha256:9cc55436a02697090c6715f59ad86a4771f9aa658006376c76edd787c6036fa0" [label="/bin/sh -c powershell -Command     wget 'http://javadl.oracle.com/webapps/download/AutoDL?BundleId=210185' -Outfile 'C:\\jreinstaller.exe' ;     Start-Process -filepath C:\\jreinstaller.exe -passthru -wait -argumentlist \"/s,INSTALLDIR=c:\\Java\\jre1.8.0_91\" ;     del C:\\jreinstaller.exe" shape="box"];
  "sha256:c1e2fc47cb33ab2d56d6b83ef628c9d78e11eb29fc3da3f1412354365b223baf" [label="/bin/sh -c setx PATH %PATH%;%JAVA_HOME%\\bin" shape="box"];
  "sha256:98d9c1631cdd9226339fe8e930ad63b558788d9c9ad2b1419c84acc8cb939a7a" [label="sha256:98d9c1631cdd9226339fe8e930ad63b558788d9c9ad2b1419c84acc8cb939a7a" shape="plaintext"];
  "sha256:3ba9773650c97f34efb884195214763e5ee80b7bbb32a8d5efbcc78614fbbceb" -> "sha256:9cc55436a02697090c6715f59ad86a4771f9aa658006376c76edd787c6036fa0" [label=""];
  "sha256:9cc55436a02697090c6715f59ad86a4771f9aa658006376c76edd787c6036fa0" -> "sha256:c1e2fc47cb33ab2d56d6b83ef628c9d78e11eb29fc3da3f1412354365b223baf" [label=""];
  "sha256:c1e2fc47cb33ab2d56d6b83ef628c9d78e11eb29fc3da3f1412354365b223baf" -> "sha256:98d9c1631cdd9226339fe8e930ad63b558788d9c9ad2b1419c84acc8cb939a7a" [label=""];
}

