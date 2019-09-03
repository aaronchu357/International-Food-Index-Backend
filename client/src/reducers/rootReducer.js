import { combineReducers } from 'redux'
import currentUser from './currentUserReducer'
import loggedIn from './loggedInReducer'

export default combineReducers({
  currentUser,
  loggedIn
})