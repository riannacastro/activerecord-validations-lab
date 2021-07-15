class TitleValidator < ActiveModel::Validator 
    TITLES = [/Guess/, /Top[0-9]/, /Secret/, /Won't Believe/]

    def validate(record)
        if !TITLES.any? {|word| word.match(record.title)}
        record.errors.add :title, "must contain clickbait"
        end
    end
end

