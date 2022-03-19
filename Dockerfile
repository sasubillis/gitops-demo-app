FROM python:alpine
WORKDIR /app
RUN mkdir -p /app/templates
ENV FLASK_APP=app
RUN pip install -U --no-cache-dir Flask
COPY index.html /app/templates/
COPY app.py /app
CMD ["flask", "run", "--host=0.0.0.0"]

