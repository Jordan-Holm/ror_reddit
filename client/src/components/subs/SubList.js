import SubShow from './SubShow';

const SubList = ({ subs, updateSub, deleteSub }) => (
    <>
        { subs.map( s =>
            <SubShow
                key={s.id}
                {...s}
                deleteSub={deleteSub}
                updateSub={updateSub}
            />
        )}
    </>
)
export default SubList;