import { useState } from 'react';
import SubForm from './SubForm';

const SubShow = ({ id, title, deleteSub, updateSub }) => {
  // this will keep track of if we are editing
  const [editing, setEdit] = useState(false)

  // conditional rendering - display base off of a condition
  return (
    <>
      <h3>{title}</h3>
      {/* conditional rendering of if I am editing show the form or if not then show the button */}
      {
        editing ?
        <>
          <SubForm 
            updateSub={updateSub}
            id={id}
            title={title}
            setEdit={setEdit}
          />
          <button
            onClick={() => setEdit(false)}
          >
            Cancel
          </button>
        </>
        :
        <button
          onClick={() => setEdit(true)}
        >
            Edit
        </button>
      }
      <button
        onClick={() => deleteSub(id)}
      >
        Delete
      </button>
    </>
  )
}

export default SubShow;