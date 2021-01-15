import firebase from '~/firebase'

class Usuarios

	static def getUser id
		await firestore.collection("usuarios").doc(id).get()

	static def signIn credencial
		await firebase.auth().signInWithEmailAndPassword(credencial.email, credencial.senha)

	static def signOut
		await firebase.auth().signOut()

	static def createUser usuario
		let auth = await firebase.auth().createUserWithEmailAndPassword(usuario.credencial.email, usuario.credencial.senha)
		await firebase.firestore().collection("usuarios").doc(auth.user.uid).set(usuario.info)

	static def updateUser id, usuario
		await firebase.firestore().collection("usuarios").doc(id).update(usuario.info)

	static def resetPassword email
		await firebase.auth().sendPasswordResetEmail(email)
		
export default Usuarios