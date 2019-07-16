Extension { #name : #CSNUIInputEmail }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputEmail class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'email' ]
]
