# Finiata Coding Task

### Context:

The goal of this task is to get a glimpse of your code style, how you think
through a problem and a general level of your experience. You should aim to
spend about 2 hours working on this.

This is a Sinatra application. Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort. The core of this has already been set up for you. Please see [getting started](#getting-started) for quick-start instructions. If you want to learn more about Sinatra, you can find further information [here](http://sinatrarb.com/).

### Instructions:

Clone this repository and push the results to your own github accout. When
you're finished, please send us a link to the repo.

When a user visits the index page of this application, use the [pokemon API](https://pokeapi.co/docs/v2#pokemon),
to fetch a random Pokemon and display the following three pieces of data:

* Name
* Image
* API Url to get more information about this Pokemon

**Hint: For the image, you can use the following URL once you've pulled the name:**
> https://img.pokemondb.net/artwork/large/xxx.jpg

How you retrieve this information is up to you.  We encourage you to think about design.

**For bonus points:** Instead of just showing the *API URL* to get more information about this Pokemon, use the API to show some additional stats
about the currently displayed Pokemon, such as height, weight, species, abilities, etc. This is optional and just a suggestion of a direction to go if you finish early.

#### As this is a backend task, having a fancy frontend is not necessary as long as it is readable and completes the requirements. Clean backend code is much more important.

### Getting Started:

1. Run `bundle` to install default gemset
2. Run the server with `shotgun config.ru` and open `localhost:9393` in your
   browser

### Tests:

A simple sanity check test exists in spec/app_spec.rb. You can run the full test
suite (all the tests within the spec directory) with `rake` from your terminal.

**For bonus points:** Additional tests as you add library files are encouraged, but not mandatory. When you're testing, think about what is important to test, and what is not. (Hint: The Sinatra framework's functionality is probably covered by Sinatra's own [tests](https://github.com/sinatra/sinatra/tree/master/test)...)
