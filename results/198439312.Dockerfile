[app/sources/198439312.Dockerfile]
digraph {
  "sha256:46bf501585d0dfc25567fe8cf283e01dae0da2b0a861ad1edca6e4acfdf93019" [label="docker-image://docker.io/anapsix/alpine-java:jre8" shape="ellipse"];
  "sha256:ef37e5f9a62286ba121cef89d6e58f9dd7a9ffbaea12c6b589422cdaa5756888" [label="/bin/sh -c mkdir /build" shape="box"];
  "sha256:bbd845aaec424a457a4eeabc8a0ddb7a1c750b4a6d4ee0dc46d52086a04f204b" [label="local://context" shape="ellipse"];
  "sha256:fda7507f28e22f1dbdc6189a18a9d4f579b50b54f901baa04fbbad7f383ba102" [label="copy{src=/build/libs/eureka-service-0.0.1-SNAPSHOT.jar, dest=/build/eureka-service-0.0.1-SNAPSHOT.jar}" shape="note"];
  "sha256:ac1aebf809af5c345e6aafb276c8b95d8743714df4280518e22bb6a183a7ff21" [label="/bin/sh -c bash -c 'touch /eureka-service-0.0.1-SNAPSHOT.jar'" shape="box"];
  "sha256:ea5d30dc6e9e30ab61b326078b5b92af6d5f63d2e1da797a2a13bcf3447957d0" [label="sha256:ea5d30dc6e9e30ab61b326078b5b92af6d5f63d2e1da797a2a13bcf3447957d0" shape="plaintext"];
  "sha256:46bf501585d0dfc25567fe8cf283e01dae0da2b0a861ad1edca6e4acfdf93019" -> "sha256:ef37e5f9a62286ba121cef89d6e58f9dd7a9ffbaea12c6b589422cdaa5756888" [label=""];
  "sha256:ef37e5f9a62286ba121cef89d6e58f9dd7a9ffbaea12c6b589422cdaa5756888" -> "sha256:fda7507f28e22f1dbdc6189a18a9d4f579b50b54f901baa04fbbad7f383ba102" [label=""];
  "sha256:bbd845aaec424a457a4eeabc8a0ddb7a1c750b4a6d4ee0dc46d52086a04f204b" -> "sha256:fda7507f28e22f1dbdc6189a18a9d4f579b50b54f901baa04fbbad7f383ba102" [label=""];
  "sha256:fda7507f28e22f1dbdc6189a18a9d4f579b50b54f901baa04fbbad7f383ba102" -> "sha256:ac1aebf809af5c345e6aafb276c8b95d8743714df4280518e22bb6a183a7ff21" [label=""];
  "sha256:ac1aebf809af5c345e6aafb276c8b95d8743714df4280518e22bb6a183a7ff21" -> "sha256:ea5d30dc6e9e30ab61b326078b5b92af6d5f63d2e1da797a2a13bcf3447957d0" [label=""];
}

