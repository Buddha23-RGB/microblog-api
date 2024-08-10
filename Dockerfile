FROM python:3.12-slim

WORKDIR /app

ENV FLASK_APP microblog.py
ENV FLASK_ENV production

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY api api
COPY migrations migrations
COPY alembic.ini alembic.ini
COPY microblog.py config.py boot.sh ./

# Ensure boot.sh is executable
RUN chmod +x boot.sh

EXPOSE 5000

CMD ["./boot.sh"]print()print()print()print()