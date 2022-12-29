import React from 'react';
import { useState } from "react";

interface IProps {
  word: IWords;
}

// typescript를 사용하면 좋은 점
// 오류 쉽게 파악 가능, 타입에 따른 자동완성 추천

export interface IWords { // export하면 다른 파일에서도 사용 가능
  day: string;
  eng: string;
  kor: string;
  isDone: boolean;
  id: number;
}

export default function Word({word:w}:IProps) {
  const [word, setWord] = useState(w);
  const [isShow, setIsShow] = useState(false);
  const [isDone, setIsDone] = useState(w.isDone);

  function toggleShow() {
    setIsShow(!isShow);
  }

  function toggleDone() {
    //setIsDone(!isDone);
    fetch(`http://localhost:3002/words/${w.id}`, {
      method : 'PUT',
      headers : {
        'Content-Type' : 'application/json', //보내는 리소스 타입 (json 타입으로 보냄)
      },
      body : JSON.stringify({
        ...w,
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
      fetch(`http://localhost:3002/words/${w.id}`, {
        method : 'DELETE',
      }).then(res=>{
        if(res.ok){
          setWord({
            ...word,
            id:0,
          });
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
      <td>{w.eng}</td>
      <td className="word_kor">{isShow && w.kor}</td>
      <td>
        <button className="btn_check" onClick={toggleShow}>{isShow ? "숨기기" : " 뜻확인"}</button>
        <button className="btn_del" onClick={del}>삭제</button>
      </td>
    </tr>    
  );
}
