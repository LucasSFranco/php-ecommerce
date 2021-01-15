import firebase from '~/firebase'

class Produtos

	static def getItens 
		await firebase.firestore().collection("produtos").get()

	static def createItem item
		let id = (await firebase.firestore().collection("produtos").add(item.data)).id
		await firebase.storage().ref("{id}/{item.storage.imagem.name}").put(item.storage.imagem)

	static def deleteItem id
		await firebase.firestore().collection("produtos").doc(id).delete()
		await firebase.storage().ref("{id}").delete()
	
export default Produtos