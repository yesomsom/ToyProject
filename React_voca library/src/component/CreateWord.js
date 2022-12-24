import useFetch from "../hooks/useFetch";
import { useRef } from "react";
import { useNavigate } from "react-router-dom";
import { useState } from "react";

export default function CreateWord(){
  const days = useFetch("http://localhost:3002/days");
  const history = useNavigate();
  const [isLoading, setIsLoading] = useState(false); // 통신 중 버튼 여러 번 클릭해도 반응하지 않기 위한 작업

  function onSubmit(e) {
    e.preventDefault(); // 버튼 눌러도 새로고침 되지 않음

    //console.log(engRef.current.value); // current: 해당 속성에 접근, value: input의 값
    //console.log(korRef.current.value);
    //console.log(dayRef.current.value);
    if (!isLoading) { // 통신 중 버튼 여러 번 클릭해도 반응하지 않기 위한 작업
      setIsLoading(true); // 통신 중 버튼 여러 번 클릭해도 반응하지 않기 위한 작업
      fetch(`http://localhost:3002/words/`, {
        method : 'POST',
        headers : {
          'Content-Type' : 'application/json', //보내는 리소스 타입 (json 타입으로 보냄)
        },
        body : JSON.stringify({
          day: dayRef.current.value,
          eng: engRef.current.value,
          kor: korRef.current.value,
          isDone: false,
        }),
      }).then(res => {
        if (res.ok) {
          alert("생성이 완료되었습니다.");
          history(`/day/${dayRef.current.value}`);
          setIsLoading(false); // 통신 중 버튼 여러 번 클릭해도 반응하지 않기 위한 작업
        }
      });
    }
  }

  // dom요소 생성 후 접근 가능
  const engRef = useRef(null);
  const korRef = useRef(null);
  const dayRef = useRef(null);

  return (
    <form className="create_word_form" onSubmit={onSubmit}>
      <div className="input_area">
        <label>Eng</label>
        <input className="input_text" ref={engRef} type="text" placeholder="소문자 알파벳" />
      </div>
      <div className="input_area">
        <label>Kor</label>
        <input className="input_text" ref={korRef} type="text" placeholder="한글" />
      </div>
      <div className="input_area">
        <label>Day</label>
        <select className="input_select" ref={dayRef}>
          {days.map(day => (
            <option key={day.id} value={day.day}>{day.day}</option>
          ))}
        </select>
      </div>
      <div>
        <button className="save_btn" style={{opacity: isLoading ? 0.3 : 1,}}>{isLoading ? "Saving..." : "SAVE"}</button>
      </div>
    </form>
  )
}