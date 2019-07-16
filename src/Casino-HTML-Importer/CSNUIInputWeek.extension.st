Extension { #name : #CSNUIInputWeek }

{ #category : #'*Casino-HTML-Importer' }
CSNUIInputWeek class >> htmlCanHandle: anElement [
	^ anElement name = 'input' and: [ (anElement attributeAt: 'type' ifAbsent: [ ^ false ]) = 'week' ]
]
