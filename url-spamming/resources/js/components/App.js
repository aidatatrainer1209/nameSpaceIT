import React from 'react';
import ReactDOM from 'react-dom';
import {
    Routes,
    Route,
    HashRouter,
  } from "react-router-dom";
import Header from './Header';
import '../../css/app.css';
import Signin from './Signin';
import Signup from './signup';
import Home from './Home';
import { AuthProvider } from './AuthContext';
import PublicRoute from './Routes/PublicRoute';
import PrivateRoute from './Routes/PrivateRoute';
import Redirect from './Redirect';

function App() {
    return (<>
       <HashRouter basename="/" forceRefresh> 
           <AuthProvider>
             <Header/> 
                <Routes>
                    <Route path="/" element={<Home />} />
                    <Route exact path="/" element={<PrivateRoute />}>
                         <Route path="/home"  element={<Home />}/>
                         <Route path="/:slug"  element={<Redirect />}/>
                    </Route>
                    <Route exact path="/" element={<PublicRoute />}>     
                         <Route path="/signin" element={<Signin />}/>
                         <Route path="/signup" element={<Signup />}/>
                    </Route>
                </Routes>
            </AuthProvider>
        </HashRouter>
        </>
    );
}

export default App;

if (document.getElementById('app')) {
    ReactDOM.render(<App />, document.getElementById('app'));
}
