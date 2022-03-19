FROM python:alpine
WORKDIR /app
ENV FLASK_APP=app
RUN pip install -U --no-cache-dir Flask
RUN mkdir -p /app/templates
COPY index.html /app/templates/
COPY app.py /app
CMD ["flask", "run", "--host=0.0.0.0"]

