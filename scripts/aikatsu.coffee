cronJob = require('cron').CronJob

module.exports = (robot) ->
  # それもまたアイカツだね
  robot.hear /w|W|ｗ|カツ/, (msg) ->
    msg.reply "https://lh3.googleusercontent.com/BUui7hgGVuq2yZvKWMHa9udx4QXDtkxA5NAuzqMNx7U=w1280-h723-no?#{timestamp()}"

  # あ〜もう何もしたくない
  robot.hear /・・|。。|･･･/, (msg) ->
    msg.send "https://lh3.googleusercontent.com/BltBGFXwM1WfW91amuJUthi56xzaQLJAiytUXDYAR3o=w600-h337-no?#{timestamp()}"

  # 働かずに食べるご飯はスペシャルにおいしい
  robot.hear /飯/, (msg) ->
    msg.send "https://lh3.googleusercontent.com/rFrOqcx5GoxdRWHTUducjhAKzGd9I_ZZa_-fjfXHBTU=w1280-h720-no?#{timestamp()}"

  # えっ どういうことですか
  robot.hear /\?|？/, (msg) ->
    msg.reply "https://lh3.googleusercontent.com/yn9LOPI8hyYsIPMRWYsly1vBE29szaCrcktgZQoZ8pg=w1364-h768-no?#{timestamp()}"

  # アイカツの時間だ！コラァ！
  new cronJob('00 30 18 * * 4', () ->
    robot.send {room: "#general"}, "https://lh3.googleusercontent.com/FdIj5QtMCobcCqo1nMagDOc6AawWKUAPRZZz4YOs5_Q=w500-h519-no?#{timestamp()}"
  ).start()

  timestamp = () ->
    (new Date()).toISOString().replace(/[^0-9]/g, "")