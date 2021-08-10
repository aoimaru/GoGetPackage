[app/sources/334867162.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:aedc25f79ee300c89a3ecfc0e950d768f25293b1ae58c59ff0c3f1c65d4518c9" [label="/bin/sh -c apt-get update -y && apt-get install -y         wget         python-dev         python-pip         libczmq-dev         libcurlpp-dev         curl         libssl-dev         git         inetutils-telnet         bind9utils         zip         unzip     && apt-get clean" shape="box"];
  "sha256:ec529512a2bfbfe8108600df291cccf1321ee3bea9c53c368703301d565001fb" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:d0f18585b848edef8369a235a3a5d62575c781e6ee4e7dab714f9a96b841a81d" [label="/bin/sh -c pip install -U setuptools &&     pip install kubernetes &&     pip install cryptography &&     pip install psycopg2-binary==2.7.4" shape="box"];
  "sha256:f46a7ef55f625e3dcfb1cbd1d64e9f100e583f29bde4f516f2d22b13ed984d8b" [label="/bin/sh -c pip install apache-airflow[kubernetes,postgres]" shape="box"];
  "sha256:bb61be1dde993e27ae06846cf0bc51aec1d234dc28691ac64281db8b05bed30e" [label="local://context" shape="ellipse"];
  "sha256:64d22c9b62fe7151ba34dea18971cb8701102d31fb4186c13e38548b0b0e4621" [label="copy{src=/bootstrap.sh, dest=/bootstrap.sh}" shape="note"];
  "sha256:c734850379f7243586dc92fabfcbb538610c43cca72f840bd738de6f1369ff2b" [label="/bin/sh -c chmod +x /bootstrap.sh" shape="box"];
  "sha256:b2d6d331f730b5ba6349c02a26292adf24f12a09c39725e8533a64cef3c7abb7" [label="sha256:b2d6d331f730b5ba6349c02a26292adf24f12a09c39725e8533a64cef3c7abb7" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:aedc25f79ee300c89a3ecfc0e950d768f25293b1ae58c59ff0c3f1c65d4518c9" [label=""];
  "sha256:aedc25f79ee300c89a3ecfc0e950d768f25293b1ae58c59ff0c3f1c65d4518c9" -> "sha256:ec529512a2bfbfe8108600df291cccf1321ee3bea9c53c368703301d565001fb" [label=""];
  "sha256:ec529512a2bfbfe8108600df291cccf1321ee3bea9c53c368703301d565001fb" -> "sha256:d0f18585b848edef8369a235a3a5d62575c781e6ee4e7dab714f9a96b841a81d" [label=""];
  "sha256:d0f18585b848edef8369a235a3a5d62575c781e6ee4e7dab714f9a96b841a81d" -> "sha256:f46a7ef55f625e3dcfb1cbd1d64e9f100e583f29bde4f516f2d22b13ed984d8b" [label=""];
  "sha256:f46a7ef55f625e3dcfb1cbd1d64e9f100e583f29bde4f516f2d22b13ed984d8b" -> "sha256:64d22c9b62fe7151ba34dea18971cb8701102d31fb4186c13e38548b0b0e4621" [label=""];
  "sha256:bb61be1dde993e27ae06846cf0bc51aec1d234dc28691ac64281db8b05bed30e" -> "sha256:64d22c9b62fe7151ba34dea18971cb8701102d31fb4186c13e38548b0b0e4621" [label=""];
  "sha256:64d22c9b62fe7151ba34dea18971cb8701102d31fb4186c13e38548b0b0e4621" -> "sha256:c734850379f7243586dc92fabfcbb538610c43cca72f840bd738de6f1369ff2b" [label=""];
  "sha256:c734850379f7243586dc92fabfcbb538610c43cca72f840bd738de6f1369ff2b" -> "sha256:b2d6d331f730b5ba6349c02a26292adf24f12a09c39725e8533a64cef3c7abb7" [label=""];
}

