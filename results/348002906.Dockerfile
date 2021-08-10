[app/sources/348002906.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:9fb3448bd44e5ab8df57d31cafc3761484d01fe2902ea492a5bc1b6fbce97ac3" [label="/bin/sh -c apt-get update && apt-get install -y curl libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev" shape="box"];
  "sha256:4d356ec26dd4645298f0366517a6a11856ba4fa4d6417fcb6ed84450eb1164ed" [label="/bin/sh -c export uid=1000 gid=1000 &&     mkdir -p /home/javadev &&     echo \"javadev:x:${uid}:${gid}:JavaDev,,,:/home/javadev:/bin/bash\" >> /etc/passwd &&     echo \"javadev:x:${uid}:\" >> /etc/group &&     echo \"javadev ALL=(ALL) NOPASSWD: ALL\" > /etc/sudoers.d/javadev &&     chmod 0440 /etc/sudoers.d/javadev &&     chown ${uid}:${gid} -R /home/javadev" shape="box"];
  "sha256:5fdf098d2022a120e6e1ca4aa9bcd3c63ece988388045f7361d48a24f1016ea8" [label="/bin/sh -c apt-get install -y xvfb x11vnc fluxbox" shape="box"];
  "sha256:db4990c3dc5ea1aeeea3d6ed761541b5292542a0971ca392a56b6fe56dd04e33" [label="mkdir{path=/home/javadev}" shape="note"];
  "sha256:9246150a3ae10be56ad9c927e762f297c41a077e8a43e4e7e85b2f9e86f42058" [label="/bin/sh -c curl -fSL \"http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz&r=1\" -o eclipse.tar.gz \t&& tar -xvf eclipse.tar.gz && rm eclipse.tar.gz" shape="box"];
  "sha256:f5cb2929746ec5e62927cdda60906544f7e6a75c2505a73b9e7c42408f2ac597" [label="sha256:f5cb2929746ec5e62927cdda60906544f7e6a75c2505a73b9e7c42408f2ac597" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9fb3448bd44e5ab8df57d31cafc3761484d01fe2902ea492a5bc1b6fbce97ac3" [label=""];
  "sha256:9fb3448bd44e5ab8df57d31cafc3761484d01fe2902ea492a5bc1b6fbce97ac3" -> "sha256:4d356ec26dd4645298f0366517a6a11856ba4fa4d6417fcb6ed84450eb1164ed" [label=""];
  "sha256:4d356ec26dd4645298f0366517a6a11856ba4fa4d6417fcb6ed84450eb1164ed" -> "sha256:5fdf098d2022a120e6e1ca4aa9bcd3c63ece988388045f7361d48a24f1016ea8" [label=""];
  "sha256:5fdf098d2022a120e6e1ca4aa9bcd3c63ece988388045f7361d48a24f1016ea8" -> "sha256:db4990c3dc5ea1aeeea3d6ed761541b5292542a0971ca392a56b6fe56dd04e33" [label=""];
  "sha256:db4990c3dc5ea1aeeea3d6ed761541b5292542a0971ca392a56b6fe56dd04e33" -> "sha256:9246150a3ae10be56ad9c927e762f297c41a077e8a43e4e7e85b2f9e86f42058" [label=""];
  "sha256:9246150a3ae10be56ad9c927e762f297c41a077e8a43e4e7e85b2f9e86f42058" -> "sha256:f5cb2929746ec5e62927cdda60906544f7e6a75c2505a73b9e7c42408f2ac597" [label=""];
}

