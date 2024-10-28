FROM python:3-alpine

# Development Tools
RUN apk add --no-cache bash make gcc musl-dev libffi-dev openssl-dev

# Python Packages
RUN pip install --upgrade pip && \
    pip install --upgrade setuptools wheel twine build && \
    pip install --upgrade pep8 flake8 pylint bandit mypy && \
    pip install --upgrade sphinx sphinx_rtd_theme

CMD ["/bin/bash"]
