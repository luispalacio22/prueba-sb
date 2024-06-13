export function Home({user,setUser}) {
    const handleLogOut = () => {
        setUser([])
    }
    return (
        <div>
            <h1>WELCOME</h1>
            <h2>{user}</h2>
            <button onClick={handleLogOut}>Log out</button>
        </div>
    )
}