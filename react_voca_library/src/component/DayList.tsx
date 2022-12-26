//import dummy from "../db/data.json";
//import { useEffect, useState } from "react";
import React from 'react';
import { Link } from "react-router-dom";
import useFetch from "../hooks/useFetch.ts";
import Page from "./Page";
import { useState } from "react";
import styled from "styled-components";

export interface IDays {
  id: number;
  day: number;
}

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

  const days : IDays[] = useFetch("http://localhost:3002/days");
  const [limit, setLimit] = useState(25);
  const [page, setPage] = useState(1);
  const offset = (page - 1) * limit;

  if(days.length === 0) {
    return <span>Loading...</span>
  }

  return (  
    <Layout>
      <ul className="list_day">
        {days.slice(offset, offset+limit).map(days => (
          <li className="list_day_li" key={days.id}>
            <Link to={`/day/${days.day}`} id="fontColorWhite">Day {days.day}</Link>
          </li>
        ))}
      </ul>  

      <footer>
          <Page 
            total = {days.length}
            limit = {limit}
            page = {page}
            setPage = {setPage} />
      </footer>  
    </Layout>
  )
}

const Layout = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
`;

/* npm install styled-components */