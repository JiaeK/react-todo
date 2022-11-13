import React from "react"
import {createRoot} from 'react-dom/client';

//component
import TodoContainer from "./TodoContainer"

//stylesheet
import "./functionBased/App.css"

const rootElement = document.getElementById('root');
const root = createRoot(rootElement);

root.render(
  <React.StrictMode>
    <TodoContainer /> 
  </React.StrictMode>, 
);