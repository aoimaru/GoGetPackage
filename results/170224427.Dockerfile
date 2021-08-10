[app/sources/170224427.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:5d49c0b3a31407c781077827d38e6d9f51c41be93995ecb3649dd633b59c3e7a" [label="docker-image://docker.io/library/maven:3-jdk-8" shape="ellipse"];
  "sha256:7fac2e7ce963d50892fe6ba9e8a67e3bbab5a9d41a346287097f5e9c2bf81756" [label="/bin/sh -c mkdir /build" shape="box"];
  "sha256:0d08145e711b2102c03a4dc80945c25279463a03065cdfa6d5a27c985b82274f" [label="mkdir{path=/build}" shape="note"];
  "sha256:a6530918d35e6ab16bf594551bc9bb8d321bfcac21d2a89274368826bd54ad2d" [label="local://context" shape="ellipse"];
  "sha256:829ac27f8e329920173111a6a769caf66f0cb979208373dad53ab727b90400f9" [label="copy{src=/, dest=/build}" shape="note"];
  "sha256:dc72cb9b0f1b9e23a216bfea17f4fa0bafa77cada514bedd0686bfaaefd1ab6c" [label="/bin/sh -c mvn -Dmaven.test.skip=true -Dmaven.javadoc.skip=true package" shape="box"];
  "sha256:91103ebe93f532558b03b394aeaa88ad7d2f5a3b702a335128135fc5bb648750" [label="copy{src=/build/target/ROOT.war, dest=/app.jar}" shape="note"];
  "sha256:6f9563c858f793d2f509977134c2b1c28c6532bb2e6a5690fc155bd075e35380" [label="sha256:6f9563c858f793d2f509977134c2b1c28c6532bb2e6a5690fc155bd075e35380" shape="plaintext"];
  "sha256:5d49c0b3a31407c781077827d38e6d9f51c41be93995ecb3649dd633b59c3e7a" -> "sha256:7fac2e7ce963d50892fe6ba9e8a67e3bbab5a9d41a346287097f5e9c2bf81756" [label=""];
  "sha256:7fac2e7ce963d50892fe6ba9e8a67e3bbab5a9d41a346287097f5e9c2bf81756" -> "sha256:0d08145e711b2102c03a4dc80945c25279463a03065cdfa6d5a27c985b82274f" [label=""];
  "sha256:0d08145e711b2102c03a4dc80945c25279463a03065cdfa6d5a27c985b82274f" -> "sha256:829ac27f8e329920173111a6a769caf66f0cb979208373dad53ab727b90400f9" [label=""];
  "sha256:a6530918d35e6ab16bf594551bc9bb8d321bfcac21d2a89274368826bd54ad2d" -> "sha256:829ac27f8e329920173111a6a769caf66f0cb979208373dad53ab727b90400f9" [label=""];
  "sha256:829ac27f8e329920173111a6a769caf66f0cb979208373dad53ab727b90400f9" -> "sha256:dc72cb9b0f1b9e23a216bfea17f4fa0bafa77cada514bedd0686bfaaefd1ab6c" [label=""];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:91103ebe93f532558b03b394aeaa88ad7d2f5a3b702a335128135fc5bb648750" [label=""];
  "sha256:dc72cb9b0f1b9e23a216bfea17f4fa0bafa77cada514bedd0686bfaaefd1ab6c" -> "sha256:91103ebe93f532558b03b394aeaa88ad7d2f5a3b702a335128135fc5bb648750" [label=""];
  "sha256:91103ebe93f532558b03b394aeaa88ad7d2f5a3b702a335128135fc5bb648750" -> "sha256:6f9563c858f793d2f509977134c2b1c28c6532bb2e6a5690fc155bd075e35380" [label=""];
}

