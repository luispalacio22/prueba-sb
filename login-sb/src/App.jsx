import { Login } from './components/Login.jsx'
import { Home } from './components/Home.jsx'
import { useState  } from 'react'

export function App() {
    const [user,setUser] = useState([])

    return (
        <div className='App'>
            {
                !user.length>0
                ?<Login setUser={setUser} />
                :<Home user = {user[0]} setUser= {setUser}/>   
            }
        </div>
    )
}