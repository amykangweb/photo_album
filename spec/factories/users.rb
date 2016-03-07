FactoryGirl.define do
  factory :intruder, class: User do
    email "test@mail.com"
  end

  factory :admin, class: User do
    email "selene6023@gmail.com"
    password "password"
    admin true
  end
end
