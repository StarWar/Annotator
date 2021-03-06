# Annotator
  [Heroku](https://annotator-aa.herokuapp.com/)

  [Trello](https://trello.com/b/QmsORFAZ/annotator)
## Minimum Viable Product

Annotator is a lyric annotation web application inspired by Genius. It is built on a Ruby on Rails backend with a React/Redux frontend.
By the end of week 9, this app will, at minimum, meet the following criteria.

- [ ] Hosting on Heroku
- [ ] Account creation and login, as well as demo account login
- [ ] Songs
- [ ] Annotations
- [ ] Voting
- [ ] Search
- [ ] Production ReadMe

## Design Docs
* [Components](./components.md)
* [Wireframes](./wireframes)
* [Sample State](./sample_state.md)
* [API-Endpoints](./api_endpoints.md)
* [DB Schema](./schema.md)


## Development Timeline
### Phase 1: Backend setup and Front End User Authentication (2 Days)
**Objective:** Create a functioning rails backend, as well as a front end user authentication system


### Phase 2: Song Model, API, and Components (1 Days)
**Objective:** Create a song model that can be created/edited/updated/destroyed/ through the API.
Users should be able to see a list of songs they have added.

### Phase 3: Annotation Model, API, and Components (2 Days)
**Objective** Create an annotation model that can be created/edited/updated/destroyed/ through the API.
Users should be able to see a list of annotations they have created.

### Phase 4: Implement Annotations in Songs (1 days)
**Objectives** Users can highlight a section of text to create a new annotation (if one does not already exist).
Annotations appear only when clicked.  Annotations can be upvoted/downvoted.

### Phase 5: Implement Annotation Comment Model and API (1 day)
**Objectives** User can create/update/edit/destroy comments on Annotations.

### Phase 6: Voting (1 Day)
**Objectives** Users are able to vote on annotations, with upvotes or downvotes.

### Phase 7: Search (1 Day)
**Objectives** Users are able to search for specific songs and be taken to their lyric page.


### Bonus Features
- [ ] Sort songs on homepage by number of views (hot songs).
- [ ] Add user rankings based on their total annotation upvote count.
- [ ] Refactor: Create new model, api, and components for Artists.
- [ ] Tags: Allow users to add tags to songs and filter by the tags.
