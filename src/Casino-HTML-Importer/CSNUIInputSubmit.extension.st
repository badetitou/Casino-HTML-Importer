Extension { #name : #CSNUIInputSubmit }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputSubmit class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'submit' ]
]
