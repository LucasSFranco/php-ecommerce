import firebase from 'firebase/app'
import 'firebase/firestore'
import 'firebase/storage'
import 'firebase/auth'

const config = {
	apiKey: "AIzaSyBJMSmfDtV6TxQFgzwBp5JPKwRkoxVsCDk"
	authDomain: "ecommerce-2bdef.firebaseapp.com"
	databaseURL: "https://ecommerce-2bdef.firebaseio.com"
	projectId: "ecommerce-2bdef"
	storageBucket: "ecommerce-2bdef.appspot.com"
	messagingSenderId: "437291868025"
	appId: "1:437291868025:web:dbab763f5775a629d159a8"
}

firebase.initializeApp(config)
firebase.auth().languageCode = "pt_br"

export default firebase