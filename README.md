# Top Spotify Songs

Dashboard to show data and visualisation about my spotify habits.

Written in Python and Typescript. Using Django (v2), React and GraphQL. 

- Uses [Graphene](http://graphene-python.org/) for the backend
- Uses [Apollo Client](https://www.apollographql.com/docs/react/) for the frontend

## Setup

### Backend

Edit `api/myapp/settings.py` if you want to setup a database connection other than the default sqlite.

```bash
cd api
pip install -r requirements.txt
./manage.py migrate
./manage.py createsuperuser
./manage.py runserver 9090
```

### Frontend

```bash
cd frontend
yarn install
yarn start
```

After install, go to http://localhost:3000 and try logging in with the user you created.
