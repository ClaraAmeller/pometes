## If you want to see the song in your console uncomment the next line and
## execute `ruby lib/pometes.rb`

class Pometes
    def verse(index)
        <<~VERSE
            #{index} pometes té el pomer, de #{index} una, de #{index} una,
            #{index} pometes té el pomer, de #{index} una li'n caigué.

            Si miereu el vent d'on ve, veureu el pomer com dansa,
            si mireu el vent d'on ve, veureu com dansa el pomer.

        VERSE
    end

    def verses(index_from, index_to)
       (index_to..index_from).reverse_each.map { |i| verse(i) }.join
    end

    def song
        verses(10, 1)
    end
end

#puts Pometes.new.song