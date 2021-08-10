[app/sources/359250942.Dockerfile]
digraph {
  "sha256:7d59bceb4e918ed92cd32afdffd7aab1ccac190732a94bcd25bc2311cb9b365e" [label="docker-image://docker.io/stimela/astropy:1.0.1" shape="ellipse"];
  "sha256:319c5317fef2a223fea379323a9acf2ee6b66746896d9ee6369318625eeda730" [label="local://context" shape="ellipse"];
  "sha256:aedb74622c2b32fa251229659424036df353aa5d4ef8bb600d4e0f00df135549" [label="copy{src=/src, dest=/scratch/code}" shape="note"];
  "sha256:69915a76ba0d6520278bfa27097e280a1ff66784399e76e6c0f123a4caaa7898" [label="sha256:69915a76ba0d6520278bfa27097e280a1ff66784399e76e6c0f123a4caaa7898" shape="plaintext"];
  "sha256:7d59bceb4e918ed92cd32afdffd7aab1ccac190732a94bcd25bc2311cb9b365e" -> "sha256:aedb74622c2b32fa251229659424036df353aa5d4ef8bb600d4e0f00df135549" [label=""];
  "sha256:319c5317fef2a223fea379323a9acf2ee6b66746896d9ee6369318625eeda730" -> "sha256:aedb74622c2b32fa251229659424036df353aa5d4ef8bb600d4e0f00df135549" [label=""];
  "sha256:aedb74622c2b32fa251229659424036df353aa5d4ef8bb600d4e0f00df135549" -> "sha256:69915a76ba0d6520278bfa27097e280a1ff66784399e76e6c0f123a4caaa7898" [label=""];
}

