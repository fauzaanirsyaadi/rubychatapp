// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .

// Ensure this file is included (application.js includes require_tree .)
(function() {
  $(document).on('turbolinks:load ready', function() {
    function applyUsername(username) {
      if (!username) return
      $('#username').val(username)
      $('.username-display').text(username)
      $('.username').removeClass('d-none')
      $('#message').prop('disabled', false)
      $('#message').attr('placeholder', 'Type your message and press Enter...')
    }

    var stored = window.localStorage.getItem('chat_username')
    if (!stored || stored.trim().length === 0) {
      // show modal to ask for username
      $('#usernameModal').modal({ backdrop: 'static', keyboard: false })
      $('#usernameModal').modal('show')
    } else {
      applyUsername(stored)
    }

    $('#usernameModal').on('shown.bs.modal', function() {
      $('#username-modal-input').trigger('focus')
    })

    $('#username-save-btn').on('click', function(e) {
      e.preventDefault()
      var v = $('#username-modal-input').val() || ''
      v = v.toString().trim()
      if (v.length === 0) {
        alert('Please enter a username')
        return
      }
      window.localStorage.setItem('chat_username', v)
      applyUsername(v)
      $('#usernameModal').modal('hide')
    })
  })
})();
