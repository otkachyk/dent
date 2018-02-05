$(document).on 'change', '#appointment_departament', ->
  departament = $(this).val()
  $.ajax
    url: '/appointments/new'
    method: 'GET'
    dataType: 'json'
    data: {departament: departament}
    error: (xhr, status, error) ->
      console.error 'AJAX Error: ' + status + error
      return
    success: (response) ->
      console.log response
      users = response['users']
      $('#appointment_user').empty()
      $('#appointment_user').append '<option>Select doctor</option>'
      i = 0
      while i < users.length
        $('#appointment_user').append "<option value= #{users[i]['id']}> #{users[i]['name']}</option>"
        i++
      return
  return
