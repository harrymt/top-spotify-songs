import React from "react";
import ReactDOM from "react-dom";
import "./layout/index.css";
import App from "./layout/App";
import registerServiceWorker from "./layout/registerServiceWorker";
import { ApolloProvider } from "react-apollo";
import { Provider as ReduxProvider } from "react-redux";
import apolloClient from "./state/apolloClient";
import reduxStore from "./state/reduxStore";

ReactDOM.render(
  <ApolloProvider client={apolloClient}>
    <ReduxProvider store={reduxStore}>
      <App />
    </ReduxProvider>
  </ApolloProvider>,
  document.getElementById("root")
);
registerServiceWorker();
