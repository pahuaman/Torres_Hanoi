class Hanoi#definimos nuestra clase
def tower(n,desde,hacia,temp)#entra numero de discos
   if n==1 #si se ha llegado al ultimo disco
      puts "mover disco del poste"
      puts (desde)
      puts "hacia el poste"
      puts (hacia)
      puts "\n"
   else #en caso contrario
     tower(n-1,desde,temp,hacia)#llamar al metodo
     tower(1,desde,hacia,temp)#volver a llamar al metodo
     tower(n-1,temp,hacia,desde)#y volverlo a llamar pro tercera ocasión
   end
 end#fin del metodo tower

def nmovi(x)#para calcular numero de movimientos
   move=(2**x)-1#formula de las torres de hanoi
   puts "El numero de movimientos a efectuar es de:"
   puts (move)
   puts("\n")
end

end

#interfaz
torre=Hanoi.new#llamamos y creamos a partir de nuestra clase
   puts "Da el numero de discos a mover: "
   STDOUT.flush
   disco=gets.chomp
   discos=disco.to_i#convertimos el numero de discos a entero
   torre.nmovi(discos)#llamamos al numero de movimientos
   torre.tower(discos,1,3,2)
   gets 
#llamamos al metodo de las torres de hanoi y entran inicialmente
#numero de dicos,desde el poste inicial, hasta el poste final
#y el poste temporal