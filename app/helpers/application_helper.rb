module ApplicationHelper
  def app_version
    content_tag :span, :data => { :version => Community.version.to_s } do
      'v' + Community.version.format( "%M.%m.%p" )
    end
  end

  def icon *classes
    css = classes.map{|c| "icon-#{c}"}.join(' ')
    content_tag :i, '', :class => "icon #{css}"
  end

  def badge count, css_id ='', type = ''
    # Скрываем badge если в нем пусто. JS сам его покажет когда появится информация
    #
    options = {
      :class => "badge badge-#{type}", :id => css_id
    }
    # options[:style] = 'visibility: hidden' if count.to_i == 0
    counter_tag count, options
  end

  def counter_tag count, options={}
    count = '' if count == 0
    content_tag :span, count, options
  end

  def current_city
    City.where(id: params[:id]).first() || City.first
  end

  def setup_markers
    places = Place.by_city(current_city).map{ |p| p.attributes.merge link: place_url(p) }
    javascript_tag "window.Community.Markers = #{places.to_json};"
  end

  def setup_city
    javascript_tag "window.Community.City = #{current_city.to_json};"
  end

end
