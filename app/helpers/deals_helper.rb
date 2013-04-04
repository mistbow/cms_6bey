#encoding: utf-8
module DealsHelper
  def display_caption caption=nil
    caption.nil?? '小编提示： 本商品暂时没有推荐信息' : caption
  end
end
