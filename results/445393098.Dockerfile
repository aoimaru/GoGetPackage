[app/sources/445393098.Dockerfile]
digraph {
  "sha256:e07b2b5fb4216488efbb74d1150233ed1266b6c6680139cbcd595dfc3abed4be" [label="local://context" shape="ellipse"];
  "sha256:f7af4e1ca5f4ef241e66a9102024040a4e033af161bd3afa3c6913d116208115" [label="docker-image://docker.io/library/aist-python:latest" shape="ellipse"];
  "sha256:b8fdd6510c0e10a3127030341efef53ffd4e966c5879aaf2d259bf0f46c5a556" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:349b004ece544363eeb350c1869f1a2244adefd284d6e792dcea162a1af14211" [label="mkdir{path=/app}" shape="note"];
  "sha256:1577d4da9279937e160751514e38bad003e6aa01611801a3952f2823ab0e16bc" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:77a7f8b0cbea3bc34c84974d62369013afbb3b2f51384a2159cec0437822edff" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:04a736476fe1b4ef21b339f5ee27bd64c2961f4633c6e2d62509d780917f1d93" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:e361c317c83de36f82131aa17786659b4dc6c78504cee4f90a2ffbf72857b67a" [label="sha256:e361c317c83de36f82131aa17786659b4dc6c78504cee4f90a2ffbf72857b67a" shape="plaintext"];
  "sha256:f7af4e1ca5f4ef241e66a9102024040a4e033af161bd3afa3c6913d116208115" -> "sha256:b8fdd6510c0e10a3127030341efef53ffd4e966c5879aaf2d259bf0f46c5a556" [label=""];
  "sha256:e07b2b5fb4216488efbb74d1150233ed1266b6c6680139cbcd595dfc3abed4be" -> "sha256:b8fdd6510c0e10a3127030341efef53ffd4e966c5879aaf2d259bf0f46c5a556" [label=""];
  "sha256:b8fdd6510c0e10a3127030341efef53ffd4e966c5879aaf2d259bf0f46c5a556" -> "sha256:349b004ece544363eeb350c1869f1a2244adefd284d6e792dcea162a1af14211" [label=""];
  "sha256:349b004ece544363eeb350c1869f1a2244adefd284d6e792dcea162a1af14211" -> "sha256:1577d4da9279937e160751514e38bad003e6aa01611801a3952f2823ab0e16bc" [label=""];
  "sha256:1577d4da9279937e160751514e38bad003e6aa01611801a3952f2823ab0e16bc" -> "sha256:77a7f8b0cbea3bc34c84974d62369013afbb3b2f51384a2159cec0437822edff" [label=""];
  "sha256:e07b2b5fb4216488efbb74d1150233ed1266b6c6680139cbcd595dfc3abed4be" -> "sha256:77a7f8b0cbea3bc34c84974d62369013afbb3b2f51384a2159cec0437822edff" [label=""];
  "sha256:77a7f8b0cbea3bc34c84974d62369013afbb3b2f51384a2159cec0437822edff" -> "sha256:04a736476fe1b4ef21b339f5ee27bd64c2961f4633c6e2d62509d780917f1d93" [label=""];
  "sha256:e07b2b5fb4216488efbb74d1150233ed1266b6c6680139cbcd595dfc3abed4be" -> "sha256:04a736476fe1b4ef21b339f5ee27bd64c2961f4633c6e2d62509d780917f1d93" [label=""];
  "sha256:04a736476fe1b4ef21b339f5ee27bd64c2961f4633c6e2d62509d780917f1d93" -> "sha256:e361c317c83de36f82131aa17786659b4dc6c78504cee4f90a2ffbf72857b67a" [label=""];
}

