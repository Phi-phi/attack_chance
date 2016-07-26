import React, { Component } from 'react'
import Tables from '../components/Tables'
import { connect } from 'react-redux'

const mapStateToProps = (state) => {
  return state
}

class App extends Component {
  render() {
    return(
      <Tables name="Kazuaki"/>
    )
  }
}

export default connect(mapStateToProps)(App)
