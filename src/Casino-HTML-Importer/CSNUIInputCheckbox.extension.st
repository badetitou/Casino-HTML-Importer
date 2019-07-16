Extension { #name : #CSNUIInputCheckbox }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputCheckbox class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'checkbox' ]
]
