import { getCountdownTimerStart } from "./actionsCreator";

export const getCountdownTime = () => dispatch => {
  const deadlineDate = new Date('September 31, 2019 23:59:59').getTime()
  const currentDate = new Date().getTime();
  const distance = deadlineDate - currentDate;

  const time = {
    days: (Math.floor(distance / (1000 * 60 * 60 * 24))),
    hours: (Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))),
    minutes: (Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60))),
    seconds: (Math.floor((distance % (1000 * 60)) / 1000))
  }
  dispatch(getCountdownTimerStart(time))
}