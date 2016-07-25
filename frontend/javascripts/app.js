import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';

class Greet extends React.Component {
  render() {
    return (
      <div>Hello, {this.props.name}.</div>
    );
  }
}

$(() => {
  console.log(document.getElementById('content'));
  ReactDOM.render(
    <Greet name="webpack" />,
    document.getElementById('content')
  );
})
