jQuery ->
  validate_url = '/users/validate'

  $('#new_user').validate(
    debug: true
    rules:
      'email[email]':
        required: true
        remote:
          url: validate_url
          type: 'post'
      'email[frequency]':
        remote:
          url: validate_url
          type: 'post'
  )