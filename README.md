# Speak

Speak is an Augmentative and Alternative Communication(AAC) application for non-verbal individuals.
Check out the site [here](http://dbc-speak.herokuapp.com/)!

## Description:

We created a free alternative to the sometimes prohibitively expensive Augmentative and Alternative Communication devices that allow nonverbal individuals to express themselves. This non-traditional web app relies on Amazon Polly (a text-to-speech service), click event handling, UX design, and user customizability.

### Cate's Code:

I handled setting up all [models](https://github.com/crauschy/speak/tree/master/app/models) and [associations](https://github.com/crauschy/speak/tree/master/db/migrate). I also was responsible for User Registration and Login, both on the [back end](https://github.com/crauschy/speak/blob/master/app/controllers/users_controller.rb) and the [front](https://github.com/crauschy/speak/tree/master/app/views/users), including a custom Bootstrap [modal](https://github.com/crauschy/speak/tree/master/app/views/modals) form for a more elegant user experience. I also created the drop down menu and logic for the category selection. 

## Tech:

- Ruby on Rails
- PostgreSQL
- Javascript / jQuery
- AJAX
- Bootstrap
- AWS Polly and Cloudinary 

## Developers:

- [Chris Friedman](https://github.com/khristoph)
- [Vinnie Lu](https://github.com/VinnieLu)
- [Gaby Ramirez](https://github.com/GabrielaSRamirez94)
- [Cate Rauschenberger](https://github.com/crauschy)
