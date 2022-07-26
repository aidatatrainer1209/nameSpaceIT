import React, { useState } from 'react';
import axios from 'axios'
import {Link, useNavigate } from 'react-router-dom';
import style from '../../css/style.module.css'
import Http from './Http';
import swal from 'sweetalert';

function Signup(props) {
    const [inputs,setInputs] = useState({})
    const [error , setError] = useState('')
    let navigate = useNavigate();
        const handleChange = (event)=>{
        const name =  event.target.name
        const email =  event.target.value
        const password =  event.target.value
        const confirm_password = event.target.value
        setInputs(values=>({...values, [name]:email, [name]:password , [name]:confirm_password}))
        }
        
        const handleSubmit = (e) => {
            e.preventDefault()
            if(inputs.password === inputs.confirm_password){
                Http.post('/register', inputs)
                .then((res)=>{
                    if(res.data.status === 200){
                        localStorage.setItem('auth_token' , res.data.token)
                        localStorage.setItem('auth_name' , res.data.email)
                        swal('Success',res.data.message , 'success')
                        // navigate('/')
                        window.location.href = '/'
                    }else{
                        setError(res.data.validation_error)
                        swal('Failed',res.data.validation_error)
                    }
                   
                })
                .catch((error) => {
                    swal("Oops...", error.message ,"error")
                })
            }else{
                swal("Oops...", "Password not matched!", "error");
            } 
        }
    return (
        <div className="main-body">
        <div className="row  justify-content-md-center"> 
            <div className="col-md-5">
                <div className={style.sign_form}> 
                    <div className={style.sign_info}>
                        <h2 style={{marginBottom:'0px'}}>Sign up </h2>
                    </div>
                    <form onSubmit={handleSubmit} >
                        <div className={style.input_field}>
                            <input 
                                name = 'email'
                                type ="email" 
                                value = {inputs.email}
                                onChange ={handleChange}
                                required/>

                            <label>E-mail</label>
                        </div>
                        <div className={style.input_field}>
                            <input
                                name = 'password' 
                                type="password" 
                                value={inputs.password}
                                onChange ={handleChange}
                                required/>
                            <label>Password</label>
                        </div>
                        <div className={style.input_field}>
                            <input 
                               name = 'confirm_password' 
                               type= "password" 
                               value={inputs.confirm_password}
                               onChange ={handleChange}
                                required/>
                            <label>Re-enter Password</label>
                        </div>
                         <div className={style.checkbox_field}>
                            <input type = "checkbox"/>
                            <p style={{marginLeft:'5px'}}>Accept the <a href="#" style = {{color:'#046EB6'}}>Terms</a > and <a href="#"  style = {{color:'#046EB6'}}>Privacy Policy</a></p>
                          </div>
                     
                        <button type="submit" className={style.submit_button}>Sign up</button>
                    </form>
                    <span>{error}</span>
                    <div className={style.signup_footer}>
                         <span>Already have an account? <Link to="/signin" className="active">Sign In</Link></span> 
                    </div>
                   
                </div>
            </div>
         </div>
       
    </div>
    );
}

export default Signup;