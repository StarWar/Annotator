import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import TracksIndexContainer from './tracks_index/tracks_index_container';
import TrackFormContainer from './track_form/track_form_container';
import TrackShowContainer from './track_show/track_show_container';

import App from './app';


const Root = ({ store }) => (
  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App }>
        <IndexRoute component={TracksIndexContainer} />
        <Route path="/new_song" component={TrackFormContainer} />
        <Route path="/edit_song/:songId" component={TrackFormContainer} />
        <Route path="/songs/:songId" component={TrackShowContainer} />
      </Route>
    </Router>
  </Provider>
);

export default Root;
