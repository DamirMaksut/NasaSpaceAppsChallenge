import { useEffect, useState } from "react";

//import MapTest from "./components/MapTest";
import Map from "./components/Map";
import Loader from "./components/Loader";

function App() {
  const [loading, setLoading] = useState(true);


  //Loader
  useEffect(() => {
    setTimeout(() => {
      setLoading(false);
    }, 1500);
  }, []);

  return (
    <div className="container">
      { !loading ? <Map /> : <Loader/>}
    </div>
  );
}

export default App;
