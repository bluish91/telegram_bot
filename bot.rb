require 'telegram_bot'
token = '602680047:AAEqVFYoPxKZPjKxSmeYD8IulcW9hyISDFw'
bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
    case command
    when /start/i
      reply.text = "All I can do is reading your future. Try typing your horoscope."
    when /aries/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/aries/"
    when /tauro/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/tauro/"
    when /geminis/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/geminis/"
    when /cancer/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/cancer/"
    when /leo/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/leo/"
    when /virgo/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/virgo/"
    when /libra/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/libra/"
    when /escorpio/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/escorpio/"
    when /capricornio/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/capricornio/"
    when /sagitario/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/sagitario/"
    when /acuario/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/acuario/"
    when /piscis/i
      reply.text = "Hello, #{message.from.first_name} 🔮. Here's your horoscope: https://www.20minutos.es/horoscopo/piscis/"
    else
      reply.text = "I have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end
