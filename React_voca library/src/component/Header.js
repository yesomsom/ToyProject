import { Link } from "react-router-dom";

export default function Header() {
  return (
    <div className="header">
      <h1 className="title">
        <Link to="/">영단어 뽀개기</Link>
      </h1>
      <div className="menu">
        <Link to="/create_word" className="link">
          단어 추가
        </Link>
        <Link to="/create_day" className="link">
          Day 수정
        </Link>
      </div>
    </div>
  );
}