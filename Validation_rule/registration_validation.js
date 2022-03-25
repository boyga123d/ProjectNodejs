module.exports={
	registration: {
		name: {required: true,message: 'Name field required'},
		username: {required: true,min: 4,message: 'Username field Required & must be minimum 4 charecters.'},
		email: {required: true,pattern: /\S+@\S+\.\S+/,message: 'Input valid Email address'},
		phone: {required: true,pattern: /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$/g,message: 'Input Valid Phone Number'},
		password: {required: true,min: 6,message: 'Password field Required & must be minimum 6 charecters.'},
		address: {required: true,message: 'Address field Required.'}
	},
	adminReg: {

		name: {required: true,message: 'Name field required'},
		username: {required: true,min: 4,message: 'Username field Required & must be minimum 4 charecters.'},
		email: {required: true,pattern: /\S+@\S+\.\S+/,message: 'Input valid Email address'},
		phone: {required: true,pattern: /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$/g,message: 'Input Valid Phone Number'},
		password: {required: true,min: 6,message: 'Password field Required & must be minimum 6 charecters.'},
	}
}