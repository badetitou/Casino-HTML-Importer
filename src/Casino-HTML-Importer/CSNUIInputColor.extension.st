Extension { #name : #CSNUIInputColor }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputColor class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'color' ]
]
