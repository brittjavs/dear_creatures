# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
User has many Donations / Shelter has many NeededItems
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
Donation belong to User / NeededItem belongs to Shelter
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) 
Users have many shelters through donations / Shelter has many items through NeededItems
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
Users have many Shelters through Donations and Shelters have many Users through Donations
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
Donation has quantity
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
User, Donation
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
Implemented scope methods in DOnations class to display money donations and item donations separately.
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
Log in through google using Omniauth
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
users/2/donations
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
users/1/donations/new
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
