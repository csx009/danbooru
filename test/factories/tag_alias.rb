FactoryGirl.define do
  factory :tag_alias do
    antecedent_name "aaa"
    consequent_name "bbb"
    status "active"
    skip_secondary_validations true

    after(:create) do |tag_alias|
      unless tag_alias.status == "pending"
        tag_alias.process!
      end
    end
  end
end
