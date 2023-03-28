class ApplicationController < ActionController::API
  def cors_preflight_check
    return unless request.method == 'OPTIONS'

    cors_set_access_control_headers
    render text: '', content_type: 'text/plain'
  end

  protected

  def cors_set_access_control_headers
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'GET'
    response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Access-Control-Allow-Origin'
  end
end
