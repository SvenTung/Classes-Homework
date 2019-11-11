class CodeClan

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def can_you_talk()
    return "Yes, I can talk!"
  end

  def say_your_favourite_language(favourite_language)
    return "I love #{favourite_language}!"
  end
end
