import { useState } from "react";

export default function Word({word:w}) {
  const [word, setWord] = useState(w);
  const [isShow, setIsShow] = useState(false);
  const [isDone, setIsDone] = useState(word.isDone);

  function toggleShow() {
    setIsShow(!isShow);
  }

  function toggleDone() {
    //setIsDone(!isDone);
    fetch(`http://localhost:3002/words/${word.id}`, {
      method : 'PUT',
      headers : {
        'Content-Type' : 'application/json', //보내는 리소스 타입 (json 타입으로 보냄)
      },
      body : JSON.stringify({
        ...word,
        isDone: !isDone,
      }),
    }).then(res => {
      if (res.ok) {
        setIsDone(!isDone);
      }
    });
  }

  function del() {
    if(window.confirm('삭제하시겠습니까?')) {
      fetch(`http://localhost:3002/words/${word.id}`, {
        method : 'DELETE',
      }).then(res=>{
        if(res.ok){
          setWord({id:0})
        }
      });
    }
  }

  if(word.id === 0) {
    return null;
  }

  return (
    <tr className={isDone ? "turn_off" : ""}>
      <td>
        <input type="checkbox" checked={isDone} onChange={toggleDone}></input>
      </td>
      <td>{word.eng}</td>
      <td className="word_kor">{isShow && word.kor}</td>
      <td>
        <button className="btn_check" onClick={toggleShow}>{isShow ? "숨기기" : " 뜻확인"}</button>
        <button className="btn_del" onClick={del}>삭제</button>
      </td>
    </tr>    
  );
}