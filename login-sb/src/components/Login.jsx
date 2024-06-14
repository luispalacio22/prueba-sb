import './Login.css'
import React, {useContext, useState } from 'react';
import { userContext } from '../App';

export function Login () {
  const { setUser } = useContext(userContext);
  const [username,setUsername] = useState('')
  const [password,setPassword] = useState('')
  const [error, setError] = useState(false)

  const handleUsernameChange = (e) => {
    setUsername(e.target.value);
  };

  const handlePasswordChange = (e) => {
    setPassword(e.target.value);
  };

  const handleSubmit = (e) =>{
    e.preventDefault()
    if (!username || password.length < 6) {
      setError(true);
      return;
    }
  
  
    setError(false);
    setUser({ username, password });

  }
    return (
        <div className='container'>
          <form className ='form-sb' onSubmit={handleSubmit}>
            <div className='header'>
              <div className='text'>Scotiabank</div>
            </div>
            <div className='inputs'>
              <div className='input'>
                  <input id="username-input" 
                          type="text" 
                          placeholder='Username' 
                          value={username}
                          onChange={handleUsernameChange}/>
              </div>
              <div className='input'>
                  <input id="password-input" 
                          type="password" 
                          placeholder='password' 
                          value={password}
                          onChange={handlePasswordChange}/>
              </div>
            </div>
            <div className="forgot-password">Forgot password? <span>click here</span></div>
            <div className='submit-container'>
              <button className="submit" 
                      id="login-button" 
                      disabled={!username || password.length < 6}
                      >login
              </button>
            </div>
            {error && <p>usuario o contraseña incorrectos</p>}
            </form>
        </div>
    )
}