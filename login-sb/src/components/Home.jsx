export function Home({user,setUser}) {
    const handleLogOut = () => {
        setUser([])
    }
    return (
        <div className="container">
            <h1>WELCOME</h1>
            <h2>{user}</h2>
            <button className="submit" onClick={handleLogOut}>Log out</button>
        </div>
    )
}