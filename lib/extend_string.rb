class String

    def clean_extra_spaces
        self.encode.strip.gsub(/\s+/, ' ').gsub(/\n/, "").gsub(/\r/, "")
    end

    def remove_dots
        self.gsub('.', '')
    end

    def remove_html
        self.gsub(%r{</?[^>]+?>}, '')
    end

    def urlize
        this = self.dup.downcase.clean_extra_spaces.remove_dots

        accents = { ['á','à','â','ä','ã','Ã','Ä','Â','À','Á'] => 'a',
                    ['é','è','ê','ë','Ë','É','È','Ê','&'] => 'e',
                    ['í','ì','î','ï','I','Î','Ì', 'Í'] => 'i',
                    ['ó','ò','ô','ö','õ','Õ','Ö','Ô','Ò','Ó'] => 'o',
                    ['œ'] => 'oe',
                    ['ß'] => 'ss',
                    [' ', '.', '–', '_', '&#x2013;', 'e#x2013'] => '-',
                    ['ç', 'Ç'] => 'c',
                    ['ú','ù','û','ü','U','Û','Ù','Ú'] => 'u',
                    ['!',',',':','?',';','(',')','/', '\'', '"'] => ''
        }
        accents.each do |ac,rep|
          ac.each do |s|
            this.gsub!(s, rep)
          end
        end
        this.gsub(/[-]+/, '-')
    end

    def slugify
        split = self.split(' ')
        result = ''
        split.each do |w|
            result << "#{w} " unless result.length > 30
        end
        result.urlize
    end

   # PeDrO DA CosTa => Pedro da Costa
    def normalize
        self.clean_extra_spaces.split.map{|w| w.size>2 ? w.capitalize : w.downcase}.join(' ')
    end

end
