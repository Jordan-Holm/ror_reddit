import { useState, useEffect } from 'react';
import axios from 'axios';
import SubList from './SubList';
import SubForm from './SubForm';

// this is where all the CRUD are in the front end
const Subs = () => {
  // where we are storing all the subs in the front end
  const [subs, setSubs] = useState([])

  // this will run before we display to the page
  useEffect( () => {
    // http verb and url 
    // subs index action
    // res -> all of your subs from your db
    axios.get('/api/subs')
      .then( res => setSubs(res.data) ) // storing all the subs from the db to the component state
      .catch( err => console.log(err) )
  }, [])

  const addSub = (sub) => {
    // create a sub in the back end
    axios.post('/api/subs', { sub })
        .then( res => setSubs([...subs, res.data])) // adding to front end
        .catch( err => console.log(err) )
  }

  const updateSube = (id, sub) => {

  }

  const deleteSub = (id) => {
    // make sure to use back ticks
    // interpolating thhe id we are passing in
    // destroy in the back end
    axios.delete(`/api/subs/${id}`)
        .then(res => {
            // filters out the one deleted
            setSubs(subs.filter( s => s.id !== id ))
        })
        .catch( err => console.log(err) )
  }

  return (
    <>
        <h1>All Sub Reddits</h1>
        <SubForm 
            addSub={addSub}
        />
        <SubList
            subs={subs}
            deleteSub={deleteSub}
        />

    </>
  )
}

export default Subs;