Extension { #name : #CSNUIInputNumber }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputNumber class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'number' ]
]
