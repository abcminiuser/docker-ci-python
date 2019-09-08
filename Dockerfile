FROM python:3-alpine

# Shell Tools
RUN apk add --no-cache bash make

# Development tools
RUN apk add --no-cache gcc musl-dev

# Packaging Tools
RUN pip install --upgrade setuptools twine

# Code Analysis Tools
RUN pip install --upgrade pep8 flake8 pylint bandit

# Documentation Tools
RUN pip install --upgrade sphinx sphinx_rtd_theme m2r

CMD ["/bin/bash"]
