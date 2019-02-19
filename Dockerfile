FROM python:3-alpine

RUN apk add --no-cache bash

RUN pip install pep8
RUN pip install flake8
RUN pip install pylint
RUN pip install bandit

CMD ["/bin/bash"]
