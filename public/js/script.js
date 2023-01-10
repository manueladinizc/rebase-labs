fetch('http://localhost:4567/api/v1/tests')
.then((data)=>{
  // console.log(data);
  return data.json();
}).then((objectData)=>{
 
  let tableData="";
  objectData.map((values)=>{
    tableData+=`
    <tr>
    <td>${values.id}</td>
    <td>${values.registration_number}</td>
    <td>${values.name}</td>
    <td>${values.email}</td>
    <td>${values.birth_date}</td>
    <td>${values.address}</td>
    <td>${values.city}</td>
    <td>${values.state}</td>
    <td>${values.doctor_crm}</td>
    <td>${values.doctor_crm_state}</td>
    <td>${values.doctor_name}</td>
    <td>${values.doctor_email}</td>
    <td>${values.exam_token}</td>
    <td>${values.exam_date}</td>
    <td>${values.exam_type}</td>
    <td>${values.exam_limit}</td>
    <td>${values.exam_type_result}</td>
    </tr>`;
  });
  document.getElementById("table_body").innerHTML=tableData;
}).catch((error)=>{ 
  console.log(error);
})
  // .then(res => res.json())
  // .then(data => console.log(data))
  // .catch(error => console.log('ERROR'))