fetch('http://[::1]:4567/api/v1/tests')
  .then(res => res.json())
  .then(data => console.log(data))
  .catch(error => console.log('ERROR'))