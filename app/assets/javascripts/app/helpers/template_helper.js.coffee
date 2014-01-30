Community.Helpers.TemplateHelper =
  from_now: (time) ->
    if time
      "<span role='time' data-time='#{time}'>#{moment(time).fromNow('false')}</span>"

  duration_hours: (time) ->
    if time
      duration = moment(time).hours()
      "<span role='time' data-time='#{time}'>#{duration} ч</span>"

  human_time: (time) ->
    if time
      "<span role='time' data-time='#{time}'>#{moment(time).calendar()}</span>"

  datetime: (time) ->
    if time
      "<span role='time' data-time='#{time}'>#{moment(time).format('DD/MM/YYYY hh:mm')}</span>"

  ficon: (name, attrs) ->
    "<i class='fontello-icon-#{name}'></i>"

  label: (text, type) ->
    "<span class=\"label label-#{if type then type else "default"}\">#{text}</span>"

  badge: (text, type) ->
    "<span class=\"badge badge-#{if type then type else "default"}\">#{text}</span>"

  to_datetime: (time) ->
    "#{moment(time).format('DD.MM.YYYY / h:mm:ss')}"

  unix_to_duration: (timestamp) ->
    "#{moment.duration(timestamp, 'seconds').humanize()}"

  body_scroll_top: ->
    $(document).scrollTop(0)

  truncate: (string, size=100) ->
    return string if string.length < size
    words_array = $.trim(string).substring(0, size).split(' ')
    new_string = words_array.join(" ") + "&hellip;"
    if new_string.length > size
      words_array.slice(0, -1).join(" ") + "&hellip;"
    else
      new_string