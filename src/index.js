import React from "react"
import {createRoot} from "react-dom/client"

import { BrowserRouter as Router } from "react-router-dom";

//component
import TodoContainer from "./functionBased/components/TodoContainer"

//stylesheet
import "./functionBased/App.css"

const rootElement = document.getElementById('root');
const root = createRoot(rootElement);

root.render(
  <React.StrictMode>
    <Router basename={process.env.PUBLIC_URL}>
      <TodoContainer />
    </Router>  
  </React.StrictMode>, 
  document.getElementById("root")
);