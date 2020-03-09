MAKEFLAGS += -B

frontend:
	cd frontend; \
	rm -rf node_modules; \
	yarn install; \
	yarn start

backend:
	cd api; \
	rm -rf env; \
	rm -rf db.sqlite3; \
	pip3 install virtualenv; \
	virtualenv --no-site-packages env; \
	source env/bin/activate; \
	pip install -r requirements.txt; \
	./manage.py migrate; \
	echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('superuser', 'superuser@demo.com', 'demo')" | python manage.py shell; \
	./manage.py runserver 9090

e2e:
	cd integration_tests; \
	yarn open
