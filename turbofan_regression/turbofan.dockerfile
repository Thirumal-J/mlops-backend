FROM python:3.9
ARG CACHEBUST=1
RUN echo "$CACHEBUST"
WORKDIR /mlapp
COPY . .
WORKDIR /mlapp/turbofan_regression
RUN pip3 install --upgrade pip
RUN pip install -r turbofan.requirements.txt
CMD [ "python", "-u", "turbofan.api.py" ]