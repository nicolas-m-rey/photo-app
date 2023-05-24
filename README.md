# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<%= form_with(model: image) do |form| %>
  <% if image.errors.any? %>
    <div style="color: red">
      <h2><%= pluralize(image.errors.count, "error") %> prohibited this image from being saved:</h2>

      <ul>
        <% image.errors.each do |error| %>
          <li><%= error.full_message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

  <div>
    <%= form.label :name, style: "display: block" %>
    <%= form.text_field :name %>
  </div>

  <div>
    <%= form.label :picture, style: "display: block" %>
    <%= form.text_field :picture %>
  </div>

  <div>
    <%= form.label :user_id, style: "display: block" %>
    <%= form.text_field :user_id %>
  </div>

  <div>
    <%= form.submit %>
  </div>
<% end %>









<p style="color: green"><%= notice %></p>

<%= render @image %>

<div>
  <%= link_to "Edit this image", edit_image_path(@image) %> |
  <%= link_to "Back to images", images_path %>

  <%= button_to "Destroy this image", @image, method: :delete %>
</div>


<p style="color: green"><%= notice %></p>

<h1>Images</h1>

<div id="images">
  <% @images.each do |image| %>
    <%= render image %>
    <p>
      <%= link_to "Show this image", image %>
    </p>
  <% end %>
</div>

<%= link_to "New image", new_image_path %>