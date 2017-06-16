# Colorspiration. (Backend Rails API)
> An app for finding the dominant colors of an image

### Technologies used
- Ruby, Rails API, Heroku

## Project Links

- Client GitHub Repository: https://github.com/nriser/ember-capstone
- Client Deployed: https://nriser.github.io/ember-capstone/
- API GitHub Repository: https://github.com/nriser/colorpal-api
- API Deployed: https://colorpal.herokuapp.com/

## Build Setup

To install dependencies, run:
```
bundle install

```

## ERD

- One to many
  - A user has many palettes (with four colors)
  - A palette belongs a user.

(user)-|---<(palette)


## General Approach

Since I knew that I would implementing a frontend framework (for the first time) would be tough, I decided to stick with a simple ERD.

Referring back to my wireframes and user stories guided me in building the backend.

I implement use of a 3rd party API (ColorTag) by making ajax calls from client side. I am considering using another 3rd party API (Impalette) instead, which I may try to implement it in the backend insetad of the frontend due to CORS related issues.

## Challenges and Unsolved Problems

I had challenges finding a way to not allow users view the /palettes/create and
palettes/id/edit pages (routes). In order to provide an error message and
redirect to the sign-in page like, I hit the backend API in the Ember's router
model for the corresponding route so that it triggers the error action that
then provides an error message and performs the redirect.


## API Routes

### Authentication

#### Users
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

- post '/sign-up' => 'users#signup'
- post '/sign-in' => 'users#signin'
- delete '/sign-out/:id' => 'users#signout'
- patch '/change-password/:id' => 'users#changepw'

#### Palettes
| Verb   | URI Pattern      | Controller#Action      |
|--------|------------------|------------------------|
| GET    | `/palettes`      | palettes#index       |
| POST   | `/palettes`      | palettes#create      |
| PATCH  | `/palettes/:id`  | palettes#update      |
| DELETE | `/palettes/:id`  | palettes#destroy     |

- get '/palettes/' => 'palettes#index'
- post '/palettes/' => 'palettes#create'
- patch '/palettes/:id' => 'palettes#update'
- delete '/palettes/:id' => 'palettes#destroy'
