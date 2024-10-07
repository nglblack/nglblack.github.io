Jekyll::Hooks.register :site, :post_write do |site|
    # Reject pages matching the specific collections we want to exclude
    site.pages.reject! { |page| page.url =~ /\/talks|\/publications|\/teaching/ }
    
    # Clear out the docs for the unwanted collections so they aren't output
    site.collections["talks"].docs.clear
    site.collections["publications"].docs.clear
    site.collections["teaching"].docs.clear
  end
  