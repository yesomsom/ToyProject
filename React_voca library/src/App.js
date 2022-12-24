import './App.css';
import DayList from './component/DayList';
import Header from './component/Header';
import Day from './component/Day';
import { BrowserRouter, Route, Routes } from "react-router-dom";
import EmptyPage from './component/EmptyPage';
import CreateWord from './component/CreateWord';
import CreateDay from './component/CreateDay';

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <Header />
        <Routes>
          <Route path="/" element={ <DayList /> } />
          <Route path="/day/:dayEle"element={ <Day /> } /> // :dayEle = 1
          <Route path="/create_word" element={ <CreateWord />} />
          <Route path="/create_day" element={ <CreateDay />} />
          <Route path="*" element={ <EmptyPage /> } />
        </Routes> 
      </div>    
    </BrowserRouter>
  );
}

export default App;


/* REST API */

// npx json-server ./src/db/data.json --port 3002 
// http://localhost:3002/days
// http://localhost:3002/words
//  Home http://localhost:3002

// CREAT : POST
// READ : GET
// UPDATE : PUT
// DELETE : DELETE

// http://localhost:3002/words?day=1
