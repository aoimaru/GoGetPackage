[app/sources/210063159.Dockerfile]
digraph {
  "sha256:a864b3d4ba40355dfa291aa745991d737d47c520a5081a17631c42217705657e" [label="docker-image://docker.io/projectunik/compilers-rump-go-xen:fe3335e71ed20510" shape="ellipse"];
  "sha256:1cfd4813ba5bfa037c4f15000cb021f3f438308b4c8345bf3ebee99db81aee51" [label="local://context" shape="ellipse"];
  "sha256:cc2401864f669eb4eeb5c8b6e5614c490b38141fc97fb6c1ee02cc77382018b8" [label="copy{src=/stub, dest=/build/stub/}" shape="note"];
  "sha256:0e88599ae316af4d01ec2ea728dc473eabfdc82b90573106e2dcf0bda677f670" [label="/bin/sh -c set -x && cd /build/stub/ &&     CC=x86_64-rumprun-netbsd-gcc CGO_ENABLED=1 GOOS=rumprun /usr/local/go/bin/go build -buildmode=c-archive -v -a -x  *.go &&     RUMPRUN_STUBLINK=succeed x86_64-rumprun-netbsd-gcc -g -o /build/stub/stub mainstub.c $(find . -name \"*.a\")" shape="box"];
  "sha256:82a985d0beabf5ef1ecf52e9ec75373e8d63babfa679eb0cfb3f790ab962bb28" [label="sha256:82a985d0beabf5ef1ecf52e9ec75373e8d63babfa679eb0cfb3f790ab962bb28" shape="plaintext"];
  "sha256:a864b3d4ba40355dfa291aa745991d737d47c520a5081a17631c42217705657e" -> "sha256:cc2401864f669eb4eeb5c8b6e5614c490b38141fc97fb6c1ee02cc77382018b8" [label=""];
  "sha256:1cfd4813ba5bfa037c4f15000cb021f3f438308b4c8345bf3ebee99db81aee51" -> "sha256:cc2401864f669eb4eeb5c8b6e5614c490b38141fc97fb6c1ee02cc77382018b8" [label=""];
  "sha256:cc2401864f669eb4eeb5c8b6e5614c490b38141fc97fb6c1ee02cc77382018b8" -> "sha256:0e88599ae316af4d01ec2ea728dc473eabfdc82b90573106e2dcf0bda677f670" [label=""];
  "sha256:0e88599ae316af4d01ec2ea728dc473eabfdc82b90573106e2dcf0bda677f670" -> "sha256:82a985d0beabf5ef1ecf52e9ec75373e8d63babfa679eb0cfb3f790ab962bb28" [label=""];
}

