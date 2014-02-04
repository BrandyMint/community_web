class MapInput < Formtastic::Inputs::StringInput

  def markers_data
    "<script>window.Community.Markers = #{object.slice(:position).to_json};</script>".html_safe
  end

  def input_map
    '<label for="adr" class="adr">Address:</label>
    <input id="adr" type="text" name="" class="map-input-address adr" role="map-input-address" />
    <div class="map-input" role="map-input"></div>'.html_safe
  end

  def to_html
    input_wrapping do
      label_html <<
      builder.text_field(method, input_html_options.merge(role: 'map-input-coords')) <<
      input_map <<
      markers_data
    end
  end
end