loop do 
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
p "Buen dia, bienvenido a la torteria, de que quiere su torta mijo?"
print "\n"
print "Opciones:" "\n" "1: Torta de pierna" "\n" "2: Torta de buche" "\n" "3: Torta de lengua"
print "\n"
tipo_de_torta_nmr = gets.chomp
print "\n"
test = Tortas.new(nil)
test = Horno.new(tipo_de_torta_nmr.to_i - 1)
 puts test.lote_entra
 print "\n"
 p "Cuantos segundos quieres que este dentro(escribe un numero)?"
 tiempo = gets.chomp
 print "\n"
 p "Horneando..."
 print "\n"
 test.cronometro tiempo.to_i
 print "\n"
 test.lote_sale(0)
 loop do
  puts "¿Quieres agregar mas tiempo? (escribe con numeros cuantos segundos)"
  respuesta = gets.chomp
  if /[0-9]/.match(respuesta.to_s)
  p "Horneando..."
  print "\n"
  sleep respuesta.to_i
  test.lote_sale(respuesta)
  else
  break
  end 
end
print "\n"
p "Quieres meter alguna otra torta? si/no"
otra = gets.chomp
otra == "si" ? nil : break
end
