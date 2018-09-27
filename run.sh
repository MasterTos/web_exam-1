#python manage.py runserver 0.0.0.0:8000
python manage.py collectstatic --noinput
python manage.py migrate --noinput
uwsgi --http :8000 --chdir /code -w sciproject.wsgi