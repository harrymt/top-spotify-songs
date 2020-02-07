MAKEFLAGS += -B

frontend:
	cd frontend && rm -rf node_modules
	cd frontend && yarn install
	cd frontend && yarn start

backend:
	cd api && rm -rf env
	cd api && rm -rf db.sqlite3
	cd api && pip3 install virtualenv
	cd api && virtualenv --no-site-packages env
	cd api && source env/bin/activate
	cd api && pip install -r requirements.txt
	cd api && ./manage.py migrate
	cd api && echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('superuser', 'superuser@demo.com', 'demo')" | python manage.py shell
	cd api && ./manage.py runserver 9090
