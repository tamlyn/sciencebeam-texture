# ScienceBeam Texture

An experimental demo app to convert PDF into [DAR JATS](https://github.com/substance/dar), that is understood by [Texture](https://github.com/substance/texture).

## Status

Watch the space

## Pre-requisites

* [Docker](https://www.docker.com/)

## Setup

### Create ScienceBeam Docker Network

```bash
./docker-network.sh
```

Effect:

* Creates the docker network _sciencebeam-texture_.

### Run Texture Container

```bash
./texture.sh
```

Effect:

* Builds and starts Texture docker container
* Texture will be available on [port 4000](http://localhost:4000/).

### Run GROBID container

```bash
./grobid-service.sh
```

Effect:

* [GROBID](grobid.readthedocs.io) will be available on [port 8070](http://localhost:8070/).
* Container will have name _grobid_ and be available on _sciencebeam-texture_ docker network.

### Build ScienceBeam Container

```bash
./sciencebeam-build.sh
```

Effect:

* Builds _elifesciences/sciencebeam_ docker container.

### Convert Sample PDF using ScienceBeam Container

```bash
./sciencebeam-convert.sh
```

Effect:

* Downloads sample PDF
* Converts PDF by running the _elifesciences/sciencebeam_ container (output is still TEI).

### Show results in Texture

TODO
