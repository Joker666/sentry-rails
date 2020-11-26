class TrackController < ApplicationController
    def track
        id = params[:id].to_i
        case id
            when 1
                1 / 0
            when 2
                Raven.capture_message('Something went very wrong', {
                    extra: { 'key' => 'value' },
                    backtrace: caller
                })
            when 3
                Raven.capture do
                    1 / 0
                end
            when 4
                begin
                    1 / 0
                rescue ZeroDivisionError => exception
                    Raven.capture_exception(exception)
                end
            end
        render json: params[:id]
    end
end