import React from 'react';

const TrackIndexItem = ({ track }) => (
  <section className = "index-item">
    <Link to={`/songs/${track.id}`}>
    <h1>{track.id}</h1>
    <h1>{track.title}</h1>
    <h1>{track.artist}</h1>
    </Link>
  </section>
);

export default TrackIndexItem;