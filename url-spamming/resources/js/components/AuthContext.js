
  import React, { useContext, useEffect, useState } from "react";
  
  const AuthContext = React.createContext();
  
  export function useAuth() {
    return useContext(AuthContext);
  }
  
  export function AuthProvider({ children }) {
    const [currentUser, setCurrentUser] = useState(null);

    useEffect(() => {
        setCurrentUser(localStorage.getItem('auth_name'))
      }, []);

    // logout function
    function logout() {
        localStorage.removeItem('auth_token')
        localStorage.removeItem('auth_name')
        window.location.href = '/'
        const auth = swal('Success','Successfully Log Out' , 'success');
        return auth;
    }
     
    const value = {
      currentUser,
      logout,
    };
  
    return (
      <AuthContext.Provider value={value}>
        { children}
      </AuthContext.Provider>
    );
  }
  