import { Login } from './components/Login.jsx'
import { Home } from './components/Home.jsx'
import React ,{ useState  } from 'react'

export const userContext = React.createContext()

export function App() {
    const [user,setUser] = useState({})

    return (
        <userContext.Provider value={{user,setUser}}>
            <div className='App'>
                {!user.username ? <Login /> : <Home />}
            </div>
        </userContext.Provider>
    )
}