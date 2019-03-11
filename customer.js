module.exports = (sequelize, DataTypes) => {
	var Customer = sequelize.define(
		"Customer",
		{
			customer_name: {
				type: DataTypes.STRING,
				allowNull: false,
				validate: {
					len: [1, 140]
				}
			}
		},
		{
			// only keep timestamp for creation
			timestamps: true,
			createdAt: "date_created",
			updatedAt: false,
			deletedAt: false
		}
	);

	// establish association
	Customer.associate = models => {
		Customer.hasMany(models.Burger);
	};

	return Customer;
};
