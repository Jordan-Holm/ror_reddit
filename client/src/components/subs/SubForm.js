import { useEffect, useState } from "react";

const SubForm = ({ addSub, id, title, setEdit, updateSub}) => {
    const [sub, setSub] = useState({ title: ''})

    useEffect( () => {
        if (id) {
            setSub({ title })
        }
    })

    const handleSubmit = (e) => {

        e.preventDefault()
        if (id) {
            updateSub(id, sub)
            setEdit(false)
        } else {
            addSub(sub)
        }
        
        //clear out the form
        setSub({ title: ''})
    }
    return(
        <>
            <h2>{ id ? 'Edit' : 'Create'}</h2>
            <form onSubmit={handleSubmit}>
                <label>Title</label>
                <input
                    name=''
                    value={sub.title}
                    onChange={(e) => setSub({...sub, title: e.target.value})}

                    required
                />
                <button type="submit">Submit</button>
            </form>
        </>
    )
}

export default SubForm;