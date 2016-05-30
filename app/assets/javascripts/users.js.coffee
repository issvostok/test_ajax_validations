jQuery ->
  validate_url = '/users/validate'

  $('#new_user').validate(
    rules:
      'user[first_name]':
        required: true
        minlength: 2
        remote:
          url: validate_url
          type: 'post'
      'user[last_name]':
        required: true
        minlength: 2
        remote:
          url: validate_url
          type: 'post'
      'user[email]':
        required: true
        remote:
          url: validate_url
          type: 'post'
      'user[password]':
        required: true
        minlength: 6
        remote:
          url: validate_url
          type: 'post'
  )