import React from 'react';
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import { Link } from "react-router-dom";
import Navbar from 'react-bootstrap/Navbar';
import  { useAuth } from './AuthContext'


function Header() {
  const { logout, currentUser } = useAuth();
  return (
    <Navbar collapseOnSelect expand="lg" bg="dark" variant="dark">
      <Container>
        <Navbar.Brand to="/">NameSpace IT</Navbar.Brand>
        <Navbar.Toggle aria-controls="responsive-navbar-nav" />
        <Navbar.Collapse id="responsive-navbar-nav">
          <Nav className="me-auto">
            {currentUser &&  <Link to="/home" className="nav-link">Home</Link>}
          </Nav>
          <Nav>
          {!currentUser ?
            <>
              <Link to="/signin" className="nav-link">Sign In</Link>
               <Link to="/signup" className="nav-link">Sign Up</Link>
            </>
            :
            <Link to="#" className="nav-link" onClick={logout}>LogOut</Link>
          }
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default Header;