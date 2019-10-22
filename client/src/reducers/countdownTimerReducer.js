const defaultTime = {
  days: null,
  hours: null,
  minutes: null,
  seconds: null
}

export default (state = defaultTime, action) => {
  switch (action.type) {
    case 'GET_TIME_SUCCESS':
      return action.time
    default:
      return state
  }
}