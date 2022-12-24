//import dummy from "../db/data.json";
//import { useEffect, useState } from "react";
import { useParams } from "react-router-dom"; //url 변수 가져옴
import useFetch from "../hooks/useFetch";
import Word from "./Word";

export default function Day() {

  const day = useParams().dayEle;
  //const {day} = useParams();
  //const wordlist = dummy.words.filter(word=>word.day === Number(day)); 
/*  const [wordlist, setwordlist] = useState([]);

  useEffect(() => {
    fetch(`http://localhost:3002/words?day=${day}`)
    .then(res => {
      return res.json();
    })
    .then(data => {
      setwordlist(data);
    })
  }, [day]); // day 의존성 추가
*/

  const wordlist = useFetch(`http://localhost:3002/words?day=${day}`);

  return <>
  <h2 className="day_title_color">Day {day}</h2>
  {wordlist.length === 0 && <span>Loading...</span>}
    <table>
      <tbody>
        {wordlist.map(wordsList => (
          <Word word={wordsList} key={wordsList.id}/>
        ))}
      </tbody>
    </table>
  </>
}