import React, { useState, useEffect } from "react";
import ReactDOM from "react-dom";
import { apiUrl } from "./configs/apiConfig";
import axios from 'axios';

function App() {
    const [data, setData] = useState();
    const [error, setError] = useState();
    const [isLoading, setIsLoading] = useState(true);
  
    useEffect(() => {
      axios.get(`${apiUrl}/products`)
      .then(function (response) {      
        setData(response.data)
      })
      .catch(function (error) {
        setError(error.message);
      }).finally(() => setIsLoading(false));
    }, []);
  
    return (
      <div className="App">
        <div>
          {isLoading && <div>Loading...</div>}
          <div>{data && data.map((nakki, index) => <div key={index}>{`${nakki.name}, ${nakki.producer}, ${nakki.meatType}, ${nakki.price}`}</div>)}</div>
          <div>{error}</div>
        </div>
      </div>
    );
  }

ReactDOM.render(<App />, document.querySelector("#root"));