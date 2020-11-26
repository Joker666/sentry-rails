class SentryService
    attr_accessor :user_id, :_request, :_params, :error, :payload

    def initialize(user_id, request, params, error, payload = {})
        @user_id = user_id
        @_request = request
        @_params = params
        @error = error
        @payload = payload
    end

    def register
        Raven.user_context(user_context)
        Raven.tags_context(tags_context)
        Raven.extra_context(extra_context)
    end

    private

    def user_context
        return {} if @user_id.blank?

        { id: @user_id }
    end

    def tags_context
        {
            component: 'api',
            action: @_params[:action],
            controller: @_params[:controller],
            environment: Rails.env,
            error_class: error.class
        }
    end

    def extra_context
        extra = {
            params: @_params.to_enum.to_h.with_indifferent_access,
            url: @_request.try(:url),
            uuid: @_request.try(:uuid),
            ip: @_request.try(:ip),
            fullpath: @_request.try(:fullpath),
            error_message: error.message
        }

        @payload.each do |k, v|
            extra[k] = v.try(:as_json).try(:with_indifferent_access)
        end

        extra
    end
end