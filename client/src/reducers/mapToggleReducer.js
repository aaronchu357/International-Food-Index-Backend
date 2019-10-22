const defaultMapToggleSetting = {
  toggleSwitchOn: false
}

export default(state = defaultMapToggleSetting, action) => {
  switch (action.type) {
    case 'CLICK_TOGGLE':
      return { toggleSwitchOn: !state.toggleSwitchOn }
    default:
      return state
  }
}