import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import style from '../../css/style.module.css'
import Http from './Http';

function Home(props) {
    const [inputURL,setInputURL] = useState();
    const [shorten, setShorten] = useState();
    const [slug , setSlug] = useState()


    const handleSubmit =  async (e)=>{
        const slug =  Math.random().toString(36).substring(2, 8);
        setSlug(slug)
        e.preventDefault()
        const inputs= {
               url  : inputURL,
               slug : slug  ,
               curr_time : Math.floor( new Date().getTime() / 1000)
        }
        await Http.post('/shorten-url', inputs )
            .then((res)=>{
                if(res.status === 200){
                    swal('Success',res.data.message , 'success')
                }else{
                    swal("Oops...", 'Something was wrong!' ,"error")
                }
             })
             .catch((error) => {
                swal("Oops...", error.message ,"error")

             })
        setShorten(`${window.location.origin}/${slug}`)
    }
   
 
   
    return (
        <div className="main-body">
        <div className="row  justify-content-md-center"> 
          <div className="col-md-5">
              <div className={style.sign_form}> 
                  <div className={style.sign_info}>
                      <h1 style={{marginBottom:'0px'}}> Shortened URL </h1>
                  </div>
                  <form onSubmit={handleSubmit}>
                      <div className={style.input_field}>
                          <input 
                                type="text" 
                                value = {inputURL}
                                onChange={(e)=>setInputURL(e.target.value)}
                                required/>
                          <label>Enter Url</label>
                          <span className='mt-5'><Link to = {`${slug}`} >{shorten}</Link></span>
                      </div>
                      <button type="submit" className={style.submit_button}>Submit</button>
                  </form>
              </div>
          </div>
       </div>
  </div>
    );
}

export default Home;