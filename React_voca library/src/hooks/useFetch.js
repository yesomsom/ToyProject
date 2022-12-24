import { useEffect, useState } from "react";

export default function useFetch(url) {
  const [data, setData] = useState([]);

  useEffect(() => {
    fetch(url) // 비동기 통신, api를 넣어줌
    .then(res => {
      return res.json(); // json으로 변환
    })
    .then(data => {
      setData(data);
    })
  }, [url]);

  return data;
}

/*
useEffect
컴포넌트가 렌더링 될 때마다 특정 작업을 실행할 수 있도록 하는 훅
*/