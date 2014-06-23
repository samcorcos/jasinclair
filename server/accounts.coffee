Meteor.startup ->
	if Meteor.users.find().count() is 0

		id = Accounts.createUser
			username: "andy",
			email: "jsinclair08@gmail.com",
			password: "andyadmin",

		Roles.addUsersToRoles(id, ['admin']);
