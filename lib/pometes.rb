## If you want to see the song in your console uncomment the next line and
## execute `ruby lib/pometes.rb`

class Pometes
    CHORUS =  <<~VERSE
        Si miereu el vent d'on ve, veureu el pomer com dansa,
        si mireu el vent d'on ve, veureu com dansa el pomer.
    VERSE
    SINGULAR = <<~VERSE
        1 pometa té el pomer, d'1 una, d'1 una,
        1 pometa té el pomer, d'1 una li'n caigué.
    VERSE

    def verse(index)
        if index == 0
            CHORUS
        elsif index == 1
            SINGULAR
        else
            <<~VERSE
                #{index} pometes té el pomer, de #{index} una, de #{index} una,
                #{index} pometes té el pomer, de #{index} una li'n caigué.
            VERSE
        end
    end

    def verses(index_from, index_to)
       (index_to..index_from).reverse_each.map do |i|
            verses = ''       
            unless i == index_to
                verses << verse(i) << "\n" << CHORUS << "\n"
            else
                verses << verse(i)
            end
       end.join
    end

    def song
        verses(1, 10)
    end
end

#puts Pometes.new.song