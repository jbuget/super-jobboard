# Super JobBoard

This is an example of a full-stack application with [Express](http://expressjs.com/) as main back-end technology and [Vue.js](https://vuejs.org) as front-end one's, automatically deployed on [Heroku](http://super-jobboard-staging.herokuapp.com) via [CircleCI](https://circleci.com/gh/jbuget/super-jobboard).
 
The 2 applications were generated thanks to the corresponding generator:

- [express-generator](http://expressjs.com/fr/starter/generator.html) for the Express API
- [vue-cli](https://github.com/vuejs/vue-cli) for the Vue.js app

## Getting started

``` bash
# get project sources
git clone git@github.com:jbuget/super-jobboard.git
cd super-jobboard

# install dependencies
npm install

# run tests
npm test

# build Vue.js  client for production with minification
npm run build

# start the application
npm start
```


## Project structure

```
client                   → Vue.js application sources
 └ build                 → 
 └ config                → 
 └ dist                  → Generated bundle files
 └ src                   → 
    └ assets             → 
       └ stylesheets     → CSS files
       └ javascripts     → Javascript files
       └ images          → Image files
    └ components         → 
    └ router             → 
    └ App.vue            → 
    └ main.js            → 
 └ static                → 
 └ test                  → 
    └ e2e                → E2E tests based on Nigthwatch framework
    └ unit               → Unit tests based on Mocha
 └ .babelrc              → Babel configuration file
 └ .eslintignore         → 
 └ .eslintrc.js          → ESLint configuration file 
 └ .postcssrc.js         → 
 └ index.html            → 
 └ package.json          → Client app build script
server                   → Express API sources
 └ bin                   → 
    └ www                → 
 └ src                   → 
    └ lib                → 
    └ models             → Application business layer
    └ routes             → Application routes
 └ test                  → Test sources
 └ app.js                → Express server definition
 └ package.json          → Server app build script
.editorconfig            → EditorConfig configuration file 
.gitignore               → Git configuration file for ignored files
circle.yml               → CircleCI configuration file
package.json             → Application build script
README.md                → 
```

## Server


## Client

## Secured API

The project implements a little layer of security thanks to JSON Web Token (JWT) specification.

There are 3 routes :

- /token ()open route)
- /api/protected (protected route)
- /api/users (protected route)

The protected routes require the header "Authorization some_generated_jwt_token_value" in the request.


