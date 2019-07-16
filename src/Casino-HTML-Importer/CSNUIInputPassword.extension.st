Extension { #name : #CSNUIInputPassword }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputPassword class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'password' ]
]
