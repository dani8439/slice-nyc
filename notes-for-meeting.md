1. collection_ids vs collection_id. Error is stating collection_id must exist. Why? Where is the error? In accepts_nested_attributes_for or in models? Or in controller? Is it also possible that belongs_to :restaurant, belongs_to :category should be set as optional: true to combat this?


2. Datalist vs collection select? Is it necessary to be able to add more toppings and cheeses and sauces, etc for user? Or can that be only an admin thing.

<%= form_for @post do |f| %>
  <%= f.text_field :category_name, list: "categories_autocomplete" %>
  <datalist id="categories_autocomplete">
    <% Category.all.each do |category| %>
      <option value="<%= category.name %>">
    <% end %>
  </datalist>
  <textarea name="post[content]"></textarea>
  <%= f.submit %>
<% end %>

3. Where to do the nested route? pie_rating within user_restaurants seems a little convoluted. 
