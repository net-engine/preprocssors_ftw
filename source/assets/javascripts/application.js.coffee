#= require "libs/jquery"
#= require_tree './templates'

$(document).on 'click', '.step-link', (e) ->
  e.preventDefault()
  step = $(this).data('step')
  
  $('.step').removeClass('active')
  $('.step[data-step=' + step + ']').addClass('active')
  localStorage.setItem('step', step)


$ ->
  if localStorage.getItem('step')
    $('.step[data-step=' + localStorage.getItem('step') + ']').addClass('active')
  else
    localStorage.setItem('step', 1)
    $('.step[data-step="1"]').addClass('active')