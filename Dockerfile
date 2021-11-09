FROM python:3-alpine
RUN mkdir /simpleapp
WORKDIR /simpleapp
COPY requirements.txt /simpleapp
RUN pip install -r requirements.txt
COPY . /simpleapp
EXPOSE 5000
CMD [ "python", "myproject.py" ]
