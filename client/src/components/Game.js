import React, { Component } from 'react';

import "./Game.css";

export class Game extends Component {
    constructor(props) {
        super(props);
        this.state = {
            num: 1
        };
    }

    handleClick = (event) => {
        console.log();
        this.setState({
            num: Math.floor(Math.random() * 6) + 1
        })
    }

    render() {
        return(
        <div>
            <div>
                <p id="placeholder">
                    {this.state.num}
                </p>
                <button onClick={this.handleClick}>Roll Dice</button>
                <script src="ui.js"></script>
            </div>
        </div>);
    }
}
  
export default Game