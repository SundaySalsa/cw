class PaginationHelper

  def initialize(collection, items_per_page)
    @item_count = collection.length
    @items_per_page = items_per_page
  end
  
  def item_count
    @item_count
  end
	
  def page_count
    1 + @item_count / @items_per_page
  end
	
  def page_item_count(page_index)
    if page_index == (page_count - 1 )
      @item_count % @items_per_page
    elsif page_index < page_count and page_index >= 0
      @items_per_page
    else
      -1
    end
  end
	
  def page_index(item_index) 
    ((@item_count - 1) < item_index or item_index < 0) ? -1 : (item_index / @items_per_page)
  end
end
