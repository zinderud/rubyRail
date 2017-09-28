require 'logger'

logger=Logger.new("logkayitlari.log")
# eğer STDOUT olarak verseydik logu ekrana basacaktı

logger.info "bu info logu"
logger.warn  "bu da warn"

# Sadece son bir aylik logu tut
Logger.new('app_1.log', 'monthly')
# Bugunden itibaren gecmis 20 gunluk logu tut
Logger.new('app_1.log', 20, 'daily')
# log boyutu 100mb uzerine cikarsa
Logger.new('app_1.log', 0, 100 * 1024 * 1024)