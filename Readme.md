docker image for | build status
---------------- | ------------
test             | [![Docker Repository on Quay](https://quay.io/repository/cyang_el/python-nix-poetry-test-env-docker/status "Docker Repository on Quay")](https://quay.io/repository/cyang_el/python-nix-poetry-test-env-docker)
run              | [![Docker Repository on Quay](https://quay.io/repository/cyang_el/python-nix-poetry-project-template/status "Docker Repository on Quay")](https://quay.io/repository/cyang_el/python-nix-poetry-project-template) 

# This template project provides 3 ways to install, run, and test.

Python dependencies are managed using [poetry](https://python-poetry.org/).

## Installing [poetry](https://python-poetry.org/) locally

**Requires [curl](https://curl.se/)**

### To run
```sh
> make run
```

### To test
```sh
> make test
```

## Installing [poetry](https://python-poetry.org/) with [nix package manager](https://nixos.org/)

### Set up nix
```sh
> nix-shell --command "poetry install"
```

### To run under *nix-shell*
```sh
> nix-shell
> make nix-run
```

### To test under *nix-shell*
```sh
> nix-shell
> make nix-test
```

## Using inside a docker container

We are using docker-compose to run individual containers here, but *docker run* can also be used on individual *Dockerfile*s.

### To run
```sh
> docker-compose run app
```

### To test
```sh
> docker-compose run test
```

