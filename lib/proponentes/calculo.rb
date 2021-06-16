require 'csv'
module Proponentes
  class Calculo
    def self.desconto_inss salario
      desconto = 0
      seed_file = Rails.root.join('db', 'seeds', 'tabela_desconto_inss.csv')
      CSV.foreach(seed_file, headers: true).each_with_index do |linha|
        if salario.to_f > linha[1].to_f
          desconto += ((linha[1].to_f - linha[0].to_f)*(linha[2].to_f/100))
        elsif salario.to_f >= linha[0].to_f && salario.to_f <= linha[1].to_f
          desconto += ((linha[1].to_f - linha[0].to_f)*(linha[2].to_f/100)) and break if linha[0].to_f == 0
          desconto += ((salario.to_f - linha[0].to_f)*(linha[2].to_f/100))
          break
        end
      end
      desconto
    end
  end
end