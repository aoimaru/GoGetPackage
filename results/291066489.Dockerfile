[app/sources/291066489.Dockerfile]
digraph {
  "sha256:e5636f42daeb8c2496c49351e635bf8e0f5e57b22f367204303730732208a205" [label="docker-image://docker.io/pytorch/pytorch:0.4-cuda9-cudnn7-devel@sha256:3f5cd953abc8dae3bdb12d1686982f88f5445ac3f1a325398e834201d0f3580e" shape="ellipse"];
  "sha256:896adbb8a6d8756fc1604ca33ecbbee6cb96d215b95e3929c70ab2dc05470605" [label="local://context" shape="ellipse"];
  "sha256:2b1c1ff5e1cd4b44436efbb2d7ff5a25b84bc9d645bc48b98608ebff3475b08a" [label="copy{src=/, dest=/workspace/neuralbabytalk}" shape="note"];
  "sha256:306f187ec129ec0e442edd12e231ac6fd6c1340756ecc92447d98476237b522e" [label="/bin/sh -c apt-get update &&     apt-get install -y     ant     ca-certificates-java     nano     openjdk-8-jdk     python2.7     unzip     wget &&     apt-get clean" shape="box"];
  "sha256:85356852f62f8720aee5fa6e3b590af79e1b41451cab040d12fcffe1e59daba7" [label="/bin/sh -c update-ca-certificates -f && export JAVA_HOME" shape="box"];
  "sha256:ff555cfe6227ba3c4af878dca93568c6b39719c29ac482f6a7af2125edff9c62" [label="/bin/sh -c pip install Cython && pip install h5py     matplotlib     nltk     numpy     pycocotools     scikit-image     stanfordcorenlp     tensorflow     torchtext     tqdm && python -c \"import nltk; nltk.download('punkt')\"" shape="box"];
  "sha256:2e07da4e4dcf80c31c192bd53984f93a3ccbe7c81a9e4c5cfc981f6fc7a2acbd" [label="/bin/sh -c mkdir /workspace/neuralbabytalk/data/imagenet_weights &&     cd /workspace/neuralbabytalk/data/imagenet_weights &&     wget --quiet https://www.dropbox.com/sh/67fc8n6ddo3qp47/AAACkO4QntI0RPvYic5voWHFa/resnet101.pth" shape="box"];
  "sha256:979a8cada664e43153a6e72896eda51dbe26204dfbb8230d3c317d240568eee8" [label="/bin/sh -c cd /workspace/neuralbabytalk/data &&     wget --quiet http://cs.stanford.edu/people/karpathy/deepimagesent/caption_datasets.zip &&     unzip caption_datasets.zip &&     mv dataset_coco.json coco/ &&     mv dataset_flickr30k.json flickr30k/ &&     rm caption_datasets.zip dataset_flickr8k.json" shape="box"];
  "sha256:eac1dc6c10afde1d785051151847f7481000a18c43b31acd08b3274aea073ac0" [label="/bin/sh -c cd /workspace/neuralbabytalk/prepro &&     wget --quiet https://nlp.stanford.edu/software/stanford-corenlp-full-2017-06-09.zip &&     unzip stanford-corenlp-full-2017-06-09.zip &&     rm stanford-corenlp-full-2017-06-09.zip" shape="box"];
  "sha256:b674fa6dad19e71c567b366c347e6ea3e88250b465d4d130b60dbe46afff5b7e" [label="/bin/sh -c cd /workspace/neuralbabytalk/tools/coco-caption &&     sh get_stanford_models.sh" shape="box"];
  "sha256:b03cde697e08de05e5750d12485828df6c235b9df2ab0aedc6281ae8299c90ef" [label="/bin/sh -c cd /workspace/neuralbabytalk/data/coco &&     wget --quiet https://www.dropbox.com/s/2gzo4ops5gbjx5h/coco_detection.h5.tar.gz &&     tar -xzvf coco_detection.h5.tar.gz &&     rm coco_detection.h5.tar.gz" shape="box"];
  "sha256:dafe5738ed167fc6527ae9b27a2104fa2949d26b91262ec6bd760773dae53fe4" [label="/bin/sh -c mkdir -p /workspace/neuralbabytalk/save &&     cd /workspace/neuralbabytalk/save &&     wget --quiet https://www.dropbox.com/s/6buajkxm9oed1jp/coco_nbt_1024.tar.gz &&     tar -xzvf coco_nbt_1024.tar.gz &&     rm coco_nbt_1024.tar.gz" shape="box"];
  "sha256:63ed571b3c116f99c082de922982b8a149aeec23dc1beaeaee25d344b702a651" [label="mkdir{path=/workspace/neuralbabytalk}" shape="note"];
  "sha256:1f1d3e050f6856ed674bc8a610ce45e0984f72810bb7f62d69b06395a8bb1d69" [label="/bin/sh -c python prepro/prepro_dic_coco.py     --input_json data/coco/dataset_coco.json     --split normal     --output_dic_json data/coco/dic_coco.json     --output_cap_json data/coco/cap_coco.json &&     python prepro/prepro_dic_coco.py     --input_json data/coco/dataset_coco.json     --split robust     --output_dic_json data/robust_coco/dic_coco.json     --output_cap_json data/robust_coco/cap_coco.json &&     python prepro/prepro_dic_coco.py     --input_json data/coco/dataset_coco.json     --split noc     --output_dic_json data/noc_coco/dic_coco.json     --output_cap_json data/noc_coco/cap_coco.json" shape="box"];
  "sha256:e0ab3a2a6470c2e160211e2db803d00c53bd4ca07883b53c29c45fa391e90322" [label="sha256:e0ab3a2a6470c2e160211e2db803d00c53bd4ca07883b53c29c45fa391e90322" shape="plaintext"];
  "sha256:e5636f42daeb8c2496c49351e635bf8e0f5e57b22f367204303730732208a205" -> "sha256:2b1c1ff5e1cd4b44436efbb2d7ff5a25b84bc9d645bc48b98608ebff3475b08a" [label=""];
  "sha256:896adbb8a6d8756fc1604ca33ecbbee6cb96d215b95e3929c70ab2dc05470605" -> "sha256:2b1c1ff5e1cd4b44436efbb2d7ff5a25b84bc9d645bc48b98608ebff3475b08a" [label=""];
  "sha256:2b1c1ff5e1cd4b44436efbb2d7ff5a25b84bc9d645bc48b98608ebff3475b08a" -> "sha256:306f187ec129ec0e442edd12e231ac6fd6c1340756ecc92447d98476237b522e" [label=""];
  "sha256:306f187ec129ec0e442edd12e231ac6fd6c1340756ecc92447d98476237b522e" -> "sha256:85356852f62f8720aee5fa6e3b590af79e1b41451cab040d12fcffe1e59daba7" [label=""];
  "sha256:85356852f62f8720aee5fa6e3b590af79e1b41451cab040d12fcffe1e59daba7" -> "sha256:ff555cfe6227ba3c4af878dca93568c6b39719c29ac482f6a7af2125edff9c62" [label=""];
  "sha256:ff555cfe6227ba3c4af878dca93568c6b39719c29ac482f6a7af2125edff9c62" -> "sha256:2e07da4e4dcf80c31c192bd53984f93a3ccbe7c81a9e4c5cfc981f6fc7a2acbd" [label=""];
  "sha256:2e07da4e4dcf80c31c192bd53984f93a3ccbe7c81a9e4c5cfc981f6fc7a2acbd" -> "sha256:979a8cada664e43153a6e72896eda51dbe26204dfbb8230d3c317d240568eee8" [label=""];
  "sha256:979a8cada664e43153a6e72896eda51dbe26204dfbb8230d3c317d240568eee8" -> "sha256:eac1dc6c10afde1d785051151847f7481000a18c43b31acd08b3274aea073ac0" [label=""];
  "sha256:eac1dc6c10afde1d785051151847f7481000a18c43b31acd08b3274aea073ac0" -> "sha256:b674fa6dad19e71c567b366c347e6ea3e88250b465d4d130b60dbe46afff5b7e" [label=""];
  "sha256:b674fa6dad19e71c567b366c347e6ea3e88250b465d4d130b60dbe46afff5b7e" -> "sha256:b03cde697e08de05e5750d12485828df6c235b9df2ab0aedc6281ae8299c90ef" [label=""];
  "sha256:b03cde697e08de05e5750d12485828df6c235b9df2ab0aedc6281ae8299c90ef" -> "sha256:dafe5738ed167fc6527ae9b27a2104fa2949d26b91262ec6bd760773dae53fe4" [label=""];
  "sha256:dafe5738ed167fc6527ae9b27a2104fa2949d26b91262ec6bd760773dae53fe4" -> "sha256:63ed571b3c116f99c082de922982b8a149aeec23dc1beaeaee25d344b702a651" [label=""];
  "sha256:63ed571b3c116f99c082de922982b8a149aeec23dc1beaeaee25d344b702a651" -> "sha256:1f1d3e050f6856ed674bc8a610ce45e0984f72810bb7f62d69b06395a8bb1d69" [label=""];
  "sha256:1f1d3e050f6856ed674bc8a610ce45e0984f72810bb7f62d69b06395a8bb1d69" -> "sha256:e0ab3a2a6470c2e160211e2db803d00c53bd4ca07883b53c29c45fa391e90322" [label=""];
}

