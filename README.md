# Deploying a Dockerized Flask Application to Heroku

**Directory**

```bash
-> Directory
/root - app/
|-- server
|   |-- app.py
|-- .env
|-- .gitignore
|-- docker-compose.yml
|-- Dockerfile
|-- heroku.yml
|-- README.md
|-- requirements.txt
```

**Login Heroku**
~~~~
$ heroku login
~~~~


**Build container & run for a service testing**

This allows you to test your app locally. It’s hosted on http://localhost:85. 
~~~~
$ docker compose up
~~~~

**Create your application on Heroku**
~~~~
$ heroku create [your-app]
~~~~


**Deploy Application to Heroku**
~~~~
$ heroku container:push web -a [your-app]
~~~~

~~~~
$ heroku container:relese web -a [your-app]
~~~~

**Now success to deployment**

Check your url: [https://your-app.herokuapp.com]
~~~~
$ heroku open -a [your-app]
~~~~
