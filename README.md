# Super JobBoard

This is an example of a full-stack application with Express as main back-end technology and Vue.js as front-end one's, automatically deployed on Heroku via CircleCI.
 
The 2 applications were generated thanks to the corresponding generator:

- express-generator for the Express API
- vue-cli for the Vue.js app

## Project structure

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
    └ e2e                → 
    └ unit               → 
 └ .babelrc              → 
 └ .editorconfig         → 
 └ .eslintignore         → 
 └ .eslintrc.js          → 
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
 └ test                  → 
 └ app.js                → 
 └ package.json          → Server app build script
.gitignore               → 
circle.yml               → 
package.json             → Application build script
README.md                → 

## Server

## Client

