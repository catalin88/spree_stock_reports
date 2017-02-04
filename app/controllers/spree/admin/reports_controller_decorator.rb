Spree::Admin::ReportsController.class_eval do
  def stock
    @search = Spree::StockItem.joins(:variant, :stock_location).order('spree_variants.id ASC').ransack()
    @stock_items = @search.result
  end
end

Spree::Admin::ReportsController.add_available_report!(:stock)
