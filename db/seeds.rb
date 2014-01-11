# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

OrderStatus.delete_all

ActiveRecord::Base.connection.execute("alter sequence order_statuses_id_seq restart with 1")

OrderStatus.create(nombre: "En espera de cerrarla")
OrderStatus.create(nombre: "En espera de pago")

puts "Estatus de orden generados correctamente."