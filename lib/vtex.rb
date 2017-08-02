require "vtex/version"
require "active_support/all"
require "resource_kit"
require "kartograph"

module Vtex
  autoload :Client, "vtex/client"

  # Models
  autoload :Base, 'vtex/models/base'
  autoload :Product, 'vtex/models/product'
  autoload :Brand, "vtex/models/brand"

  # Resources
  autoload :ProductResource, "vtex/resources/product_resource"
  autoload :ProductResource, "vtex/resources/brand_resource"

  # Mappings
  autoload :ProductMapping, "vtex/mappings/product_mapping"
end
