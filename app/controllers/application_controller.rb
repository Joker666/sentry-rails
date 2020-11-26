class ApplicationController < ActionController::API
    around_action :set_sentry_context

    protected

    # capture any unspecified internal errors
    def set_sentry_context
        begin
            yield
        rescue StandardError => e
            SentryService.new('12', request, params, e, context_variables).register
            raise e
        end
    end

    # override this in any other controllers to customize payload
    def context_variables
        {}
    end
end
