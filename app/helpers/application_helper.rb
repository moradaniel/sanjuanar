module ApplicationHelper

  def title(*parts)
     unless parts.empty?
       #We define a block of view code that we’re storing in the view and naming
       #"title" This code can appear anywhere in the action view. The location
       #doesn’t matter, because this code won’t be rendered into the view when we
       #call content_for(). It’s only processed and stored for later.
       content_for :title do
         (parts << 'San Juan AR').join(" - ")  unless parts.empty?
       end
     end
  end

end
