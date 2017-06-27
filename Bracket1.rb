class Tortas
  def initialize(tipo_de_torta)
  @tipos_de_tortas = "torta_de_pierna", "torta_de_buche", "torta_de_lengua"
  @@lote = @tipos_de_tortas[tipo_de_torta.to_i]
  @@tiempo = 0
  nil
  end
end
class Horno < Tortas
  def lote_entra
    "Un lote de #{@@lote} entra al horno"
  end
  def cronometro tiempo
  	@@tiempo = tiempo
  	sleep tiempo.to_i
  end
  def lote_sale(respuesta)
    @@tiempo += respuesta.to_i
  	case @@tiempo
  	  when 0...3 then puts "Muy pronto crnl(crudo)"
  	  when 3...10 then puts "Le falta un poco mas crnl(casi listo)"
  	  when 10...20 then puts "Al mero chingaso viejon(listo)"
  	  when 20...-1 then puts "Te pasaste un poco compa(quemado)"
  	end
    end 
end