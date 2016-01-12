# Docker Push

[Docker](http://www.docker.com/) utility to automatically [squash](https://github.com/jwilder/docker-squash) 
images before pushing.

This utility does nothing amazing, just what I normally need to do when pushing my images. So 
the tool is just something that saves me time in a very common workflow I used to manually do.
If you find it useful, great; if not, you can live without knowing it even exists.


## Requirements

This script requires to have previously installed both [Docker](https://docs.docker.com/engine/installation/) 
and [docker-squash](https://github.com/jwilder/docker-squash#installation) in your system.


## Installation

    wget https://github.com/wikier/docker-push/archive/0.1.tar.gz -O docker-push-0.1.tar.gz
    tar -zxf docker-push-0.1.tar.gz
    sudo cp docker-push-0.1/docker-push.sh /usr/local/bin/docker-push

## Development

    git clone git@github.com:wikier/docker-push.git
    cd docker-push
    ...
    sudo cp docker-push.sh /usr/local/bin/docker-push

PRs are welcomed :wink:


## License

Available under [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).


## Acknowledgements

This utility has been developed in the context of [SSIX](http://ssix-project.eu/), a research project partly 
funded by the European Union's Horizon 2020, Objective: Big data and Open Data Innovation and take-up, under 
grant agreement No 645425.

