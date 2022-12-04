FROM python:3-alpine

# Shell Tools
RUN apk add --no-cache bash make

# Development Tools
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev

# Packaging Tools
RUN pip install --upgrade setuptools wheel twine

# Code Analysis Tools
RUN pip install --upgrade pep8 flake8 pylint bandit mypy

# Documentation Tools
RUN pip install --upgrade sphinx sphinx_rtd_theme

CMD ["/bin/bash"]
