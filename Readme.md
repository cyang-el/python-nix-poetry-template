docker image for | build status
---------------- | ------------
test             | [![Docker Repository on Quay](https://quay.io/repository/cyang_el/python-nix-poetry-test-env-docker/status "Docker Repository on Quay")](https://quay.io/repository/cyang_el/python-nix-poetry-test-env-docker)
run              | [![Docker Repository on Quay](https://quay.io/repository/cyang_el/python-nix-poetry-project-template/status "Docker Repository on Quay")](https://quay.io/repository/cyang_el/python-nix-poetry-project-template)

# This template project provides **3 ways** to install, run, and test.

Python dependencies are managed using [poetry](https://python-poetry.org/).

## 1. Installing [poetry](https://python-poetry.org/) locally

**Requires**
* [curl](https://curl.se/)
* [bash](https://www.gnu.org/software/bash/)
* [GNU Make](https://www.gnu.org/software/make/)
* Python 3.8+

### To run
```sh
> make run
```

### To test
```sh
> make test
```

## 2. Installing [poetry](https://python-poetry.org/) with [nix package manager](https://nixos.org/)

### Set up nix-shell
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

## 3. Using inside a docker container

We are using docker-compose to run individual containers here, but *docker run* can also be used on individual *Dockerfile*s.

### To run
```sh
> docker-compose run app
```

### To test
```sh
> docker-compose run test
```

# Dev tools

This project uses:

* [mypy](http://mypy-lang.org/)
* [flake8](https://flake8.pycqa.org/en/latest/)

with **[pre-commit](https://pre-commit.com/)** as hook for static checking.

These can be installed as global tools, or they are also already available under project *nix-shell*.

After installing, we can setup the pre-commit hooks with
```sh
> pre-commit install
```
