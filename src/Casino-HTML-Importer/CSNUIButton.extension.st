Extension { #name : #CSNUIButton }

{ #category : #'*Casino-HTML-Importer' }
CSNUIButton class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'checkbox' ]
]
