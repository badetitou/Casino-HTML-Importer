Extension { #name : #CSNUIInputDate }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputDate class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'date' ]
]
