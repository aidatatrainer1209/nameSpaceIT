import React from "react";
import { Navigate, Outlet } from "react-router-dom";
import { useAuth } from "../AuthContext";

export default function PublicRoute({ component: Component, ...rest }) {
  const { currentUser } = useAuth();

  return !currentUser ? (
    <Outlet {...rest}>{(props) => <Component {...props} />}</Outlet>
  ) : (
    <Navigate to="/" />
  );
}
