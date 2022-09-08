import { useState } from "react";

const SubForm = ({ addSub}) => {
    const [sub, setSub] = useState({ title: ''})

    const handleSubmit = (e) => {

        e.preventDefault()
        addSub(sub)

        //clear out the form
        setSub({ title: ''})
    }
    return(
        <>
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