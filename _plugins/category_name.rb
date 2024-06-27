module Jekyll
  module AssetFilter
    def category_name(input)
      categories = @context.registers[:site].data['categories']

      category = categories.find { |c| c['slug'] == input }

      return category&.[]('name') || input
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
