FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENV VIRTUAL_ENV=$HOMEDIR/$VENV

RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /code

COPY ./requirements.txt .

RUN pip3 install --upgrade pip --no-cache-dir \
    && pip3 install --no-cache-dir -r requirements.txt

COPY . /code/

ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV PYTHONPATH="$PYTHONPATH:/"

#ENTRYPOINT [ "python3", "-u", "path/to/file/to/run" ]