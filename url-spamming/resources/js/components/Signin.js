import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import style from '../../css/style.module.css'
import Http from './Http';

function Signin(props) {
    const [inputs,setInputs] = useState({})
    const [error , setError] = useState('')
    // let navigate = useNavigate();

    const handleChange = (event)=>{
      const name =  event.target.name
      const email =  event.target.value
      const password =  event.target.value
      setInputs(values=>({...values, [name]:email, [name]:password}))
    }
    
    const handleSubmit = (e) => {
        e.preventDefault()
            Http.post('/login', inputs)
            .then((res)=>{
                if(res.data.status === 200){
                    localStorage.setItem('auth_token' , res.data.token)
                    localStorage.setItem('auth_name' , res.data.email)
                    swal('Success',res.data.message , 'success')
                    // navigate('/home')
                    window.location.href = '/'
                }else if(res.data.status === 401){
                    swal("Oops...", res.data.message ,"error")
                }else{
                    setError(res.data.validation_error)
                    swal('Failed',res.data.validation_error,"error")
                }
               
            })
            .catch((error) => {
                swal("Oops...", error.message ,"error")
            })
        
    }

    return (
        <div className="main-body">
          <div className="row  justify-content-md-center"> 
            <div className="col-md-5">
                <div className={style.sign_form}> 
                    <div className={style.sign_info}>
                        <h2 style={{marginBottom:'0px'}}> Sign In  </h2>
                    </div>
                    <form onSubmit={handleSubmit} >
                        <div className={style.input_field}>
                            <input 
                                name = 'email'
                                type="email" 
                                value = {inputs.email}
                                onChange={handleChange} 
                                required
                            />
                            <label>E-mail</label>
                        </div>
                        <div className={style.input_field}>
                            <input 
                                name = 'password'
                                type="password" 
                                value = {inputs.password}
                                onChange={handleChange} 
                                required/>
                            <label>Password</label>
                        </div>
                         <div className={`${style.checkbox_field} justify-content-between`}>
                            <span className="d-flex align-items-baseline">
                                <input type = "checkbox"/>
                                <p style={{marginLeft:'5px'}}>Keep me signed in</p>
                            </span>
                            <a href="#" className="active">Forgot your password?</a>
                          </div>
                        <button type="submit" className={style.submit_button}>Sign In</button>
                    </form>
                    <div className={style.signup_footer}>
                         <span>You don't have account? <Link to="/signup" className="active">Sign Up</Link></span> 
                    </div>
                </div>
            </div>
         </div>
    </div>
    );
}

export default Signin;