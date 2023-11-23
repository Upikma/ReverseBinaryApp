class ReverseBinary < ApplicationRecord
    validates :number, presence: true, numericality: { only_integer: true, greater_than: 0 }
  
    def reverse_binary
      binary_str = number.to_s(2).rjust(8, '0') # Дополнить двоичное представление до 8 символов
      reversed_binary = binary_str.reverse
      reversed_number = reversed_binary.to_i(2)
      { decimal: number, binary: binary_str, reversed_decimal: reversed_number, reversed_binary: reversed_binary }
    end
end