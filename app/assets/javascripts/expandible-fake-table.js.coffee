$ ->
  if $('.expansible-fake-table').length
    $('.expansible-fake-table section .col.toggle').on 'click', ->
      $(this).closest('section').find('.panel-collapse').collapse('toggle')