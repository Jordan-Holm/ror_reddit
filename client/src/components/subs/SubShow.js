
const SubShow = ({ id, title, deleteSub }) => {
    return (
        <>
            <h3>{title}</h3>
            <button>Edit</button>
            <button
                onClick={() => deleteSub(id)}
            >
                Delete
            </button>
        </>
    )
}

export default SubShow;