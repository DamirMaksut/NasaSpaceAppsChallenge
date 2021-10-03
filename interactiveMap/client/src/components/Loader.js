import Spinner from "../spinner.gif"

const Loader = () => {
    return (
        <div className="loader">
            <img src={Spinner} alt="loader"/>
            <h2 className="loader-header">Fetching Data...</h2>
        </div>
    )
}

export default Loader
