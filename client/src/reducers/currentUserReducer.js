const defaultState = {
  id: null,
  username: '',
  comments: [],
  national_dishes: [],
  loading: false
}

export default (state = defaultState, action) => {
  switch (action.type) {
    case 'LOGIN_REQUEST_START':
      return {...state, loading: true}
    case 'GET_PROFILE_REQUEST_SUCCESS':
    case 'LOGIN_REQUEST_SUCCESS':
      return {...action.user, loading: false}
    case 'LOGIN_REQUEST_FAILURE':
      return {...state, loading: false}
    case 'LOGOUT':
      return defaultState
    default:
      return state
  }
}