[app/sources/182589839.Dockerfile]
digraph {
  "sha256:88850a1c903fa03f355aac0970d7be21611973e0670665a0876a8b427904ae89" [label="local://context" shape="ellipse"];
  "sha256:f700c54f5b4f7975a21cbbee7b306c864ffd773d5bebaff8da7e7cf3c93082dd" [label="docker-image://docker.io/dockerfile/java:oracle-java8" shape="ellipse"];
  "sha256:990433b89c7586e077b5cc2e72b8f17b207f62a35b0e7edfe7e581f62796816d" [label="copy{src=/reactjs-tutorial-spring-boot.jar, dest=/opt/reactjs-tutorial-spring-boot/}" shape="note"];
  "sha256:0215ac236b2d4e37e15d1d392b3117b25832eed8a12806b37004d8cc721e012f" [label="mkdir{path=/opt/reactjs-tutorial-spring-boot}" shape="note"];
  "sha256:51b5da9ac24630de80a2392b9e79267117c5b9cac2686ab88d90150e4f6facfb" [label="sha256:51b5da9ac24630de80a2392b9e79267117c5b9cac2686ab88d90150e4f6facfb" shape="plaintext"];
  "sha256:f700c54f5b4f7975a21cbbee7b306c864ffd773d5bebaff8da7e7cf3c93082dd" -> "sha256:990433b89c7586e077b5cc2e72b8f17b207f62a35b0e7edfe7e581f62796816d" [label=""];
  "sha256:88850a1c903fa03f355aac0970d7be21611973e0670665a0876a8b427904ae89" -> "sha256:990433b89c7586e077b5cc2e72b8f17b207f62a35b0e7edfe7e581f62796816d" [label=""];
  "sha256:990433b89c7586e077b5cc2e72b8f17b207f62a35b0e7edfe7e581f62796816d" -> "sha256:0215ac236b2d4e37e15d1d392b3117b25832eed8a12806b37004d8cc721e012f" [label=""];
  "sha256:0215ac236b2d4e37e15d1d392b3117b25832eed8a12806b37004d8cc721e012f" -> "sha256:51b5da9ac24630de80a2392b9e79267117c5b9cac2686ab88d90150e4f6facfb" [label=""];
}

