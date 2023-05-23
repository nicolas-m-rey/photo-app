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