Extension { #name : #CSNUIInputMonth }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputMonth class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'month' ]
]
