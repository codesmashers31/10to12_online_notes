const myform = document.getElementById("myform");

myform.addEventListener('submit',(e)=>{


const error = document.getElementById("error");
const type_value = document.getElementById("type")

   
   const namedata1 = document.getElementById("data1").value;
   const namedata2 = document.getElementById("data2").value;
   //const newnumberdata = Number(namedata)
   if(namedata1===0&&namedata2===0){
    error.innerText = 'if using 0 its not valid'
          
   }else if(namedata1&&namedata2){
       type_value.innerText = Number(namedata1)+Number(namedata2)
   }
   else{
    error.innerText = 'Please Fill the form'
   }
   //alert(namedata)

    e.preventDefault();
})
