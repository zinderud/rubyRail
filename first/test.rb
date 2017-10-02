print "Merhaba Dünya"
d="eved"
puts d if d == d.reverse

module AplicationHelper
    def atitle(page_title="")
        base_t="z.com"
        if page_title.emty?
            base_t
        else
            page_title+ "-"+base_t
        end
    end
end
 include AplicationHelper
 p atitle "ds"