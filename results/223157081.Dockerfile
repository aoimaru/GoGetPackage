[app/sources/223157081.Dockerfile]
digraph {
  "sha256:fe85f2331948b1030b6060049e60af5836e0726c3a3ffc2b92594e0fa5a43649" [label="docker-image://docker.io/kaixhin/cuda-torch-deps:latest" shape="ellipse"];
  "sha256:d8ffa07be408575ef2b52105cff9644da61457c9c6eaccbaacaf74c76b38950b" [label="/bin/sh -c cd /root/torch &&   ./install.sh" shape="box"];
  "sha256:2181fe3d7916fb86a50ad1704045fdf150eaf4c6b7cf745eac62273cbe525d3e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:42f0e99489fc4e435788287e90c7d46988b8043b5b5a6113b66cfb2d9f4cfdfc" [label="/bin/sh -c apt-get install -y python-dev libhdf5-serial-dev  libprotobuf-dev protobuf-compiler" shape="box"];
  "sha256:ae76ce0916befbc986457025466c6f6c7a25e5e30b9afa212eae2543d248102e" [label="/bin/sh -c pip install numpy==1.11.1 pytest" shape="box"];
  "sha256:5c8931c91b25072c5f5a7d6ede9484781183d7edcc2ef680c4ad061516da9bed" [label="/bin/sh -c git clone https://github.com/hughperkins/pytorch.git && cd pytorch && ./build.sh" shape="box"];
  "sha256:1016a7e2eedd4a642c10f5364f6203445e536cf6ef521859891b60c5a1d0aa05" [label="/bin/sh -c git clone https://github.com/DESHRAJ/grad-cam.git" shape="box"];
  "sha256:1e31a5977bbda7308215b9e142edab1297f9c8793004d73b7c80a9ef60edad3a" [label="/bin/sh -c cd grad-cam && git submodule init && git submodule update" shape="box"];
  "sha256:c6603c5404f8ca9b19a30f754a2a33318f6f6fa39bad38fe270f0675262d2369" [label="/bin/sh -c cd grad-cam && sed -i -e \"s/local utils = require 'misc.utils'/local utils = require 'neuraltalk2.misc.utils'/g\" neuraltalk2/misc/LanguageModel.lua" shape="box"];
  "sha256:00be6da2135a58242229e7a21a3026ce745e9e83cf81846fdda9df2d912e7fd9" [label="/bin/sh -c cd grad-cam && sed -i -e \"s/local net_utils = require 'misc.net_utils'/local net_utils = require 'neuraltalk2.misc.net_utils'/g\" neuraltalk2/misc/LanguageModel.lua" shape="box"];
  "sha256:60a7828e6de2edeab0951d74cd82b19d484373a2fc2281ae56f407b68451d5c1" [label="/bin/sh -c cd grad-cam && sed -i -e \"s/local LSTM = require 'misc.LSTM'/local LSTM = require 'neuraltalk2.misc.LSTM'/g\" neuraltalk2/misc/LanguageModel.lua" shape="box"];
  "sha256:21eac83ff0c6c04dabf403435b1363022e803b4826cd96a8de970bc61cb3c630" [label="/bin/sh -c cd grad-cam && pip install -r requirements.txt" shape="box"];
  "sha256:fea59903d5bd98a372434e5240e93fede30da5d96e394a78b78bb36f524de1ca" [label="/bin/sh -c python -m nltk.downloader all" shape="box"];
  "sha256:252b7f4f899bf2c849405f138066596d2ad61e01ce7e637b843f78c18156fa67" [label="/bin/sh -c luarocks install loadcaffe" shape="box"];
  "sha256:2179a1b2ad575c2a7511e84fa44f407f84e3bd575f8f527cbefef431617fe7be" [label="/bin/sh -c luarocks install nn" shape="box"];
  "sha256:1cbc3d5c2c2b2e14158dc475728162e286d8ce5c69da69cc4224796e02b5e8c6" [label="/bin/sh -c luarocks install cunn" shape="box"];
  "sha256:725d349c028eab18b489767efac0d76f71e7493aecf046d49488ec6f8a57ce20" [label="/bin/sh -c luarocks install cudnn" shape="box"];
  "sha256:18da9dd3b63b6951e29f8740def95900e35617ae947181b199f17e8c333c7387" [label="/bin/sh -c apt-get install -y unzip wget" shape="box"];
  "sha256:f44c6db354ec779e2b898e83d3361c3926976d3f8e1674ee5e16b5def16d94f4" [label="/bin/sh -c cd grad-cam && bash models/download_models.sh && pwd" shape="box"];
  "sha256:29ca01569b08c86257befc971cd94e99deadd6191570ba51c80c294d63a8b2b2" [label="mkdir{path=/grad-cam}" shape="note"];
  "sha256:f0bf81a7341312d547bf071308341420a6f961f29beb7894a7c1905b9fa0d535" [label="sha256:f0bf81a7341312d547bf071308341420a6f961f29beb7894a7c1905b9fa0d535" shape="plaintext"];
  "sha256:fe85f2331948b1030b6060049e60af5836e0726c3a3ffc2b92594e0fa5a43649" -> "sha256:d8ffa07be408575ef2b52105cff9644da61457c9c6eaccbaacaf74c76b38950b" [label=""];
  "sha256:d8ffa07be408575ef2b52105cff9644da61457c9c6eaccbaacaf74c76b38950b" -> "sha256:2181fe3d7916fb86a50ad1704045fdf150eaf4c6b7cf745eac62273cbe525d3e" [label=""];
  "sha256:2181fe3d7916fb86a50ad1704045fdf150eaf4c6b7cf745eac62273cbe525d3e" -> "sha256:42f0e99489fc4e435788287e90c7d46988b8043b5b5a6113b66cfb2d9f4cfdfc" [label=""];
  "sha256:42f0e99489fc4e435788287e90c7d46988b8043b5b5a6113b66cfb2d9f4cfdfc" -> "sha256:ae76ce0916befbc986457025466c6f6c7a25e5e30b9afa212eae2543d248102e" [label=""];
  "sha256:ae76ce0916befbc986457025466c6f6c7a25e5e30b9afa212eae2543d248102e" -> "sha256:5c8931c91b25072c5f5a7d6ede9484781183d7edcc2ef680c4ad061516da9bed" [label=""];
  "sha256:5c8931c91b25072c5f5a7d6ede9484781183d7edcc2ef680c4ad061516da9bed" -> "sha256:1016a7e2eedd4a642c10f5364f6203445e536cf6ef521859891b60c5a1d0aa05" [label=""];
  "sha256:1016a7e2eedd4a642c10f5364f6203445e536cf6ef521859891b60c5a1d0aa05" -> "sha256:1e31a5977bbda7308215b9e142edab1297f9c8793004d73b7c80a9ef60edad3a" [label=""];
  "sha256:1e31a5977bbda7308215b9e142edab1297f9c8793004d73b7c80a9ef60edad3a" -> "sha256:c6603c5404f8ca9b19a30f754a2a33318f6f6fa39bad38fe270f0675262d2369" [label=""];
  "sha256:c6603c5404f8ca9b19a30f754a2a33318f6f6fa39bad38fe270f0675262d2369" -> "sha256:00be6da2135a58242229e7a21a3026ce745e9e83cf81846fdda9df2d912e7fd9" [label=""];
  "sha256:00be6da2135a58242229e7a21a3026ce745e9e83cf81846fdda9df2d912e7fd9" -> "sha256:60a7828e6de2edeab0951d74cd82b19d484373a2fc2281ae56f407b68451d5c1" [label=""];
  "sha256:60a7828e6de2edeab0951d74cd82b19d484373a2fc2281ae56f407b68451d5c1" -> "sha256:21eac83ff0c6c04dabf403435b1363022e803b4826cd96a8de970bc61cb3c630" [label=""];
  "sha256:21eac83ff0c6c04dabf403435b1363022e803b4826cd96a8de970bc61cb3c630" -> "sha256:fea59903d5bd98a372434e5240e93fede30da5d96e394a78b78bb36f524de1ca" [label=""];
  "sha256:fea59903d5bd98a372434e5240e93fede30da5d96e394a78b78bb36f524de1ca" -> "sha256:252b7f4f899bf2c849405f138066596d2ad61e01ce7e637b843f78c18156fa67" [label=""];
  "sha256:252b7f4f899bf2c849405f138066596d2ad61e01ce7e637b843f78c18156fa67" -> "sha256:2179a1b2ad575c2a7511e84fa44f407f84e3bd575f8f527cbefef431617fe7be" [label=""];
  "sha256:2179a1b2ad575c2a7511e84fa44f407f84e3bd575f8f527cbefef431617fe7be" -> "sha256:1cbc3d5c2c2b2e14158dc475728162e286d8ce5c69da69cc4224796e02b5e8c6" [label=""];
  "sha256:1cbc3d5c2c2b2e14158dc475728162e286d8ce5c69da69cc4224796e02b5e8c6" -> "sha256:725d349c028eab18b489767efac0d76f71e7493aecf046d49488ec6f8a57ce20" [label=""];
  "sha256:725d349c028eab18b489767efac0d76f71e7493aecf046d49488ec6f8a57ce20" -> "sha256:18da9dd3b63b6951e29f8740def95900e35617ae947181b199f17e8c333c7387" [label=""];
  "sha256:18da9dd3b63b6951e29f8740def95900e35617ae947181b199f17e8c333c7387" -> "sha256:f44c6db354ec779e2b898e83d3361c3926976d3f8e1674ee5e16b5def16d94f4" [label=""];
  "sha256:f44c6db354ec779e2b898e83d3361c3926976d3f8e1674ee5e16b5def16d94f4" -> "sha256:29ca01569b08c86257befc971cd94e99deadd6191570ba51c80c294d63a8b2b2" [label=""];
  "sha256:29ca01569b08c86257befc971cd94e99deadd6191570ba51c80c294d63a8b2b2" -> "sha256:f0bf81a7341312d547bf071308341420a6f961f29beb7894a7c1905b9fa0d535" [label=""];
}

