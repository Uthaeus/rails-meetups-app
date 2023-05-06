module ApplicationHelper
    def date_string_for(datetime)
        datetime.strftime("%b %e, %Y")
     end

    def time_string_for(datetime)
        datetime.strftime("%l:%M %p")
    end
end
