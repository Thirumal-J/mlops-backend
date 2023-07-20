FROM python:3.9
ARG CACHEBUST=1
RUN echo "$CACHEBUST"
WORKDIR /mlapp
COPY . .
WORKDIR /mlapp/core
RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt
CMD [ "python", "-u", "core.api.py" ]