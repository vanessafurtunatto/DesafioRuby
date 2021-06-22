require 'net/https'
require 'uri'
require 'json'
require 'securerandom'
require 'rest-client'

class Translate
	def initialize
		@url = 'https://translate.yandex.net/api/v1.5/tr.json/translate'
		@key = 'trnsl.1.1.20210622T204156Z.437aa6486a08e9a1.8d7b49212a6927a2aca1e24ca128b58dc35c91b3'
		puts 'Qual seu texto? '
		@text = gets
        puts 'Qual é o idioma do texto?'
		puts 'Opção: (pt, en, es, etc)'
		@lang = gets.chomp
        puts 'Informe o idioma da tradução'
		puts 'Opção: (pt, en, es, etc)'  
		@lang += "-" + gets.chomp
		@response = get_response

		generate_file

	end
	def get_response
		response = RestClient.get(@url,
			params: {
				key: @key,
				text: @text,
				lang: @lang,
			}
		)
		return response
	end
	def get_translation
		JSON.parse(@response)["text"]

	end
	def generate_file
		puts "Calma, já estamos traduzindo..."
		puts get_translation
		time = Time.new

        
		file = File.open(time.strftime("%m-%d-%Y.%H.%M.%S") + ".txt", 'w') do |doc|
			doc.puts @lang
			doc.puts get_translation
			

		end
	end
end

 Translate.new