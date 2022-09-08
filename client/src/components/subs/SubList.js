import SubShow from './SubShow';

const SubList = ({ subs, deleteSub }) => (
    <>
        { subs.map( s =>
            <SubShow
                key={s.id}
                {...s}
                deleteSub={deleteSub}
            />
        )}
    </>
)
export default SubList;