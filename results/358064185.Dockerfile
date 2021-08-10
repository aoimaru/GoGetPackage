[app/sources/358064185.Dockerfile]
digraph {
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" [label="docker-image://docker.io/library/java:8@sha256:c1ff613e8ba25833d2e1940da0940c3824f03f802c449f3d1815a66b7f8c0e9d" shape="ellipse"];
  "sha256:2e6ba80683d816c94a66bc2558ce97a20b2633490f4cde1848384cd040083f7d" [label="/bin/sh -c cd /usr/lib &&     curl -fsSL $GRADLE_URL -o gradle-bin.zip &&     unzip gradle-bin.zip &&     ln -s \"/usr/lib/gradle-${GRADLE_VERSION}/bin/gradle\" /usr/bin/gradle &&     rm gradle-bin.zip &&     mkdir -p /src $GRADLE_REF" shape="box"];
  "sha256:1ca49e4796637ac594d6b16274153d0cb486f6ddf7a3e0e788e0888dba94fc07" [label="mkdir{path=/src}" shape="note"];
  "sha256:5addbb13a768a6f8fe4b656d98e6ec0f057896c4c5fc597ad97c04f5058f2d31" [label="local://context" shape="ellipse"];
  "sha256:f754d79038c1f145239718f93b7985491099dde611e11fd2e05d93c7319bd949" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:5ca69c5040f3d5d7b2f832278303b7a90319b01c5cc7868b90f5c70439967981" [label="/bin/sh -c /src/gradlew test" shape="box"];
  "sha256:1f8e38d635994986b497e0391507fc885e80a749a74bbf6a8eeaea04e4fb1e5f" [label="sha256:1f8e38d635994986b497e0391507fc885e80a749a74bbf6a8eeaea04e4fb1e5f" shape="plaintext"];
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" -> "sha256:2e6ba80683d816c94a66bc2558ce97a20b2633490f4cde1848384cd040083f7d" [label=""];
  "sha256:2e6ba80683d816c94a66bc2558ce97a20b2633490f4cde1848384cd040083f7d" -> "sha256:1ca49e4796637ac594d6b16274153d0cb486f6ddf7a3e0e788e0888dba94fc07" [label=""];
  "sha256:1ca49e4796637ac594d6b16274153d0cb486f6ddf7a3e0e788e0888dba94fc07" -> "sha256:f754d79038c1f145239718f93b7985491099dde611e11fd2e05d93c7319bd949" [label=""];
  "sha256:5addbb13a768a6f8fe4b656d98e6ec0f057896c4c5fc597ad97c04f5058f2d31" -> "sha256:f754d79038c1f145239718f93b7985491099dde611e11fd2e05d93c7319bd949" [label=""];
  "sha256:f754d79038c1f145239718f93b7985491099dde611e11fd2e05d93c7319bd949" -> "sha256:5ca69c5040f3d5d7b2f832278303b7a90319b01c5cc7868b90f5c70439967981" [label=""];
  "sha256:5ca69c5040f3d5d7b2f832278303b7a90319b01c5cc7868b90f5c70439967981" -> "sha256:1f8e38d635994986b497e0391507fc885e80a749a74bbf6a8eeaea04e4fb1e5f" [label=""];
}

