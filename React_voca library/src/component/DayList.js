//import dummy from "../db/data.json";
//import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import useFetch from "../hooks/useFetch";

export default function DayList() {
  //console.log(dummy);
/*  const [days, setDays] = useState([]);

  useEffect(() => {
    fetch('http://localhost:3002/days')
    .then(res => {
      return res.json();
    })
    .then(data => {
      setDays(data);
    })
  }, []); // 빈배열 -> 처음 호출 시에만 실행
*/

  const days = useFetch("http://localhost:3002/days");

  if(days.length === 0) {
    return <span>Loading...</span>
  }

  return (  
    <>
      <ul className="list_day">
        {days.map(days => (
          <li className="list_day_li" key={days.id}>
            <Link to={`/day/${days.day}`} id="fontColorWhite">Day {days.day}</Link>
          </li>
        ))}
      </ul>    
    </>

  )
}