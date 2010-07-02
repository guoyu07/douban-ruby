require'cgi'
require'iconv'
module Douban
  def format_time(time)
    time.strftime("%Y-%m-%dT%H:%M:%S+08:00").to_s
  end
  def url_encode(str)
    CGI.escape(str.to_s)
  end
  def url_decode(str)
    CGI.unescape(str.to_s)
  end
  def decode(str)
    CGI::unescapeHTML(str.to_s)
  end
  def html_encode(str)
    CGI::escapeHTML(str.to_s)
  end
  def utf8_to_gbk(str)
    iconv=Iconv.new("GBK//IGNORE","UTF-8//IGNORE")
    iconv.iconv(str.to_s)
  end
  def gbk_to_utf8(str)
    iconv=Iconv.new("UTF-8//IGNORE","GBK//IGNORE")
    iconv.iconv(str.to_s)
  end
end
