Extension { #name : #CSNUIInputSearch }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputSearch class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'search' ]
]
