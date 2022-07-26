import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import Http from './Http';

function Redirect(props) {
   const { slug }   = useParams()
    
  const fetchData = () =>{
        Http.get('/index-shorten').then(res =>{
            
              res.data.map((value,key, index) => {
                const last3 = index[2].current_time
                const last1 = index[0].current_time

               

                if ( index[2].url ===  index[1].url &&  index[2].url ===  index[0].url){
                    if(last1-last3 <= 60){
                      if(value.slug === slug){  
                        swal("Oops...", `Block ${value.url} URL. Please Wait!!!` ,"error")
                       const delay =  function (){
                            window.location.href =  value.url
                        }
                        setTimeout(delay, 15000);
                        if(delay){
                            clearTimeout(delay)
                        }
                      }
                    }
                }else{
                    if(value.slug === slug){
                        window.location.href =  value.url
                    }
                }

              
             })
        })
  }
   useEffect(()=>{
        fetchData()
   },[slug])

    return (
        <div></div>
    );
}

export default Redirect;