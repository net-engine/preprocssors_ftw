#= require "libs/jquery"
#= require_tree './templates'

$(document).on 'click', '.step-link', (e) ->
  e.preventDefault()
  step = $(this).data('step')
  
  $('.step, .step-link').removeClass('active')
  $('.step[data-step=' + step + '], .step-link[data-step=' + step + ']').addClass('active')
  localStorage.setItem('step', step)

$(document).on 'click', '#prev-button', (e) ->
  e.preventDefault()
  step = $(this).data('step')
  
  $('.step, .step-link').removeClass('active')
  $('.step[data-step=' + step + '], .step-link[data-step=' + step + ']').addClass('active')

$(document).on 'click', '#next-button', (e) ->
  e.preventDefault()
  step = $(this).data('step')
  
  $('.step, .step-link').removeClass('active')
  $('.step[data-step=' + step + '], .step-link[data-step=' + step + ']').addClass('active')


$ ->
  if localStorage.getItem('step')
    step = localStorage.getItem('step')
    $('.step[data-step=' + step + '], .step-link[data-step=' + step + ']').addClass('active')
    
  else
    localStorage.setItem('step', 1)
    $('.step[data-step="1"], .step-link[data-step="1"]').addClass('active')
