import React, { useContext } from 'react';
import { userContext } from '../App';

export function Home() {

    const { user, setUser } = useContext(userContext);

    const handleLogOut = () => {
        setUser([])
    }
    return (
        <div className="container">
            <h1>WELCOME</h1>
            <h2>{user.username}</h2>
            <button className="submit" onClick={handleLogOut}>Log out</button>
        </div>
    )
}