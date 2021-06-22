require 'net/https'
require 'uri'
require 'json'
require 'securerandom'

class Translate
    def initialize

        @subscription_key = '[Your key subscription gerado pelo porta da Microsoft]'
        @subscription_region = 'brazilsouth'

        @endpoint = 'https://api.cognitive.microsofttranslator.com'

        @path = '/translate?api-version=3.0'

        puts "Insira o idioma do seu texto original: [pt-br, en ...]"
        from = gets.chomp
        puts "Insira o idioma para qual ser;a convertido: [pt-br, en ...]: "
        to = gets.chomp
        puts "Digite o seu texto: "
        @text = gets.chomp

        @original_language = "&from=#{from}"
        @params = "&to=#{to}"

        puts 'Texto traduzido: '
        puts "Inicial[#{from}]: " + @text

        json_translated = translate_text[0]['translations'][0]['text']

        puts "Tradução[#{to}]: " + json_translated

        write(@text, json_translated)

    end


    def translate_text
        content = '[{"Text" : "' + @text + '"}]'
        return send_post(content)
    end

    private
    def send_post(content)
        uri = URI (@endpoint + @path + @original_language + @params)
        request = Net::HTTP::Post.new(uri)
        request['Content-type'] = 'application/json'
        request['Content-length'] = content.length
        request['Ocp-Apim-Subscription-Key'] = @subscription_key
        request['Ocp-Apim-Subscription-Region'] = @subscription_region
        request['X-ClientTraceId'] = SecureRandom.uuid
        request.body = content

        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request (request)
        end

        result = response.body.force_encoding("utf-8")
        
        json = JSON.pretty_generate(JSON.parse(result))


        json = JSON.parse(result)
        return json
    end

    def write(original, translated)
        time = Time.new
        nome_arquivo = time.strftime('%d-%m-%y_%H:%M') + '.txt'
        File.open(nome_arquivo, 'w') do |line|
          line.puts original
          line.print translated
        end
      end

end

Translate.new