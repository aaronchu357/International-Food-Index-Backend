const loggedInDefault = false

export default (state = loggedInDefault, action) => {
  switch (action.type) {
    case 'LOGIN_REQUEST_SUCCESS':
      return true
    default:
      return state
  }
}