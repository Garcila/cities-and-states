require 'pry'

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states[:AT]='Atlantis'
@states[:ED]='El Dorado'

@cities = {
	OR: ["Oregonia", "Gorgonia", "Goren", "Oren"],
  FL: ["Flora", "Firana", "Flo", "Daflo"],
  CA: ["Canary", "Calar", "Cantine", "Cloud"],
  NY: ["Narnia", "Norina", "Neptunia", "Nothing"],
  MI: ["Myst", "Minnt", "Monit", "Minute"],
  AT: ["Bubble", "Water", "Triton", "Ursulum"],
  ED: ["Goldinium", "Dorium", "Ag", "Shinium"]
}

@taxes = {
	OR: 7.5,
  FL: 8.5,
  CA: 9.2,
  NY: 12.5,
  MI: 19.8,
  AT: 5.3,
  ED: 2.2
}

def describe_state(code)
	puts " #{code} is for #{@states[code.to_sym]}.  it has 2 major cities: #{(@cities[code.to_sym][0..1]).join(",")}"
end

describe_state('OR')

def calculate_tax(code,dollar_value)
	tax = "#{@taxes[code.to_sym]}".to_f
	puts total_tax = (dollar_value * (tax/100)).round(2)
end

calculate_tax('OR',7584.8765)

def find_state_for_city(city)
	@cities.each do |state,cities_array|
		if cities_array.include?(city)
			return state
		end
	end
	"I don't know that city, please try again"
end

p find_state_for_city("Bubble")