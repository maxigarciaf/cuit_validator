class CuitValidator < ActiveModel::EachValidator
  @@default_options = {}

  def self.default_options
    @@default_options
  end

  def self.valid?(value, options = {})
    unless value.empty?
      value.gsub!('-','')
      unless value.length != 11
        xy, dni, z = value[0, 2], value[2, 8], value[10, 1]
        acum = 0
        secuence = [5,4,3,2,7,6,5,4,3,2]
            
        "#{xy}#{dni}".split('').each_with_index { |num, i| acum += num.to_i * secuence[i] }

        z_calculated = (11 - (acum % 11) )

        (z_calculated.to_i == z.to_i)
      end
    else
      true  if options[:allow_empty]
    end
  end

  def validate_each(record, attribute, value)
    options = @@default_options.merge(self.options)
    unless self.class.valid?(value, options)
      record.errors.add(attribute, options[:message] || :invalid)
    end
  end

end