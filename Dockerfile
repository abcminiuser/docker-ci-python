FROM python:3-alpine

RUN apk add --no-cache bash make

RUN pip install pep8 flake8 pylint bandit sphinx sphinx_rtd_theme

CMD ["/bin/bash"]
