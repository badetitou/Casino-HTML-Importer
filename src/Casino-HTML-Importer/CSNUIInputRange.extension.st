Extension { #name : #CSNUIInputRange }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputRange class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'range' ]
]
