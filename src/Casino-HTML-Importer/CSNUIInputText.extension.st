Extension { #name : #CSNUIInputText }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputText class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'text' ]
]
