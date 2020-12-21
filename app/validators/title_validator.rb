class TitleValidator < ActiveModel::Validator
  def validate(record)
    if record.title
      unless record.title.include?("Won't Believe" || "Secret" ||  "Top [number]" || "Guess")
        record.errors[:title] << "Title is invalid"
      end
    end
  end
end
