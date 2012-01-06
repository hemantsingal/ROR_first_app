class Product < ActiveRecord::Base
	
	validates_presence_of :name, :description, :image, :price, :availability
	validates :price, :numericality => true
	
	
	validates_format_of :image,
    				:with => %r{^https?:\/\/.*\.(?:png|jpe?g|gif)$}i,
    				:message => 'is not a proper image URL'
    
    validates_format_of :price,
                    :with => %r{^(\d)+(\.\d{1,2})?$}i,
                    :message => 'is not proper'


end

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  # if instance.error_message.kind_of?(Array)
  #   %(#{html_tag}<span class="validation-error">&nbsp;
  #     #{instance.error_message.join(',')}</span>).html_safe
  # else
     %(#{html_tag}).html_safe#<span class="validation-error">&nbsp;
  #     #{instance.error_message}</span>).html_safe
  #end
end