FROM python:3.9
ARG CACHEBUST=1
RUN echo "$CACHEBUST"
WORKDIR /mlapp
COPY . .
WORKDIR /mlapp/scania_classification
RUN pip3 install --upgrade pip
RUN pip install -r scania.requirements.txt
CMD [ "python", "-u", "scania.api.py" ]