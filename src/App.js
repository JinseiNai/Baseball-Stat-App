import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';
import HomePage from "./routes/home-route";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      
    }
  }

  render() {
    return (
      <Router>
        <Switch>
          <div>
            <Route exact path="/" component={HomePage} />
          </div>
        </Switch>
      </Router>
    )
  }
}

export default App;
