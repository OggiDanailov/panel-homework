 - edited:

 <% if current_student %>
	<% @student =  current_student  %>
	<div>First Name: <%= @student.fname %></div>
	<div>Last Name: <%= @student.lname %></div>
	<div>Age: <%= @student.age %></div>
	<div>Email: <%= @student.email %></div>
	
	<% if @student.cohort_id != nil %>
		<div>Name of Cohort: <%= @student.cohort.name %></div>
		<% actual_cohort = Cohort.find(@student.cohort_id) %>
		<div>Course Name: <%= actual_cohort.course.name %></div>


	<% end %>

	<% if @student.cohort_id == nil %>
		<%= form_for @student, url: {action: "assign"}, html: {method: "post"}  do |f| %>
		<%= f.select :cohort_id, options_from_collection_for_select(Cohort.all, "id", "name") %>
		<%= f.submit "Assign cohort" %>
		<% end %>
	<% end %>

	

<% end %>