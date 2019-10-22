import { combineReducers } from 'redux'
import currentUser from './currentUserReducer'
import loggedIn from './loggedInReducer'
import countdownTimer from './countdownTimerReducer'
import mapToggleReducer from './mapToggleReducer'

export default combineReducers({
  currentUser,
  loggedIn,
  countdownTimer,
  mapToggleReducer
})