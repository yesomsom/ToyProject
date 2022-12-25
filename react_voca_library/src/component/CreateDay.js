import useFetch from "../hooks/useFetch.ts";
import { useNavigate } from "react-router-dom";

export default function CreateDay() {
  const days = useFetch("http://localhost:3002/days");
  const history = useNavigate();

  function addDay() {
    fetch(`http://localhost:3002/days/`, {
      method : 'POST',
      headers : {
        'Content-Type' : 'application/json', //보내는 리소스 타입 (json 타입으로 보냄)
      },
      body : JSON.stringify({
        day: days.length + 1,
      }),
    }).then(res => {
      if (res.ok) {
        alert("생성이 완료되었습니다.");
        history(`/`);
      }
    });
  }

  function delDay() {
    if(window.confirm('삭제하시겠습니까?')) {
      fetch(`http://localhost:3002/days/${days.length}`, {
        method : 'DELETE',
      }).then(res=>{
        if(res.ok){
          alert("삭제가 완료되었습니다.");
          history(`/`);
        }
      });
    }
  }

  return (
    <div>
      <h2 className="days_main">현재 일수 : <span class="days_now">{days.length}</span>일</h2>
      <button onClick={addDay} className="day_btn">Day +</button>
      <button onClick={delDay} className="day_btn">Day -</button>
    </div>
  );
}