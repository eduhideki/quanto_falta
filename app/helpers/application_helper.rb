

module ApplicationHelper

  require 'date'

  def quanto_falta(evento, time2)
    days, remaining = (evento-time2).to_i.abs.divmod(86400) 
    hours, remaining = remaining.divmod(3600)
    minutes, seconds = remaining.divmod(60)
    "#{days} dias, #{hours} horas, #{minutes} minutos, #{seconds} segundos"
  end
  
end
