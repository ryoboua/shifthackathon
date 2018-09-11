import React, { Component } from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";

import Game from './components/Game'
import Lobby from './components/Lobby'

import "./App.css";

class App extends Component {
  render() {
    return(
      <Router>
        <div>
          <Route path="/start" component={Game}/>
          <Route path="/lobby" component={Lobby}/>
        </div>
      </Router>
    );
  }
}

export default App;